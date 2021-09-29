FactoryBot.define do
  factory :user do
    nick_name              {'オムライス'}
    email                 {'test@test'}
    password              {'05onigiri'}
    password_confirmation {password}
  end
end
