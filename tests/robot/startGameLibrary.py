from levelup.controller import GameController
from levelup.controller import Direction

start_x: int
start_y: int

class startGameLibrary:
    def initialize_character_xposition_with(self, x_position):
        self.start_x = x_position

    def initialize_character_yposition_with(self, y_position):
        self.start_y = y_position
