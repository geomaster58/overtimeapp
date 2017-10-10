 post_text = ["Pig ham burgdoggen, flank ribeye salami jowl alcatra pork chop pancetta frankfurter chuck tenderloin tail prosciutto. Pig filet mignon pastrami picanha cupim. Beef ribs tail meatball doner, pork cow rump shankle swine filet mignon landjaeger brisket bresaola. Ground round cow short ribs alcatra pork short loin frankfurter leberkas. Shoulder doner venison prosciutto shank meatball chicken salami capicola kevin ham hock short loin ribeye pork chop. Filet mignon pig salami pork loin kielbasa alcatra. Landjaeger strip steak leberkas prosciutto, ham meatball ground round swine porchetta sausage turkey cow ball tip pork loin.", "I can't think of anything more rewarding than being able to express yourself to others through painting. I will take some magic white, and a little bit of Vandyke brown and a little touch of yellow. Take your time. Speed will come later. Let's have a happy little tree in here.

We'll take a little bit of Van Dyke Brown. That's why I paint - because I can create the kind of world I want - and I can make this world as happy as I want it. Let all these things just sort of happen. Only God can make a tree - but you can paint one.

And I know you're saying, 'Oh Bob, you've done it this time.' And you may be right. You don't have to be crazy to do this but it does help. We don't have anything but happy trees here. Each highlight must have it's own private shadow. That's a crooked tree. We'll send him to Washington.", "Prow scuttle parrel provost Sail ho shrouds spirits boom mizzenmast yardarm. Pinnace holystone mizzenmast quarter crow's nest nipperkin grog yardarm hempen halter furl. Swab barque interloper chantey doubloon starboard grog black jack gangway rutters.
Deadlights jack lad schooner scallywag dance the hempen jig carouser broadside cable strike colors. Bring a spring upon her cable holystone blow the man down spanker Shiver me timbers to go on account lookout wherry doubloon chase. Belay yo-ho-ho keelhaul squiffy black spot yardarm spyglass sheet transom heave to."]

 @user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow", phone: "3854397230")

puts "1 user created"

AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))
  
puts "3 AuditLogs created"

100.times do |post|

Post.create!(date: Date.today, rationale: "#{post+1} #{post_text.sample}", user_id: @user.id, overtime_request: 2.5)

end

puts "100 posts have been created"

admin = AdminUser.create(email: "admin@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "George", last_name: "Snow", phone: "3854397230")

