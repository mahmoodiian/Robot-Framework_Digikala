*** Variables ***
# Header
${search_input}  xpath://input[@class="js-search-input"]
${categories_button}  xpath://span[@data-cro-id="header-main-menu"]
${login_button}  Partial Link:ورود
${account_button}  xpath://div[contains(@class, "profileButton")]
${cart_button}  xpath://a[@data-cro-id="header-cart"]
${cart_button_popup}  xpath://*[contains(@class, "BaseLayoutMiniCart__popup")]

# Sidebar
${filters_section}  xpath://div[contains(@class, "FilterList")]

# Main
${sort_buttons}                xpath://div[contains(@class, "SortAndStatsHeader")]
${add_to_cart}                 xpath://div[text()="افزودن به سبد"]//ancestor::button
${products_section}            xpath://section[1]/div[2]/div/div
${let_me_know_button}          xpath://button[@data-cro-id="pdp-not-found-cta"]
${let_me_know_popup}           xpath://div[@role="dialog"]
${let_me_know_digikala}        ${let_me_know_popup}//form//*[text()="سیستم پیام شخصی دیجی‌کالا"]
${let_me_know_submit}          ${let_me_know_popup}//button
${check_box_personal_message}  xpath://div[contains(@class,"Content--after-open")]//p[text()="سیستم پیام شخصی دیجی‌کالا"]
${submit_notification}         xpath://div[contains(@class,"Content--after-open")]//div[text()="ثبت"]
${next_page}                   xpath://span[text()="بعدی"]
${last_product}                xpath://section[1]/div[2]/div/div/div[last()]

# Login
${username_input}  xpath://input[@name="username"]
${password_input}  xpath://input[@name="password"]
${submit}          xpath://button[@type="submit"]

# Categories
${main_categories}  xpath://div[contains(@class, "mainCategoriesSection")]
${sub_categories}   xpath://ul[contains(@class, "categoriesContainer")]

# Cart
${main_cart}  xpath://*[@class="overflow-hidden"]
${continue_shopping}      xpath://div[contains(@class, "CheckoutGrid")]//*[text()="ادامه"]
