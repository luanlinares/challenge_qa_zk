# frozen_string_literal: true

Before do
  visit 'https://zenklub.com.br/auth/login/'
  Capybara.page.driver.browser.manage.window.maximize
end

After do
  Capybara.current_session.driver.quit
end
