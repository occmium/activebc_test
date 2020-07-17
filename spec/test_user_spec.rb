# frozen_string_literal: true

require 'rspec'
require 'faker'
require_relative '../lib/test_user.rb'

describe 'TestUser' do
  before do
    @test_user = TestUser.new(
      code: ENV['SMS_CODE'],
      phone: "3812#{rand(100_000..999_999)}",
      user_name: Faker::Name.name_with_middle
    )
  end

  it 'should register successfully' do
    expect(
      @test_user.sign_up
    ).to eq "Добро пожаловать! Вы успешно зарегистрировались.\nЗакрыть"
  end
end
