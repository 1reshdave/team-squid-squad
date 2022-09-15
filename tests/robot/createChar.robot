*** Settings ***
Documentation   I want to create a new character. 
Test Template   Create Character.
Library         CreateCharLibrary.py

*** Test Cases ***  StartingCharacterName   Action      EndingCharacterName
New character       ${EMPTY}                EnterName   Daisy
Rename character    Teddy                   EnterName   O'Malley

*** Keywords ***
Create Character
    [Arguments]         ${startingCharacterName}     ${endingCharacterName}
    Initialize character name with ${startingCharacterName}
    New character name should be ${endingCharacterName}
