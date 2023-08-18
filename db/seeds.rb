puts "Creating admin..."
User.create(email: "admin@admin.com", password: "adminpassword", name: "Admin", role: "admin")

puts "Creating user..."
User.create(email: "user@user.com", password: "userpassword", name: "User", role: "user")
