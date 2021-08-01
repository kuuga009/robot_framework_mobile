*** Settings ***
Library    BuiltIn
Library    AppiumLibrary
Library    DateTime
Library    DatabaseLibrary
Resource    Keywords/keyword_app_control.Robot

*** Variables ***
${INPUT_YEAR}=  ${2029}
${SELECT_DATE}=  09 March 2029
*** Test Cases ***
# Open Test Application For android

#     Open Test Application
#     Close Popup When App Start
    # Click Picker Menu
    # Click Date Dark
    # Click Pick Date
    # Click year
    # Select Year
    # Select Month and Day
    # Click OK Button




Test fill infomations in the form ecommerce
    keyword_app_control.Open Test Application
    keyword_app_control.Close Popup When App Start
    Click "Ecommerce" In "Form"
    I fill Full Name
    # I fill Card Number
    # I fill CVV
    # I Select Expiration Date
    # I fill Address Line 1
    # I fill Address Line 2
    # I fill City
    # I select state
    # I fill Country
    # I fill Zip Code
    # I fill Comment
    # I Click Submit




# Test fill infomations in the form ecommerce
#     keyword_app_control.Open Test Application
#     keyword_app_control.Close Popup When App Start
#     Click "Contact Us" In "Dialogs"
#     Sleep  2s
#     Go Back
#     Sleep  2s
#     Click "Drawer Admin Dark" In "Menu"
#     Sleep  2s
#     Go Back
#     Click "Add Project Blue" In "Form"
#     Sleep  2s
#     Go Back
#     Click "Snap News" In "Slider Image"
#     Sleep  2s
#     Go Back
#     Click "News" In "Dashboard"
#     Sleep  2s
#     Go Back
#     Click "BBM" In "Chat"
#     Sleep  2s
#     Go Back
    
    


    

    

*** Keywords ***
I fill Full Name
    Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.EditText[@text='Full Name']]             2s
    Tap      xpath=//android.widget.LinearLayout[android.widget.EditText[@text='Full Name']]
    Input Text    xpath=//android.widget.LinearLayout[android.widget.EditText[@text='Full Name']]             Full Name test
I fill Card Number
    Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.EditText[@text='Card Number']]             2s
    Input Text    xpath=//android.widget.LinearLayout[android.widget.EditText[@text='Card Number']]             Card Number test
I fill CVV
    Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.EditText[@text='CVV']]             2s
    Input Text    xpath=//android.widget.LinearLayout[android.widget.EditText[@text='CVV']]             CVV test
I Select Expiration Date
    Wait Until Page Contains Element    id:com.material.components:id/bt_exp_date             2s
    Click year
    Select Year
    Select Month and Day
    Click OK Button
Click OK Button
    Tap      id=com.material.components:id/mdtp_ok
I fill Address Line 1
    Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.EditText[@text='Address Line 1']]             2s
    Input Text    xpath=//android.widget.LinearLayout[android.widget.EditText[@text='Address Line 1']]             Address Line 1 test
I fill Address Line 2
    Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.EditText[@text='Address Line 2']]             2s
    Input Text    xpath=//android.widget.LinearLayout[android.widget.EditText[@text='Address Line 2']]             Address Line 2 test
I fill City
    Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.EditText[@text='City']]             2s
    Input Text    xpath=//android.widget.LinearLayout[android.widget.EditText[@text='City']]             City test
I select state
    Wait Until Page Contains Element    id=com.material.components:id/et_state             2s
    Tap    xpath=//android.widget.LinearLayout[android.widget.EditText[@text='${Arizona}']]             2s
I fill Country
    Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.EditText[@text='Country']]             2s
    Input Text    xpath=//android.widget.LinearLayout[android.widget.EditText[@text='Country']]             Country test
I fill Zip Code
    Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.EditText[@text='Zip Code']]             2s
    Input Text    xpath=//android.widget.LinearLayout[android.widget.EditText[@text='Zip Code']]             Zip Code test
I fill Comment
    Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.EditText[@text='Comment']]             2s
    Input Text    xpath=//android.widget.LinearLayout[android.widget.EditText[@text='Comment']]             Comment test
I Click Submit
    Tap    id=com.material.components:id/bt_submit             2s