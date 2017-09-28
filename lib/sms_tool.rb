module SmsTool
  def self.send_sms(number:, message:)
    puts "Sending Message...."
    puts "#{message} to #{number}"
  end
end