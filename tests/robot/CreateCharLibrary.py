from levelup.controller import GameController

charactername: str
class createCharLibrary:
    
    def initialize_character_name_with(self, charactername):
        self.controller.create_character(charactername)

    def new_character_name_should_be(self, expected):
        if self.controller.status.character.name != expected:
            raise AssertionError(
                "%s != %s" % (self.controller.status.character.name, expected)
            )
    
    def enter_name(self, expected):
        if self.controller.status.character.name != expected:
            raise AssertionError(
                "%s != %s" % (self.controller.status.character.name, expected)
            )

    