*** Settings ***
Library    AppiumLibrary
Library    DateTime
Library    DatabaseLibrary

*** Variables ***
${INPUT_YEAR}=  ${2029}
${SELECT_DATE}=  09 March 2029
*** Test Cases ***
Open Test Application For android
    Open Test Application
    Close Popup When App Start
    Click Picker Menu
    Click Date Dark
    Click Pick Date
    Click year
    Select Year
    Select Month and Day
    Click OK Button






    

*** Keywords ***
Open Test Application
    Log To Console   Start
    Open Application    remote_url=http://localhost:4723/wd/hub     
    ...     deviceName=TestDevice   
    # ...     platformVersion=9    
    # ...     deviceName=sdk_gphone_x86   
    ...     platformVersion=11    
    ...     platformName=Android
    ...     appPackage=com.material.components
    ...     appActivity=com.material.components.activity.MainMenu

Close Popup When App Start
    Log To Console  App Start
    Wait Until Page Contains Element    id=com.material.components:id/bt_close      60s
    Tap     id=com.material.components:id/bt_close

Click Search Icon On Topbar
    Log To Console  Search
    Wait Until Page Contains Element    accessibility_id=Search             30s
    Tap     accessibility_id=Search

Input Search Keyword Into Search Box
    [Arguments]     ${kw}
    Wait Until Page Contains Element    id=com.material.components:id/search_src_text       30s
    Input Text      id=com.material.components:id/search_src_text       ${kw}

Click Bottom Navigation Icon Menu
    Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Bottom Navigation'] and android.widget.TextView[@text='Icon']]   30s
    Tap     xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Bottom Navigation'] and android.widget.TextView[@text='Icon']]



Click Picker Menu
    Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Pickers']]    30s
    Tap     xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Pickers']]

Click Date Dark
    Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Date Light']]       30s
    Tap     xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Date Light']]

Click Pick Date
    Wait Until Page Contains Element    id=com.material.components:id/bt_pick      30s
    Tap      id=com.material.components:id/bt_pick    


Click year
    Tap      id=com.material.components:id/mdtp_date_picker_year
	Wait Until Page Contains Element    accessibility_id=2024             30s

Select Year
    ${date}=    Get Current Date    result_format=datetime
    FOR    ${i}    IN RANGE    ${20}

        IF    ${date.year} == ${INPUT_YEAR}
            ${pass}    Run Keyword And Return Status	Wait Until Page Contains Element    accessibility_id=${INPUT_YEAR}             2s
            log  ${pass}  
            Exit For Loop If  '${pass}' == 'True
        ELSE IF    ${date.year} < ${INPUT_YEAR}
            Scroll Up    
            ${pass}    Run Keyword And Return Status	Wait Until Page Contains Element    accessibility_id=${INPUT_YEAR}             2s
            log  ${pass}
            Exit For Loop If  '${pass}' == 'True'
        ELSE IF    ${date.year} > ${INPUT_YEAR}
            Scroll Down
            ${pass}    Run Keyword And Return Status	Wait Until Page Contains Element    accessibility_id=${INPUT_YEAR}             2s
            log  ${pass}  
            Exit For Loop If  '${pass}' == 'True'

        END

    END
    Tap     accessibility_id=${INPUT_YEAR}

Select Month and Day
    
    ${date}=    Get Current Date    result_format=datetime

    FOR    ${i}    IN RANGE    ${10}

        IF    ${date.month} == ${3}
            ${pass}    Run Keyword And Return Status	Wait Until Page Contains Element    accessibility_id=${SELECT_DATE}             2s
            log  ${pass}  
            Exit For Loop If  '${pass}' == 'True
        ELSE IF    ${date.month} < ${3}
            Scroll Up    
            ${pass}    Run Keyword And Return Status	Wait Until Page Contains Element    accessibility_id=${SELECT_DATE}             2s
            log  ${pass}
            Exit For Loop If  '${pass}' == 'True'
        ELSE IF    ${date.month} > ${3}
            Scroll Down
            ${pass}    Run Keyword And Return Status	Wait Until Page Contains Element    accessibility_id=${SELECT_DATE}             2s
            log  ${pass}  
            Exit For Loop If  '${pass}' == 'True'

        END
    END
    Tap    accessibility_id=${SELECT_DATE}

Scroll Up    
    Swipe By Percent        50    70    50    45
Scroll Down
    Swipe By Percent        50    45    50    70

Click OK Button
    Tap      id=com.material.components:id/mdtp_ok
    Wait Until Page Contains Element      id=com.material.components:id/result      30s
    ${Date_selected}    Get Text      id=com.material.components:id/result
    log    ${Date_selected}
    Should Be Equal   ${Date_selected}    March 09, 2029