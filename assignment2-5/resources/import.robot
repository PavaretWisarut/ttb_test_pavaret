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
Resource       ${CURDIR}/../keywords/common/common_mobile.robot

# translation
Variables        ${CURDIR}/translations/${LANG}/th.yaml


Variables        ${CURDIR}/settings/setting.yaml
Variables        ${CURDIR}/settings/config.yaml

#Feature
#Web
Resource        ${CURDIR}/../keywords/ui/features/web/heroku_login_feature.robot

#Mobile
Resource        ${CURDIR}/../keywords/ui/features/mobile/home_feature.robot
Resource        ${CURDIR}/../keywords/ui/features/mobile/add_todo_feature.robot

#Page
#Web
Resource        ${CURDIR}/../keywords/ui/pages/web/heroku_login_page.robot

#Mobile
Resource        ${CURDIR}/../keywords/ui/pages/mobile/home_page.robot
Resource        ${CURDIR}/../keywords/ui/pages/mobile/add_todo_page.robot

#locator
#Web
Resource        ${CURDIR}/locators/ui/web/heroku_login_locator.robot

#Mobile
Resource        ${CURDIR}/locators/ui/mobile/home_locator.robot
Resource        ${CURDIR}/locators/ui/mobile/add_todo_locator.robot

#api
Resource        ${CURDIR}/../keywords/api/user_profile_api.robot


