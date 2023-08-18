puts "Creating admin..."
User.create(email: "admin@admin.com", password: "adminpassword", name: "Admin", role: "admin")

puts "Creating user..."
User.create(email: "user@user.com", password: "userpassword", name: "User", role: "user")

puts "Creating job positions..."
position_amount = 10
position_amount.times do
    Position.create(
        title: Faker::Job.title,
        info: Faker::Lorem.paragraphs(number: 10).join(' ')
    )
end
