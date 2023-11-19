from math import cos, sin, pi
from PIL import Image, ImageDraw

class Circle():
    def __init__(self, x, y, radius):
        self.x = x
        self.y = y
        self.radius = radius
        self.perimeter = 2 * pi * radius
        self.color = (0,0,0)
        self.point_color = (255,0,0)
        self.angle = 0
        self.thickness = 20
        self.p_pos = []
        self.p = (0,0)
        self.update_p()

    def draw(self, screen):
        pygame.draw.circle(screen, self.color, (self.x,self.y), self.radius + self.thickness / 2, self.thickness)
        pygame.draw.circle(screen, self.point_color, self.p , self.thickness / 2, self.thickness)

    def update_p(self):
        child_x = self.x + cos(self.angle) * self.radius
        child_y = self.y + sin(self.angle) * self.radius
        self.p = (child_x, child_y)
        self.store()

    def rotate(self, pi_fraction: float):
        self.angle += pi / pi_fraction
        self.x += self.perimeter / pi_fraction / 2
        self.update_p()

    def draw_trajectory(self, screen):
        if len(self.p_pos) >= 2:
            pygame.draw.lines(screen, (0, 255, 127), False, self.p_pos, 3)

    def store(self):
        self.p_pos.append(self.p)

display = False
dimensions = [1920, 1080]
c = Circle(-100, dimensions[1] / 2, 100)


if display:
    import pygame
    pygame.display.init()
    screen = pygame.display.set_mode(dimensions)
    running = True
    clock = pygame.time.Clock()
    while running:
        clock.tick(60)
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                running = False
                break
        screen.fill((127, 127, 127))
        c.draw(screen)
        c.rotate(120)
        c.draw_trajectory(screen)
        pygame.display.flip()
    pygame.quit()
else:
    for i in range(2500):
        c.rotate(120)
    img = Image.new("RGB", dimensions, (127, 127, 127))
    draw = ImageDraw.Draw(img)
    draw.line(c.p_pos, (0, 200, 127), 7, joint="curve")
    img.show()
