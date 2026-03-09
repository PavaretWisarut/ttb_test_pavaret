*** Settings ***
Library        SeleniumLibrary
Library        AppiumLibrary
Library        RequestsLibrary
Library        JSONLibrary
Library        OperatingSystem
Library        Collections
Library        DateTime
Library        String

# Resource       ${CURDIR}/../keywords/common/common_app.robot

# translation
Variables        ${CURDIR}/translation/th.yaml


Variables        ${CURDIR}/settings/setting.yaml
# Variables        ${CURDIR}/settings/device_${env}.yaml

# test data
Variables        ${CURDIR}/testdata/test_data.yaml


# Resource        ${CURDIR}/../keywords/ui/features/app_minimal/ttb_features.robot

# Resource        ${CURDIR}/../keywords/ui/locator/app_minimal/ttb_locator.robot

# Resource        ${CURDIR}/../keywords/ui/pages/app_minimal/ttb_page.robot