*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Counter value is set to a custom value
   Go To  ${HOME_URL}
   Input Text  name=arvo  420
   Click Button  aseta
   Page Should Contain  nappia painettu 420 kertaa

Counter value remains when aseta button is pressed without a value
   Click Button  aseta
   Page Should Contain  nappia painettu 420 kertaa
   Click Button  Nollaa
