*** Settings ***
Library     AppiumLibrary



*** Test Cases ***
Open Test Application For android
    Open Test Application
    Close Popup When App Start
    Click Search Icon On Topbar
    Input Search Keyword Into Search Box    Icon
    Click Bottom Navigation Icon Menu



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
    # Wait Until Page Contains Element    accessibility_id=Search             30s
    Tap     accessibility_id=Search

Input Search Keyword Into Search Box
    [Arguments]     ${kw}
    # Wait Until Page Contains Element    id=com.material.components:id/search_src_text       30s
    Input Text      id=com.material.components:id/search_src_text       ${kw}

Click Bottom Navigation Icon Menu
    Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Bottom Navigation'] and android.widget.TextView[@text='Icon']]   30s
    Tap     xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Bottom Navigation'] and android.widget.TextView[@text='Icon']]





