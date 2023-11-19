extends CanvasLayer
const game_enum = preload("res://game_enum.gd")

func _ready():
	get_tree().get_root().get_node("World").connect("score_change", _on_score_change)
	get_tree().get_root().get_node("World").connect("game_state", _on_game_state)

func _on_score_change(new_score):
	$Score.text = "Score: %d" % new_score

func _on_game_state(state):
	if state == game_enum.GAMEOVER:
		$GameOver.show()
	elif state == game_enum.PLAYING:
		$GameOver.hide()
