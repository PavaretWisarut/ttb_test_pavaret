*** Variables ***
${add_todo_locator.lbl_title}    xpath=//bi[@resource-id="com.avjindersinghsekhon.minimaltodo:id/toDoCustomTextInput"]
${add_todo_locator.txt_input_title}    xpath=//bi[@resource-id="com.avjindersinghsekhon.minimaltodo:id/toDoCustomTextInput"]/android.widget.EditText
${add_todo_locator.btn_send}    xpath=//android.widget.ImageView[@resource-id="com.avjindersinghsekhon.minimaltodo:id/makeToDoFloatingActionButton"]
${add_todo_locator.icon_clock}    xpath=//android.widget.ImageButton[@resource-id="com.avjindersinghsekhon.minimaltodo:id/userToDoReminderIconImageButton"]
${add_todo_locator.lbl_remind_me}    xpath=//android.widget.TextView[@resource-id="com.avjindersinghsekhon.minimaltodo:id/userToDoRemindMeTextView"]
${add_todo_locator.btn_toggle}    xpath=//android.widget.Switch[@resource-id="com.avjindersinghsekhon.minimaltodo:id/toDoHasDateSwitchCompat"]
${add_todo_locator.lbl_datetime_field}    xpath=//android.widget.EditText[@resource-id="com.avjindersinghsekhon.minimaltodo:id/newTodoDateEditText"]
${add_todo_locator.lbl_add_symbol}    xpath=//android.widget.TextView[@text="${mobile_trans.home_page.lbl_add_symbol}"]
${add_todo_locator.lbl_time_field}    xpath=//android.widget.EditText[@resource-id="com.avjindersinghsekhon.minimaltodo:id/newTodoTimeEditText"]
${add_todo_locator.btn_ok_popup}    xpath=//android.widget.Button[@resource-id="com.avjindersinghsekhon.minimaltodo:id/ok"]
${add_todo_locator.lbl_selected_datetime}    xpath=//android.view.View[contains(@content-desc,"***string***")]
${add_todo_locator.lbl_verify_datetime}    xpath=//android.widget.EditText[@resource-id="com.avjindersinghsekhon.minimaltodo:id/newTodoDateEditText" and @text="***string***"]
