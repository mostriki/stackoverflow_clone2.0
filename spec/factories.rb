FactoryBot.define do

  factory(:user) do
    user_name('charlie')
    email('a@b.com')
    password('password')
    admin(true)
  end

  factory(:question) do
    title('Title Test')
    body('This is a body!')
    user_id(1)
  end

  factory(:comment) do
    body('This is a body!')
  end

  factory(:response) do
    body('This is a body!')
  end
end
