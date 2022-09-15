from levelup.controller import GameController
from levelup.controller import Direction

start_x: int
start_y: int

class startGameLibrary:
    def initialize_character_xposition_with(self, x_position):
        self.start_x = x_position

    def initialize_character_yposition_with(self, y_position):
        self.start_y = y_position

def startGame(self, startgame):
        self.controller = GameController()
        self.controller.set_position((self.start_x, self.start_y))

        self.controller.set_position(Action[action])

def character_xposition_should_be(self, expected):
        end_x = self.controller.status.current_position[0]
        if end_x  != expected:
             raise AssertionError(
                 "%s != %s" %(end_x, expected)
             )
def character_yposition_should_by(self, expected):
        end_y = self.controller.set_character_position[0]
        if end_y  != expected:
             raise AssertionError(
                 "%s != %s" %(end_y, expected)
             )
