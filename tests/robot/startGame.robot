*** Settings ***
Documentation   I want to start the game.
Test Template   Start game
Library         StartGameLibrary.py

*** Test Cases ***  StartingX       StartingY   Action       EndingX     EndingY
Starting the game   DNE             DNE         StartGame    0           0

*** Keywords ***
Start game
    [Arguments]     ${startingX}    ${startingY}    ${endingX}    ${endingY}
    Initialize character xposition with ${startingX}
    Initialize character yposition with ${startingY}
    Start game
    Character xposition should be       ${endingX}
    Character yposition should be       ${endingY}