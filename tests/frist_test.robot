*** Settings ***
Library     AppiumLibrary
Resource    Keywords/keyword_app_control.Robot
Resource    Keywords/keyword_date_picker.Robot


*** Test Cases ***
Open Test Application For android
    Open Test Application
    Close Popup When App Start
    Click Search Icon On Topbar
    Input Search Keyword Into Search Box    Icon
    Click Bottom Navigation Icon Menu



*** Keywords ***


Click Search Icon On Topbar
    Log To Console  Search
    Wait Until Page Contains Element    accessibility_id=Search             30s
    Tap     accessibility_id=Search

Input Search Keyword Into Search Box
    [Arguments]     ${kw}
    Wait Until Page Contains Element    id=com.material.components:id/search_src_text       30s
    Input Text      id=com.material.components:id/search_src_text       ${kw}
    # Input Text      xpath=//android.widget.LinearLayout[android.widget.EditText[@text='Search…']]        ${kw}

Click Bottom Navigation Icon Menu
    Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Bottom Navigation'] and android.widget.TextView[@text='Icon']]   30s
    Tap     xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Bottom Navigation'] and android.widget.TextView[@text='Icon']]





