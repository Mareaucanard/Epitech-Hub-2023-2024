from timeit import timeit
from string import ascii_lowercase
from random import choice
from termcolor import colored
from copy import copy
from collections import Counter
from itertools import chain
import operator


class Wordle:
    def __init__(self, database="wordle-database.txt", rows=6, word_length=5):
        self.db = {}
        self.word_length = word_length
        self.rows = rows
        self.running = False
        self.tryNumber = 0
        self.selected_word = ""
        self.number_of_games = 0
        self.number_of_wins = 0
        self.display = True
        self.magic_index = 0
        with open(database, "r") as file:
            for line in file:
                line = line.rstrip()
                line = line.lower()
                if (len(line) != word_length):
                    raise ValueError(
                        f"Invalid database, expected {word_length} letter words but got {line}")
                self.db[line] = None
        self.db_as_list = list(self.db.keys())


    def startGame(self):
        self.running = True
        self.tryNumber = 0
        self.number_of_games += 1
        if self.display == True:
            self.selected_word = (choice(list(self.db.keys())))
        else:
            self.selected_word = self.db_as_list[self.magic_index % len(self.db_as_list) - 1]
            self.magic_index += 1
        if self.display:
            print(
                f"Game starting! Word is {self.word_length} letters long: {self.selected_word}")

    def guess(self, word):
        if self.running == False:
            print("Game is not running")
            return False
        word = word.strip()
        word = word.lower()
        guess_copy = [x for x in copy(self.selected_word)]
        if (not self.isWord(word)):
            return False

        color_table = {
            "M": "on_green",
            "P": "on_yellow",
            "N": None
        }
        self.tryNumber += 1
        result = ['N' for _ in range(self.word_length)]
        word_as_tab = [x for x in word]
        for index, (user_letter, actual_letter) in enumerate(zip(word, guess_copy)):
            if (user_letter == actual_letter):
                result[index] = 'M'
                word_as_tab[index] = '_'
                guess_copy[index] = '_'
        for index, letter in enumerate(word_as_tab):
            if (letter == '_'):
                continue
            try:
                match_index = guess_copy.index(letter)
            except ValueError:
                continue
            result[index] = 'P'
            guess_copy[match_index] = "_"
        if self.display:
            print("> " + "".join(colored(letter, None,
                                         color_table[match]) for letter, match in zip(word, result)))
        if all(letter == 'M' for letter in result):
            self.number_of_wins += 1
            self.running = False
        return result

    def stop_game(self):
        self.running = False

    def is_over(self):
        if not self.running:
            return True
        if self.tryNumber >= self.rows:
            if (self.display):
                print(f"Too bad, the word was {self.selected_word}")
            return True
        return False

    def isWord(self, word):
        if (any(letter not in ascii_lowercase for letter in word)):
            print("Word must contain only letters")
            return False
        if (len(word) != self.word_length):
            print(f"Word is {self.word_length} letters, not {len(word)}")
            return False

        if word in self.db:
            return True
        else:
            print("Word does not exist")
            return False


class Agent:
    def __init__(self, game: Wordle):
        game.stop_game()
        game.display = False
        self.game = game
        self.sorted_words = []
        self.calc_letter_frequency(list(game.db.keys()))


    def calc_letter_frequency(self, words):
        self.letter_counts = Counter(chain.from_iterable(words))
        self.letter_frequency = {
            character: value / self.letter_counts.total()
            for character, value in self.letter_counts.items()
        }

    def calculate_word_commonality(self, word):
        score = 0.0
        for char in word:
            score = self.letter_frequency[char]
        return score / (self.game.word_length - len(set(word)) + 1)

    def sort_by_word_commonality(self, word_list):
        sort_by = operator.itemgetter(1)
        self.sorted_words = sorted(
            [(word, self.calculate_word_commonality(word))
             for word in word_list],
            key=sort_by,
            reverse=True,
        )

    def display_word_table(self):
        for (word, freq) in self.sorted_words[:15]:
            print(f"{word:<10} | {freq:<5.3f}")

    def match_word_vector(self, word, word_vector):
        for letter, v_letter in zip(word, word_vector):
            if letter not in v_letter:
                return False
        return True

    def match(self, word_vector, possible_words):
        return [word for word in possible_words if self.match_word_vector(word, word_vector)]

    def filterBasedOnAnswer(self, word_vector, response, word):
        for idx, letter in enumerate(response):
            if letter == "M":
                word_vector[idx] = {word[idx]}
            elif letter == "P":
                try:
                    word_vector[idx].remove(word[idx])
                except KeyError:
                    pass
            elif letter == "N":
                if any([child_letter == word[idx] and response[child_idx] == "P" for child_idx, child_letter in enumerate(word)]):
                    continue
                for child_idx, vector in enumerate(word_vector):
                    try:
                        if not (word[child_idx] == word[idx] and response[child_idx] == "M"):
                            vector.remove(word[idx])
                    except KeyError:
                        pass

    def auto_game(self):
        self.game.startGame()
        self.game.display = False
        possible_words = list(self.game.db.keys())
        word_vector = [set(ascii_lowercase) for _ in range(self.game.word_length)]
        while not self.game.is_over():
            self.calc_letter_frequency(possible_words)
            self.sort_by_word_commonality(possible_words)
            if (len(self.sorted_words) == 0):
                print(self.game.selected_word)
                exit(84)
            word = self.sorted_words[0][0]
            response = self.game.guess(word)
            if (response == False):
                break
            self.filterBasedOnAnswer(word_vector, response, word)
            possible_words = self.match(word_vector, possible_words)

    def manual(self):
        self.game.startGame()
        self.game.display = True
        possible_words = list(self.game.db.keys())
        word_vector = [set(ascii_lowercase) for _ in range(self.game.word_length)]
        while not self.game.is_over():
            self.calc_letter_frequency(possible_words)
            self.sort_by_word_commonality(possible_words)
            if (len(self.sorted_words) == 0):
                print("You must have made an error somewhere, no words are possible.")
                return False
            self.display_word_table()
            response = False
            while (response == False):
                word = input("> ")
                response = self.game.guess(word)
            self.filterBasedOnAnswer(word_vector, response, word)
            possible_words = self.match(word_vector, possible_words)



def main():
    print("Loading database...")
    start = timeit()
    game = Wordle()
    end = timeit()
    print(f"Loading database took {(end - start) * 1000:.2f}s")
    game.startGame()
    a = Agent(game)
    a.manual()


main()
