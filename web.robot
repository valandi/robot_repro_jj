*** Settings ***
Library     SeleniumLibrary
Library     EyesLibrary     web_ufg

Test Setup    Setup
Test Teardown    Teardown

*** Variables ***
&{LOGO}     id=hplogo                 xpath=//*[@id="hplogo"]
${BROWSER}        Chrome
${URL}      https://www.jnjmedtech.com/en-US/companies/acclarent

*** Keywords ***
Setup
    Open Browser                              ${URL}      ${BROWSER}

Teardown
    Close All Browsers
    Eyes Abort Async


*** Test Cases ***
Check Window
    Eyes Open
    # Execute JavaScript  Array.from(document.getElementsByClassName("field--name-jnjmdc-card-image--container filled-row")).forEach(el => {el.style.height="unset";});
    # Execute JavaScript  Array.from(document.getElementsByClassName("swiper-slide swiper-slide-active")).forEach(el => {el.style.width="fit-content"});
    # Execute JavaScript  Array.from(document.getElementsByClassName("field--name-jnjmdc-card-body--container filled-row")).forEach(el => {el.style.height="unset"});
    Eyes Check Window
    Eyes Close Async