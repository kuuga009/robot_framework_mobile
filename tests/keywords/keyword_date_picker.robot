*** Keywords ***


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
            Date Picker Scroll Up    
            ${pass}    Run Keyword And Return Status	Wait Until Page Contains Element    accessibility_id=${INPUT_YEAR}             2s
            log  ${pass}
            Exit For Loop If  '${pass}' == 'True'
        ELSE IF    ${date.year} > ${INPUT_YEAR}
            Date Picker Scroll Down
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
            Date Picker Scroll Up    
            ${pass}    Run Keyword And Return Status	Wait Until Page Contains Element    accessibility_id=${SELECT_DATE}             2s
            log  ${pass}
            Exit For Loop If  '${pass}' == 'True'
        ELSE IF    ${date.month} > ${3}
            Date Picker Scroll Down
            ${pass}    Run Keyword And Return Status	Wait Until Page Contains Element    accessibility_id=${SELECT_DATE}             2s
            log  ${pass}  
            Exit For Loop If  '${pass}' == 'True'

        END
    END
    Tap    accessibility_id=${SELECT_DATE}

Date Picker Scroll Up    
    Swipe By Percent        50    70    50    45
Date Picker Scroll Down
    Swipe By Percent        50    45    50    70

Click OK Button
    Tap      id=com.material.components:id/mdtp_ok