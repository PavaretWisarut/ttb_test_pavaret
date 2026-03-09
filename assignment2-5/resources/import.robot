*** Settings ***
Library        SeleniumLibrary
Library        AppiumLibrary
Library        RequestsLibrary
Library        DebugLibrary
Library        JSONLibrary
Library        OperatingSystem
Library        Collections
Library        DateTime
Library        String

Resource       ${CURDIR}/../keywords/common/common_web.robot

# translation
Variables        ${CURDIR}/translations/${LANG}/th.yaml


Variables        ${CURDIR}/settings/setting.yaml
# Variables        ${CURDIR}/settings/device_${env}.yaml

#Feature
Resource        ${CURDIR}/../keywords/ui/features/${PLATFORM}/heroku_login_feature.robot

#Page
Resource        ${CURDIR}/../keywords/ui/pages/${PLATFORM}/heroku_login_page.robot

#locator
Resource        ${CURDIR}/locators/ui/${PLATFORM}/heroku_login_locator.robot

#api
Resource        ${CURDIR}/../keywords/api/user_profile_api.robot


