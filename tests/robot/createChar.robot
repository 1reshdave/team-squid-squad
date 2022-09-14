***  Settings ***
Documentation   I want to create a new character. 
Test Template   Create character.
Library         CreateLibrary.py

*** Test Cases ***  StartingCharacterName   EndingCharacterName
New character       DNE                     Daisy
Rename character    Daisy                   Teddy
Rename character    Teddy                   O'Malley

*** Keywords ***
Create character
    [Arguments]         ${startingCharacterName}     ${endingCharacterName}
    Initialize character name with ${startingCharacterName}
    New character name should be ${endingCharacterName}
