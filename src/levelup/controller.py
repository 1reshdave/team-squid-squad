from enum import Enum
from dataclasses import dataclass
from levelup.character import Character

DEFAULT_CHARACTER_NAME = "Character"


class Direction(Enum):
    NORTH = "n"
    SOUTH = "s"
    EAST = "e"
    WEST = "w"


@dataclass
class GameStatus:
    running: bool = False
    #  giom was changing it for testing player: Player = Player(DEFAULT_PLAYER_NAME)
    character: Character = Character(DEFAULT_CHARACTER_NAME)
    current_position: tuple = (-1,-1)

def set_character_position(self, xycoordinates: tuple)-> None:
    print("Set character position start for testing")
    # TODO: IMPLEMENT THIS
class GameController:
    status: GameStatus

    def __init__(self):
        self.status = GameStatus()

    def create_character(self, character_name: str) -> None:
        if not character_name:
            character_name = DEFAULT_CHARACTER_NAME
        self.status.character = Character(character_name)

    def move(self, direction: Direction) -> None:
        print(f"Moved {direction.name}")

    def set_character_position(self, xycoordinates: tuple)-> None:
        print("Set character position start for testing")
        # TODO: IMPLEMENT THIS

    def set_current_position(self, xycoordinates: tuple) -> None:
        print("Set current position")
        # TODO: IMPLEMENT THIS