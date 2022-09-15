*** Settings ***

Documentation I want to get current status and position of my character when in a game.
Test Template Get status
Library       StatusLibrary.py

*** Test cases *** EndingCharacterName StartingX StartingY StartingMoveCount Action         EndingX EndingY EndingMoveCount
Move N in middle   Teddy               5         5         0                 UpdateStatus   5       4       1
Move S in middle   Teddy               5         5         2                 UpdateStatus   5       7       3


*** Keywords ***
Get Status
    [Arguments]        ${endingCharacterName} ${startingX}    ${startingY}    ${startingMoveCount}    ${endingX}   ${endingY} ${endingMoveCount}
    Initialize ending character name with ${endingCharacterName}
    Initialize character xposition with ${startingX}
    Initialize character yposition with ${startingY}
    Initialize starting move count with ${startingMoveCount}
    Update status
    Character xposition should be ${endingX}
    Character yposition should be ${endingY}
    Character end move count should be ${endingMoveCount}

*** Settings ***
Documentation
...     Example Documentation goes here.   