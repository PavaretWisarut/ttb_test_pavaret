*** Variables ***
${home_locator.lbl_header}    xpath=//android.widget.TextView[@text="${mobile_trans.home_page.lbl_header}"]
${home_locator.icon_kebab}    xpath=//android.widget.ImageView[@content-desc="${mobile_trans.home_page.lbl_icon_kebab}"]
${home_locator.btn_add}    xpath=//android.widget.ImageView[@resource-id="com.avjindersinghsekhon.minimaltodo:id/addToDoItemFAB"]
${home_locator.lbl_todo_title}    xpath=//android.widget.TextView[@text="***string***"]/parent::android.widget.RelativeLayout/preceding-sibling::android.widget.ImageView
${home_locator.lbl_todo_date_time}    xpath=//android.widget.TextView[@text="***todo_title***"]/following-sibling::android.widget.TextView[contains(@text,"***date***")]
${home_locator.lbl_setting}    xpath=//android.widget.TextView[@text="${mobile_trans.home_page.lbl_setting}"]
${home_locator.lbl_about}    xpath=//android.widget.TextView[@text="${mobile_trans.home_page.lbl_about}"]
${home_locator.lbl_nightmode_title}    xpath=//android.widget.TextView[@resource-id="android:id/title"]
${home_locator.lbl_nightmode_desc}    xpath=//android.widget.TextView[@resource-id="android:id/summary"]
${home_locator.btn_back}    xpath=//android.widget.ImageButton
${home_locator.icon_about}    xpath=//android.widget.ImageView[@resource-id="com.avjindersinghsekhon.minimaltodo:id/aboutImageView"]
${home_locator.lbl_about_title}    xpath=//android.widget.ImageView/following-sibling::android.widget.TextView[@text="${mobile_trans.home_page.lbl_about_title}"]
${home_locator.lbl_about_made_by}    xpath=//android.widget.TextView[@text="${mobile_trans.home_page.lbl_about_made_by}"]
${home_locator.lbl_about_contact_me}    xpath=//android.widget.TextView[@text="${mobile_trans.home_page.lbl_about_contact_me}"]
${home_locator.lbl_about_email}    xpath=//android.widget.TextView[@resource-id="com.avjindersinghsekhon.minimaltodo:id/aboutContactMe"]
