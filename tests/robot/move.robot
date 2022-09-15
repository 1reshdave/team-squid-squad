*** Settings ***
Documentation   I want to move my character. If they attempt to move past a boundary, the move results in no change in position.
Test Template   Move character
Library         MoveLibrary.py

*** Test Cases ***      StartingX       StartingY       Direction       EndingX     EndingY
Move N in middle        5               5               NORTH           5           4
Move S in middle        5               5               SOUTH           5           6
Move E in middle        5               5               EAST            6           5
Move W in middle        5               5               WEST            4           5
Move N from UL          0               0               NORTH           0           0
Move S from UL          0               0               SOUTH           0           1
Move E from UL          0               0               EAST            1           0
Move W from UL          0               0               WEST            0           0
Move N from LL          0               9               NORTH           0           8
Move S from LL          0               9               SOUTH           0           9
Move E from LL          0               9               EAST            1           9
Move W from LL          0               9               WEST            0           9
Move N from LR          9               9               NORTH           9           8
Move S from LR          9               9               SOUTH           9           9
Move E from LR          9               9               EAST            9           9
Move W from LR          9               9               WEST            8           9          
Move N from UR          9               0               NORTH           9           0
Move S from UR          9               0               SOUTH           9           1
Move E from UR          9               0               EAST            9           0
Move W from UR          9               0               WEST            8           0

*** Keywords ***
Move character
    [Arguments]   ${startingX}   ${startingY}   ${direction}   ${endingX}   ${endingY}
    Initialize character xposition with   ${startingX}
    Initialize character yposition with   ${startingY}
    Move in direction                     ${direction}
    Character xposition should be         ${endingX}
    Character yposition should be         ${endingY}