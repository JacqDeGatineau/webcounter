*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Reset Counter

*** Test Cases ***
Submitting a value to a form sets the counter into the value set
    Go To  ${HOME_URL}
    Fill Text  input[name="set"]  10
    Click  button >> text=aseta
    Get Text  body  *=  nappia painettu 10 kertaa
