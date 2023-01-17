#!/bin/env bash

echo "Arguments for updating:"
echo " - ENVIRONMENT: $ENVIRONMENT"

# Updating WebApiSettings

echo "Init WebApiSettings!"

IdFileWebApiSettings=../../Constants/Settings/WebApiSettings.cs

if [ "$ENVIRONMENT" == 'DEV' ];  then
	sed -i '' 's#ACCESS_CONTROL = "[-A-Za-z0-9:_./]*"#ACCESS_CONTROL = "'https://argos.loginusa-app.doctusdev.com/'"#' $IdFileWebApiSettings
	sed -i '' 's#CONCRETO_BACK = "[-A-Za-z0-9:_./]*"#CONCRETO_BACK = "'https://argos.concretousa-v2.doctusdev.com/'"#' $IdFileWebApiSettings
	sed -i '' 's#CEMENT_BACK = "[-A-Za-z0-9:_./]*"#CEMENT_BACK = "'https://codapre.argosone.com/'"#' $IdFileWebApiSettings
	sed -i '' 's#URL_BILL_PAY = "[-A-Za-z0-9:_./]*"#URL_BILL_PAY = "'https://ssoqa.argosone.com/'"#' $IdFileWebApiSettings

elif [ "$ENVIRONMENT" == 'QA' ]; then
	sed -i '' 's#ACCESS_CONTROL = "[-A-Za-z0-9:_./]*"#ACCESS_CONTROL = "'https://loginpre.argosone.com/'"#' $IdFileWebApiSettings
	sed -i '' 's#CONCRETO_BACK = "[-A-Za-z0-9:_./]*"#CONCRETO_BACK = "'https://usapiqa.argosone.com/'"#' $IdFileWebApiSettings
	sed -i '' 's#CEMENT_BACK = "[-A-Za-z0-9:_./]*"#CEMENT_BACK = "'https://codapre.argosone.com/'"#' $IdFileWebApiSettings
	sed -i '' 's#URL_BILL_PAY = "[-A-Za-z0-9:_./]*"#URL_BILL_PAY = "'https://ssoqa.argosone.com/'"#' $IdFileWebApiSettings

elif [ "$ENVIRONMENT" == 'PROD' ]; then
	sed -i '' 's#ACCESS_CONTROL = "[-A-Za-z0-9:_./]*"#ACCESS_CONTROL = "'https://uslogin.argosone.com/'"#' $IdFileWebApiSettings
	sed -i '' 's#CONCRETO_BACK = "[-A-Za-z0-9:_./]*"#CONCRETO_BACK = "'https://usapi.argosone.com/'"#' $IdFileWebApiSettings
	sed -i '' 's#CEMENT_BACK = "[-A-Za-z0-9:_./]*"#CEMENT_BACK = "'https://coda.argos-us.com/'"#' $IdFileWebApiSettings
	sed -i '' 's#URL_BILL_PAY = "[-A-Za-z0-9:_./]*"#URL_BILL_PAY = "'https://usbillpay.argosone.com/'"#' $IdFileWebApiSettings
    sed -i '' 's#CONCRETO_BACK_ACCOUNT = "[-A-Za-z0-9:_./]*"#CONCRETO_BACK_ACCOUNT = "'https://usaccounts.argosone.com/'"#' $IdFileWebApiSettings
    sed -i '' 's#CONCRETO_BACK_MONOLITHIC_MS = "[-A-Za-z0-9:_./]*"#CONCRETO_BACK_MONOLITHIC_MS = "'https://usrmxmonolithic.argosone.com/'"#' $IdFileWebApiSettings
    sed -i '' 's#CONCRETO_BACK_YOUR_ORDERS = "[-A-Za-z0-9:_./]*"#CONCRETO_BACK_YOUR_ORDERS = "'https://usrmxyourorders.argosone.com'"#' $IdFileWebApiSettings
    sed -i '' 's#CONCRETO_BACK_PLACE_ORDERS = "[-A-Za-z0-9:_./]*"#CONCRETO_BACK_PLACE_ORDERS = "'https://usrmxplaceorder.argosone.com'"#' $IdFileWebApiSettings
    sed -i '' 's#URL_QUALTRICS = "[-A-Za-z0-9:_./]*"#URL_QUALTRICS = "'https://usqualtrics.argosone.com'"#' $IdFileWebApiSettings

else
	sed -i '' 's#ACCESS_CONTROL = "[-A-Za-z0-9:_./]*"#ACCESS_CONTROL = "'https://loginpre.argosone.com/'"#' $IdFileWebApiSettings
	sed -i '' 's#CONCRETO_BACK = "[-A-Za-z0-9:_./]*"#CONCRETO_BACK = "'https://usapiqa.argosone.com/'"#' $IdFileWebApiSettings
	sed -i '' 's#CEMENT_BACK = "[-A-Za-z0-9:_./]*"#CEMENT_BACK = "'https://codapre.argosone.com/'"#' $IdFileWebApiSettings
	sed -i '' 's#URL_BILL_PAY = "[-A-Za-z0-9:_./]*"#URL_BILL_PAY = "'https://ssoqa.argosone.com/'"#' $IdFileWebApiSettings

fi

# Print out file for reference
cat $IdFileWebApiSettings

echo "Finished WebApiSettings!"

# Updating B2CSettings

echo "Init B2CSettings!"

IdFileB2CSettings=../../Constants/Settings/B2CSettings.cs

if [ "$ENVIRONMENT" == 'DEV' ];  then
	sed -i '' 's#TenantName = "[-A-Za-z0-9:_./]*"#TenantName = "'argosb2ctestdoctus'"#' $IdFileB2CSettings
	sed -i '' 's#ClientID = "[-A-Za-z0-9:_./]*"#ClientID = "'65eae262-0e6c-4921-8f9c-40a0ba3f93bd'"#' $IdFileB2CSettings
	sed -i '' 's#PolicySignUpSignIn = "[-A-Za-z0-9:_./]*"#PolicySignUpSignIn = "'B2C_1_LoginPruebasDoctus'"#' $IdFileB2CSettings
	sed -i '' 's#PolicyResetPassword = "[-A-Za-z0-9:_./]*"#PolicyResetPassword = "'B2C_1_passwordreset'"#' $IdFileB2CSettings
	sed -i '' 's#ScopeRead = "[-A-Za-z0-9:_./]*"#ScopeRead = "'demoapi/read'"#' $IdFileB2CSettings
	sed -i '' 's#ScopeWrite = "[-A-Za-z0-9:_./]*"#ScopeWrite = "'demoapi/write'"#' $IdFileB2CSettings

elif [ "$ENVIRONMENT" == 'QA' ]; then
	sed -i '' 's#TenantName = "[-A-Za-z0-9:_./]*"#TenantName = "'argosb2ctestdoctus'"#' $IdFileB2CSettings
	sed -i '' 's#ClientID = "[-A-Za-z0-9:_./]*"#ClientID = "'65eae262-0e6c-4921-8f9c-40a0ba3f93bd'"#' $IdFileB2CSettings
	sed -i '' 's#PolicySignUpSignIn = "[-A-Za-z0-9:_./]*"#PolicySignUpSignIn = "'B2C_1_LoginPruebasDoctus'"#' $IdFileB2CSettings
	sed -i '' 's#PolicyResetPassword = "[-A-Za-z0-9:_./]*"#PolicyResetPassword = "'B2C_1_ResetPasswordUSA'"#' $IdFileB2CSettings
	sed -i '' 's#ScopeRead = "[-A-Za-z0-9:_./]*"#ScopeRead = "'demoapi/read'"#' $IdFileB2CSettings
	sed -i '' 's#ScopeWrite = "[-A-Za-z0-9:_./]*"#ScopeWrite = "'demoapi/write'"#' $IdFileB2CSettings

elif [ "$ENVIRONMENT" == 'PROD' ]; then
	sed -i '' 's#TenantName = "[-A-Za-z0-9:_./]*"#TenantName = "'argosau'"#' $IdFileB2CSettings
	sed -i '' 's#ClientID = "[-A-Za-z0-9:_./]*"#ClientID = "'2dcb95fa-142e-4673-b58c-a2ac57babb22'"#' $IdFileB2CSettings
	sed -i '' 's#PolicySignUpSignIn = "[-A-Za-z0-9:_./]*"#PolicySignUpSignIn = "'B2C_1_Argos_Inicio_Registro'"#' $IdFileB2CSettings
	sed -i '' 's#PolicyResetPassword = "[-A-Za-z0-9:_./]*"#PolicyResetPassword = "'B2C_1_Argos_Cemento_USA_forgotpassword'"#' $IdFileB2CSettings
	sed -i '' 's#ScopeRead = "[-A-Za-z0-9:_./]*"#ScopeRead = "'usloginapi/general'"#' $IdFileB2CSettings
	sed -i '' 's#ScopeWrite = "[-A-Za-z0-9:_./]*"#ScopeWrite = "'usloginapi/general'"#' $IdFileB2CSettings

else
	sed -i '' 's#TenantName = "[-A-Za-z0-9:_./]*"#TenantName = "'argosb2ctestdoctus'"#' $IdFileB2CSettings
	sed -i '' 's#ClientID = "[-A-Za-z0-9:_./]*"#ClientID = "'65eae262-0e6c-4921-8f9c-40a0ba3f93bd'"#' $IdFileB2CSettings
	sed -i '' 's#PolicySignUpSignIn = "[-A-Za-z0-9:_./]*"#PolicySignUpSignIn = "'B2C_1_LoginPruebasDoctus'"#' $IdFileB2CSettings
	sed -i '' 's#PolicyResetPassword = "[-A-Za-z0-9:_./]*"#PolicyResetPassword = "'B2C_1_ResetPasswordUSA'"#' $IdFileB2CSettings
	sed -i '' 's#ScopeRead = "[-A-Za-z0-9:_./]*"#ScopeRead = "'demoapi/read'"#' $IdFileB2CSettings
	sed -i '' 's#ScopeWrite = "[-A-Za-z0-9:_./]*"#ScopeWrite = "'demoapi/write'"#' $IdFileB2CSettings

fi

# Print out file for reference
cat $IdFileB2CSettings

echo "Finished B2CSettings!"

# Updating AppCenterSettings
echo "Init AppCenterSettings!"

IdFileAppCenterSettings=../../Constants/Settings/AppCenterSettings.cs

if [ "$ENVIRONMENT" == 'PROD' ];  then
	sed -i '' 's#ANDROID = "[-A-Za-z0-9:_./]*"#ANDROID = "'1b2b94f4-657b-44ec-b055-c60f7c65428c'"#' $IdFileAppCenterSettings
	sed -i '' 's#iOS = "[-A-Za-z0-9:_./]*"#iOS = "'71070789-786b-4b2a-9799-ac0443e58dda'"#' $IdFileAppCenterSettings

else
	sed -i '' 's#ANDROID = "[-A-Za-z0-9:_./]*"#ANDROID = "'cfd00461-508b-481e-b1b2-404da649ba88'"#' $IdFileAppCenterSettings
	sed -i '' 's#iOS = "[-A-Za-z0-9:_./]*"#iOS = "'66a5b1c7-238d-4283-b884-445d3326a615'"#' $IdFileAppCenterSettings

fi

# Print out file for reference
cat $IdFileAppCenterSettings

echo "Finished AppCenterSettings!"

echo "Rename google-services.json:"

if [ "$ENVIRONMENT" == 'PROD' ];  then

    echo "Processing Rename google-services.json:"
    
    mv -f ../DoctusApp.Android/google-services.json ../DoctusApp.Android/google-services-QA.json

    mv -f ../DoctusApp.Android/google-services-Production.json ../DoctusApp.Android/google-services.json

fi

for entry in ../DoctusApp.Android/*
do
  echo "$entry"
done

echo "Rename google-services.json!"