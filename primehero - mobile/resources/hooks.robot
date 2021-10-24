*** Settings ***
Documentation            Todas as configurações de Setup e Teardown do projeto estarão aqui.

Resource                  package.robot

*** Keywords ***
Abrir aplicativo
    Set Appium Timeout              20
    Open Application                http://localhost:4723/wd/hub
    ...                             platformName=Android
    ...                             deviceName=R9QR1042KJW
    ...                             automationName=uiautomator2
    ...                             appPackage=com.google.android.youtube
    ...                             appActivity=com.google.android.youtube.HomeActivity
    ...                             autoGrantPermissions=true

Fechar aplicativo
    Close Application