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


Click "${submenu}" In "${mainmenu}"
    Set test Variable  ${submenu}
    Set test Variable  ${mainmenu}
    Find Main Menu
    Find Submenu

Find Main Menu    
    FOR    ${i}    IN RANGE    ${20}
        ${Check_status}    Run Keyword And Return Status	Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
        ${Check_status_button_1}    Run Keyword And Return Status	 Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
        Sleep  2s
        ${Check_status_button_2}    Run Keyword And Return Status	 Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
        Sleep  2s
        log  ${Check_status}  
        log  ${Check_status_button_2}
        IF    '${Check_status}' == 'True' 
            IF  '${Check_status_button_1}' == 'True' 
                IF  '${Check_status_button_2}' == 'True' 
                    ${Check_status_button_2}    Run Keyword And Return Status	 Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
                    Sleep  2s
                    # ${Check_status_button}    Run Keyword And Return Status	 Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
                    # Sleep  2s
                    log  ${Check_status_button_2}
                    Exit For Loop If  '${Check_status_button_2}' == 'True'
                ELSE IF    '${Check_status_button_2}' != 'True' 
                    Scroll Down    
                    ${Check_status_button_1}    Run Keyword And Return Status	 Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
                    Sleep  2s
                    ${Check_status_button_2}    Run Keyword And Return Status	 Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
                    Sleep  2s
                    log  ${Check_status_button_2}
                        IF  '${Check_status_button_2}' == 'True' 
                            ${Check_status_button_2}    Run Keyword And Return Status	 Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
                            Sleep  2s
                            # ${Check_status_button}    Run Keyword And Return Status	 Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
                            # Sleep  2s
                            log  ${Check_status_button_2}
                            Exit For Loop If  '${Check_status_button_2}' == 'True'
                        ELSE IF    '${Check_status_button_2}' != 'True' 
                            Scroll Down    
                            ${Check_status_button_1}    Run Keyword And Return Status	 Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
                            Sleep  2s
                            ${Check_status_button_2}    Run Keyword And Return Status	 Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
                            Sleep  2s
                            log  ${Check_status_button_2}
                            Exit For Loop If  '${Check_status_button_2}' == 'True'
                        END
                    Exit For Loop If  '${Check_status_button_2}' == 'True'
                END
            ELSE IF    '${Check_status_button_1}' != 'True' 
                Scroll Up    
                ${Check_status_button_1}    Run Keyword And Return Status	 Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
                Sleep  2s
                ${Check_status_button_2}    Run Keyword And Return Status	 Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
                Sleep  2s
                ${Check_status}    Run Keyword And Return Status	Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
                    IF  '${Check_status_button_2}' == 'True' 
                        ${Check_status_button_2}    Run Keyword And Return Status	 Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
                        Sleep  2s
                        # ${Check_status_button}    Run Keyword And Return Status	 Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
                        # Sleep  2s
                        log  ${Check_status_button_2}
                        Exit For Loop If  '${Check_status_button_2}' == 'True'
                    END
                log  ${Check_status_button_2}
                Exit For Loop If  '${Check_status_button_2}' == 'True'
            END 
        ELSE IF    '${Check_status_button_1}' != 'True' 
            Scroll Up    
            ${Check_status}    Run Keyword And Return Status	Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
            log  ${Check_status}
            ${Check_status_button_1}    Run Keyword And Return Status	 Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
            Sleep  2s
            ${Check_status_button_2}    Run Keyword And Return Status	 Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
            Sleep  2s
            log  ${Check_status_button_2}
                IF  '${Check_status_button_1}' == 'True' 
                    IF  '${Check_status_button_2}' == 'True' 
                        ${Check_status_button_2}    Run Keyword And Return Status	 Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
                        Sleep  2s
                        # ${Check_status_button}    Run Keyword And Return Status	 Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
                        # Sleep  2s
                        log  ${Check_status_button_2}
                    Exit For Loop If  '${Check_status_button_2}' == 'True'
                    ELSE IF    '${Check_status_button_2}' != 'True' 
                        Scroll Down    
                        ${Check_status_button_1}    Run Keyword And Return Status	 Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
                        Sleep  2s
                        ${Check_status_button_2}    Run Keyword And Return Status	 Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
                        Sleep  2s
                        log  ${Check_status_button_2}
                        Exit For Loop If  '${Check_status_button_2}' == 'True'
                    END
                ELSE IF    '${Check_status_button_1}' != 'True' 
                    Scroll Up    
                    ${Check_status_button_2}    Run Keyword And Return Status	 Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]             2s
                    log  ${Check_status_button_2}
                    Exit For Loop If  '${Check_status_button_2}' == 'True'
                END 
                Exit For Loop If  '${Check_status_button_2}' == 'True' 
        END
    END

    # Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]  2s
    # Tap     xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${mainmenu}']]

Find Submenu
    FOR    ${i}    IN RANGE    ${20}
        ${Check_status}    Run Keyword And Return Status	Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${submenu}']]             2s
        log  ${Check_status}  
        ${Check_status_button}    Run Keyword And Return Status  Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${submenu}']]             2s
        Sleep  2s
        ${Check_status_button}    Run Keyword And Return Status  Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${submenu}']]             2s
        Sleep  2s
        log  ${Check_status_button}
        IF    '${Check_status_button}' == 'True' 
            ${Check_status_button}    Run Keyword And Return Status  Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${submenu}']]             2s
            log  ${Check_status_button}
            Exit For Loop If  '${Check_status_button}' == 'True' 
        ELSE IF    '${Check_status_button}' != 'True' 
            Scroll Up    
            ${Check_status}    Run Keyword And Return Status	Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${submenu}']]             2s
            log  ${Check_status}
            ${Check_status_button}    Run Keyword And Return Status  Tap    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${submenu}']]             2s
            log  ${Check_status_button}
            Exit For Loop If  '${Check_status_button}' == 'True' 
        END
    END

    # Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${submenu}']]  2s
    # Tap     xpath=//android.widget.LinearLayout[android.widget.TextView[@text='${submenu}']]
    

Scroll Up    
    Swipe By Percent        50    70    50    35
Scroll Down
    Swipe By Percent        50    45    50    70