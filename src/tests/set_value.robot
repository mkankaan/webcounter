*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When value is set to 10 the counter is 10
    Go To  ${HOME_URL}
    Click Button  Nollaa
    Input Text  new_value  10
    Click Button  Aseta
    Page Should Contain  nappia painettu 10 kertaa