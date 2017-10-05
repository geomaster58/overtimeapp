 post_text = ["", "", ""]

 @user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow", phone: "3854397230")

puts "1 user created"

100.times do |post|

Post.create!(date: Date.today, rationale: "#{post+1} #{post_text.sample}", user_id: @user.id, overtime_request: 2.5)

end

puts "100 posts have been created"

admin = AdminUser.create(email: "admin@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "George", last_name: "Snow", phone: "3854397230")

100.times do |audit_log|
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 audit logs have been created"