FactoryBot.define do

  factory(:user) do
    user_name('charlie')
    email('a@b.com')
    password('password')
  end
end
