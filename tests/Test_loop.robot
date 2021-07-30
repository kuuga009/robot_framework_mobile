*** Settings ***
Documentation     IF / ELSE IF / ELSE example using Robot Framework 3 and 4.
...               Generate a random number.
...               Do if-else logic based on the generated number.
...               Stop (pass) when the condition is met.

*** Variables ***
${MAX_TRIES}=     ${50}
${NUMBER_TO_PASS_ON}=    7
${YEAR}=    ${2021}
${INPUT_YEAR}=  ${2029}
*** Keywords ***
Robot Framework 4: IF, ELSE IF, ELSE condition
    Log To Console  Start 1
    FOR    ${i}    IN RANGE    ${MAX_TRIES}
    Log To Console  i = ${i}
        ${random}=    Evaluate    random.randint(0, 10)
        IF    ${random} == ${NUMBER_TO_PASS_ON}
        Pass Execution    "${random} == ${NUMBER_TO_PASS_ON}"
        ELSE IF    ${random} > ${NUMBER_TO_PASS_ON}
        Log To Console    ${random} = Too high.
        ELSE
        Log To Console    ${random} = Too low.
        END
    END
    Log To Console  End 1

Robot Framework 3: Use IF, ELSE IF, ELSE condition
    Log To Console  Start 2
    FOR    ${i}    IN RANGE    ${MAX_TRIES}
    Log TO Console  i = ${i}
        ${random}=    Evaluate    random.randint(0, 10)
        ${is_expected}=    Evaluate    ${random} == ${NUMBER_TO_PASS_ON}
        Run Keyword Unless
        ...    ${is_expected}
        ...    Log To Console    Condition not met.
        Run Keyword If
        ...    ${is_expected}
        ...    Pass Execution    "${random} == ${NUMBER_TO_PASS_ON}"
        ...    ELSE IF
        ...    ${random} > ${NUMBER_TO_PASS_ON}
        ...    Log To Console    Too high.
        ...    ELSE
        ...    Log To Console    Too low.
    END
    Log To Console  End 2
*** Test Cases ***
# Use if - else if - else conditions in Robot Framework
#     Robot Framework 4: IF, ELSE IF, ELSE condition
    # Robot Framework 3: Use IF, ELSE IF, ELSE condition
    # Robot Framework 4: Use IF, ELSE IF, ELSE condition
    # Robot Framework 3: Use IF, ELSE IF, ELSE condition


Test Condition to Scroll
    FOR  ${INPUT_YEAR}    IN   ${YEAR}
        IF  ${INPUT_YEAR} == ${YEAR}
        # IF    ${random} == ${NUMBER_TO_PASS_ON}
        Pass Execution    "${INPUT_YEAR} == ${YEAR}"
        ELSE IF    ${INPUT_YEAR} > ${YEAR}
        Log To Console    ${INPUT_YEAR} = Too high.
        ELSE IF     ${INPUT_YEAR} < ${YEAR}
        Log To Console    ${INPUT_YEAR} = Too low.
        END
    END