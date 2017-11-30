FactoryBot.define do

  factory(:user) do
    user_name('charlie')
    email('a@b.com')
    password('password')
  end

  factory(:question) do
    title('Title Test')
    body('This is a body!')
  end

  factory(:comment) do
    body('This is a body!')
  end

  factory(:response) do
    body('This is a body!')
  end
end
