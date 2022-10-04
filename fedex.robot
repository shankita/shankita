*** Settings ***
Library			SeleniumLibrary


Suite Teardown    Close All Browsers




*** Variables ***
${BROWSER}		chrome
${HOME_PAGE}     https://www.fedex.com/en-gb/home.html


*** Test Cases ***
Open fedex
    [Documentation]  This Test case is to verify Fedex
    [Tags]  Login   P1
	Open Browser			${HOME_PAGE} 	${BROWSER}
    wait until page contains  fedex


fedex home page
    [Documentation]  This Test case is to verify Fedex
    [Tags]  Home   P2
	# Open Browser			${HOME_PAGE} 	${BROWSER}
    wait until page contains  fedex




*** Keywords ***

Close All Browsers
    close browser