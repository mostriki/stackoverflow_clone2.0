FactoryBot.define do

  factory(:user) do
    user_name('charlie')
    email('a@b.com')
    password('password')
  end

  factory(:admin, class: User) do
    user_name('craig')
    email('c@d.com')
    password('password1')
    admin(true)
  end

  factory(:question) do
    user_id { FactoryBot.create(:admin).id }
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
