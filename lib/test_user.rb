# frozen_string_literal: true

require 'pry'
require 'watir'
require 'dotenv/load'

class TestUser
  TARGET_URL = 'https://house-dev.activebc.ru'

  def initialize(phone:, user_name:, code:)
    @phone = phone
    @user_name = user_name
    @email = "#{phone}@example.com"
    @code = code
    @browser = Watir::Browser.new :firefox
  end

  def sign_up
    go_to(TARGET_URL, 'Вход / Регистрация')
    set_text_field('auth_phone_form_phone', @phone)
    press_button('Продолжить')
    set_text_field('auth_code_form_name', @user_name)
    set_text_field('auth_code_form_email', @email)
    set_text_field('auth_code_form_code', @code)
    accept('auth_code_form_agreement')
    press_button('Продолжить')
    check_content(['flash', 'flash--notice'])
  end

  def sign_out
    @browser.goto "#{TARGET_URL}/users/sign_out"
    check_content('header-landing__login')
  end

  def sign_in
    go_to(TARGET_URL, 'Вход / Регистрация')
    set_text_field('auth_phone_form_phone', @phone)
    press_button('Продолжить')
    set_text_field('auth_code_form_code', @code)
    press_button('Продолжить')
    check_content(['flash', 'flash--notice'])
  end

  def destroy
    # TODO: (To remove the credentials from the test database.)
  end

  private

  def go_to(target_url, text_link)
    @browser.goto target_url
    @browser.link(text: text_link).click
  end

  def press_button(value)
    button = @browser.button value: value
    button.exists?
    button.click
  end

  def set_text_field(field, value)
    text_field = @browser.text_field id: field
    text_field.exists?
    text_field.set value
  end

  def accept(field)
    checkbox = @browser.checkbox id: field
    checkbox.exists?
    checkbox.set
  end

  def check_content(checked_content)
    @browser.div(class: checked_content).text
  end
end
