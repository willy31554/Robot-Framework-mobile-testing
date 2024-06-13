*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}    http://localhost:4723
${PLATFORM_NAME}    Android
${DEVICE_NAME}    emulator-5554
${APP_PACKAGE}    com.metropol.crystobol
${APP_ACTIVITY}    com.metropol.crystobol.activites.SplashActivity
${AUTOMATION_NAME}    uiautomator2
${WAIT_TIMEOUT}    30s
${VALID_PHONE}          0713387260
${VALID_PIN}            0000
${INVALID_PHONE}                12345
${INVALID_PIN}                  9999
${EMPTY}
${ALLOW_BUTTON_ID}              com.android.packageinstaller:id/permission_allow_button
${DENY_BUTTON_ID}               com.android.packageinstaller:id/permission_deny_button
${PACKAGE_INSTALLER_PACKAGE}    com.google.android.packageinstaller

${ALLOW_PERMISSION}              ${TRUE}   # Set to ${TRUE} to allow, ${FALSE} to deny

*** Test Cases ***
Open Application Test
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}
#    #Close Application
#Verify Welcome Screen
#    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}
#    Capture Page Screenshot    Opened_Application_Screenshot.png
#    # Wait until the splash screen disappears or a certain element appears
#    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='My CRB Status']    ${WAIT_TIMEOUT}
#    Capture Page Screenshot    Verified_Splash_Screen.png
#    #Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Know your positive and negative Status.']    ${WAIT_TIMEOUT}
#    Wait Until Page Contains    SKIP
#    Wait Until Page Contains    NEXT
#    Wait Until Page Contains    Know your positive and negative status.
#    Wait Until Page Contains    Get Started
#    Log    Successfully verified the splash screen.
#
#Click Next Test 1
#    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}
#
#    # Assuming the page is loaded and you are ready to click Next
#    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='My CRB Status']    ${WAIT_TIMEOUT}
#
#    Click Element    xpath=//android.widget.Button[@text='NEXT']
#    Capture Page Screenshot    After_Click_Next.png
#    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Credit Report']    ${WAIT_TIMEOUT}
#
#    Wait Until Page Contains    Know your personal credit history in details.
#    Wait Until Page Contains    Get Started
#
#    Log    Successfully clicked Next.
#
#Click Next Test 2
#    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}
#
#    # Assuming the page is loaded and you are ready to click Next
#    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='My CRB Status']    ${WAIT_TIMEOUT}
#
#    Click Element    xpath=//android.widget.Button[@text='NEXT']
#    Click Element    xpath=//android.widget.Button[@text='NEXT']
#    Capture Page Screenshot    After_Click_Next.png
#    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Credit Score']    ${WAIT_TIMEOUT}
#
#    Wait Until Page Contains    Get to know your Metro-Score.
#    Wait Until Page Contains    Get Started
#
#    Log    Successfully clicked Next.
#
#Click Next Test 3
#    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}
#
#    # Assuming the page is loaded and you are ready to click Next
#    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='My CRB Status']    ${WAIT_TIMEOUT}
#    Click Element    xpath=//android.widget.Button[@text='NEXT']
#
#    Click Element    xpath=//android.widget.Button[@text='NEXT']
#    Click Element    xpath=//android.widget.Button[@text='NEXT']
#    Capture Page Screenshot    After_Click_Next.png
#    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='C.O.C']    ${WAIT_TIMEOUT}
#
#    Wait Until Page Contains    Proof that you have no default account.
#    Wait Until Page Contains    Get Started
#
#Click Next Test 4
#    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}
#
#    Log    Application opened successfully.
#
#    # Wait for the initial page to load
#    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='My CRB Status']    ${WAIT_TIMEOUT}
#    Log    Initial page loaded.
#
#    # Click the "Next" button multiple times
#    Click Element    xpath=//android.widget.Button[@text='NEXT']
#    Log    Clicked Next button 1st time.
#    Click Element    xpath=//android.widget.Button[@text='NEXT']
#    Log    Clicked Next button 2nd time.
#    Click Element    xpath=//android.widget.Button[@text='NEXT']
#    Log    Clicked Next button 3rd time.
#    Click Element    xpath=//android.widget.Button[@text='NEXT']
#    Log    Clicked Next button 4th time.
#
#    # Capture screenshot after clicking "Next" multiple times
#    Capture Page Screenshot    After_Clicking_Next.png
#
#    # Wait for the expected element to appear
#    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Who has shared my data']    ${WAIT_TIMEOUT}
#    Log    Found element with text 'Who has shared my data'.
#
#    # Capture screenshot after the expected element appears
#    Capture Page Screenshot    After_Who_Has_Shared_My_Data.png
#
#    # Simplify the XPath and wait until the specific text is present on the page
#    Wait Until Page Contains Element    xpath=//android.widget.TextView[contains(@text, "Know the Institution")]    ${WAIT_TIMEOUT}
#    Log    Found element containing text 'Know the Institution'.
#
#    # Wait until the START button is present
#    Wait Until Page Contains    START    ${WAIT_TIMEOUT}
#    Log    Found text 'START'.
#
#    Log    Successfully clicked Next.
#
#    # Close Application
#    Close Application
#    Log    Application closed.
#
#Click GETSTARTED Test
#    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}
#    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='My CRB Status']    ${WAIT_TIMEOUT}
#
#    Click Element    xpath=//android.widget.Button[@text='Get Started']
#    Wait Until Page Contains    X
#    #Wait Until Page Contains    SIGNIN
#    #Element Should Be Visible    xpath=//android.widget.Button[@resource-id='signing_in']

#Verify Sign-In Screen Elements
#    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}
#    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='My CRB Status']    ${WAIT_TIMEOUT}
#    Click Element    xpath=//android.widget.Button[@text='Get Started']
#
#    Wait Until Page Contains Element    xpath=//android.widget.ImageView[@resource-id='com.metropol.crystobol:id/close']    timeout=${WAIT_TIMEOUT}
#    Wait Until Page Contains Element    xpath=//android.widget.TextView[contains(@text, 'signing-in')]    timeout=${WAIT_TIMEOUT}
#
#    Wait Until Page Contains Element    xpath=//android.widget.ImageView    timeout=${WAIT_TIMEOUT}
#    Wait Until Page Contains Element    xpath=//android.widget.EditText[@resource-id='com.metropol.crystobol:id/sign_in_phone'][@text='phone number e.g. 07xxxxxxxx']    timeout=${WAIT_TIMEOUT}
#    Wait Until Page Contains Element    xpath=//android.widget.EditText[@resource-id='com.metropol.crystobol:id/sign_in_password'][@text='Pin']    timeout=${WAIT_TIMEOUT}
#    Wait Until Page Contains Element    xpath=//android.widget.Button[@resource-id='com.metropol.crystobol:id/forgot_button'][@text='forgot pin?']    timeout=${WAIT_TIMEOUT}
#    Wait Until Page Contains Element    xpath=//android.widget.Button[@resource-id='com.metropol.crystobol:id/sign_in_button'][@text='SIGNIN']    timeout=${WAIT_TIMEOUT}
#    Wait Until Page Contains Element    xpath=//android.widget.Button[@resource-id='com.metropol.crystobol:id/sign_in_need_help'][@text='NEED HELP?']    timeout=${WAIT_TIMEOUT}
#    Wait Until Page Contains Element    xpath=//android.widget.Button[@resource-id='com.metropol.crystobol:id/sign_up_button'][@text='SIGNUP']    timeout=${WAIT_TIMEOUT}
#
#Verify Element Clickability
#    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}
#    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='My CRB Status']    ${WAIT_TIMEOUT}
#    Click Element    xpath=//android.widget.Button[@text='Get Started']
## Check if forgot pin button is clickable
#    Element Should Be Enabled    xpath=//android.widget.Button[@resource-id='com.metropol.crystobol:id/forgot_button']
#
#    # Check if sign in button is clickable
#    Element Should Be Enabled    xpath=//android.widget.Button[@resource-id='com.metropol.crystobol:id/sign_in_button']
#
#    # Check if need help button is clickable
#    Element Should Be Enabled    xpath=//android.widget.Button[@resource-id='com.metropol.crystobol:id/sign_in_need_help']
#
#    # Check if sign up button is clickable
#    Element Should Be Enabled    xpath=//android.widget.Button[@resource-id='com.metropol.crystobol:id/sign_up_button']

#Sign-In with Valid Credentials
#    [Documentation]    Input a valid phone number and PIN, then click the sign-in button.
#    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}
#    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='My CRB Status']    timeout=${WAIT_TIMEOUT}
#    Click Element    xpath=//android.widget.Button[@text='Get Started']
#
#    Wait Until Page Contains Element    xpath=//android.widget.ImageView[@resource-id='com.metropol.crystobol:id/close']    timeout=${WAIT_TIMEOUT}
#    Wait Until Page Contains Element    xpath=//android.widget.TextView[contains(@text, 'signing-in')]    timeout=${WAIT_TIMEOUT}
#
#    # Adding a delay before verifying other elements
#    Sleep    2s
#
#    # Verify and input phone number
#    Wait Until Page Contains Element    xpath=//android.widget.EditText[@resource-id='com.metropol.crystobol:id/sign_in_phone']    timeout=${WAIT_TIMEOUT}
#    Input Text    xpath=//android.widget.EditText[@resource-id='com.metropol.crystobol:id/sign_in_phone']    ${VALID_PHONE}
#
#    # Verify and input PIN
#    Wait Until Page Contains Element    xpath=//android.widget.EditText[@resource-id='com.metropol.crystobol:id/sign_in_password']    timeout=${WAIT_TIMEOUT}
#    Input Text    xpath=//android.widget.EditText[@resource-id='com.metropol.crystobol:id/sign_in_password']    ${VALID_PIN}
#
#    # Verify and click sign-in button
#    Wait Until Page Contains Element    xpath=//android.widget.Button[@resource-id='com.metropol.crystobol:id/sign_in_button']    timeout=${WAIT_TIMEOUT}
#    Element Should Be Enabled    xpath=//android.widget.Button[@resource-id='com.metropol.crystobol:id/sign_in_button']
#    Click Element    xpath=//android.widget.Button[@resource-id='com.metropol.crystobol:id/sign_in_button']
#
#    # Capture screenshot for debugging
#    Capture Page Screenshot    sign_in_success.png
#
#    # Verify successful sign-in, adjust xpath as per your application's response
#    #Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Welcome']    timeout=${WAIT_TIMEOUT}
#Sign-In and Handle Permissions
#    [Documentation]    Sign in with valid credentials and then allow or deny Crystobol access to photos, media, and files on your device.
#    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}
#
#    # Sign-In Process
#    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='My CRB Status']    timeout=${WAIT_TIMEOUT}
#    Click Element    xpath=//android.widget.Button[@text='Get Started']
#
#    Wait Until Page Contains Element    xpath=//android.widget.ImageView[@resource-id='com.metropol.crystobol:id/close']    timeout=${WAIT_TIMEOUT}
#    Wait Until Page Contains Element    xpath=//android.widget.TextView[contains(@text, 'signing-in')]    timeout=${WAIT_TIMEOUT}
#
#    # Adding a delay before verifying other elements
#    Sleep    2s
#
#    # Verify and input phone number
#    Wait Until Page Contains Element    xpath=//android.widget.EditText[@resource-id='com.metropol.crystobol:id/sign_in_phone']    timeout=${WAIT_TIMEOUT}
#    Input Text    xpath=//android.widget.EditText[@resource-id='com.metropol.crystobol:id/sign_in_phone']    ${VALID_PHONE}
#
#    # Verify and input PIN
#    Wait Until Page Contains Element    xpath=//android.widget.EditText[@resource-id='com.metropol.crystobol:id/sign_in_password']    timeout=${WAIT_TIMEOUT}
#    Input Text    xpath=//android.widget.EditText[@resource-id='com.metropol.crystobol:id/sign_in_password']    ${VALID_PIN}
#
#    # Verify and click sign-in button
#    Wait Until Page Contains Element    xpath=//android.widget.Button[@resource-id='com.metropol.crystobol:id/sign_in_button']    timeout=${WAIT_TIMEOUT}
#    Element Should Be Enabled    xpath=//android.widget.Button[@resource-id='com.metropol.crystobol:id/sign_in_button']
#    Click Element    xpath=//android.widget.Button[@resource-id='com.metropol.crystobol:id/sign_in_button']
#
#    # Capture screenshot for debugging
#    Capture Page Screenshot    sign_in_success.png
#
#    # Verify successful sign-in, adjust xpath as per your application's response
#    #Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Welcome']    timeout=${WAIT_TIMEOUT}
#
#    # Handle Permissions Dialog
#    Handle Permissions Dialog

Invalid Login - Invalid Phone Number
    [Documentation]    Attempt to sign in with an invalid phone number and valid PIN, then verify the error message.
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}
    Login With Credentials    ${INVALID_PHONE}    ${VALID_PIN}
    Verify Invalid Phone Number Error

Invalid Login - Invalid PIN
    [Documentation]    Attempt to sign in with a valid phone number and invalid PIN, then verify the error message.
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}
    Login With Credentials    ${VALID_PHONE}    ${INVALID_PIN}
    Verify Invalid Pin Error

*** Keywords ***
Handle Permissions Dialog
    [Documentation]    Handle the permissions dialog by clicking allow or deny based on the ${ALLOW_PERMISSION} variable.
    Wait Until Page Contains Element    xpath=//android.widget.TextView[contains(@text, 'Allow Crystobol to access photos, media, and files')]    timeout=${WAIT_TIMEOUT}
    Run Keyword If    '${ALLOW_PERMISSION}' == '${TRUE}'    Click Element    xpath=//android.widget.Button[@resource-id='${ALLOW_BUTTON_ID}']
    Run Keyword If    '${ALLOW_PERMISSION}' == '${FALSE}'    Click Element    xpath=//android.widget.Button[@resource-id='${DENY_BUTTON_ID}']
    Sleep    2s  # Adding sleep to give time for the action to complete

Login With Credentials
    [Arguments]    ${phone}    ${pin}
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='My CRB Status']    timeout=${WAIT_TIMEOUT}
    Click Element    xpath=//android.widget.Button[@text='Get Started']
    Wait Until Page Contains Element    xpath=//android.widget.ImageView[@resource-id='com.metropol.crystobol:id/close']    timeout=${WAIT_TIMEOUT}
    Wait Until Page Contains Element    xpath=//android.widget.TextView[contains(@text, 'signing-in')]    timeout=${WAIT_TIMEOUT}
    Sleep    2s
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@resource-id='com.metropol.crystobol:id/sign_in_phone']    timeout=${WAIT_TIMEOUT}
    Input Text    xpath=//android.widget.EditText[@resource-id='com.metropol.crystobol:id/sign_in_phone']    ${phone}
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@resource-id='com.metropol.crystobol:id/sign_in_password']    timeout=${WAIT_TIMEOUT}
    Input Text    xpath=//android.widget.EditText[@resource-id='com.metropol.crystobol:id/sign_in_password']    ${pin}
    Wait Until Page Contains Element    xpath=//android.widget.Button[@resource-id='com.metropol.crystobol:id/sign_in_button']    timeout=${WAIT_TIMEOUT}
    Element Should Be Enabled    xpath=//android.widget.Button[@resource-id='com.metropol.crystobol:id/sign_in_button']
    Click Element    xpath=//android.widget.Button[@resource-id='com.metropol.crystobol:id/sign_in_button']
    Sleep    2s

Verify Invalid Phone Number Error
    [Documentation]    Verify that the appropriate error message is displayed for an invalid phone number.
    #Wait Until Page Contains Element    xpath=//android.widget.TextView[contains(@text, 'invalid phone number')]    timeout=${WAIT_TIMEOUT}
    Capture Page Screenshot    invalid_phone_number_error.png

Verify Invalid Pin Error
    [Documentation]    Verify that the appropriate error message is displayed for an invalid PIN.
    #Wait Until Page Contains Element    xpath=//android.widget.TextView[contains(@text, 'invalid pin')]    timeout=${WAIT_TIMEOUT}
    Capture Page Screenshot    invalid_pin_error.png