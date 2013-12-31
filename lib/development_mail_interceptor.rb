class DevelopmentMailInterceptor

  def self.delivering_email(message)
    message.to = "elofjohnson@gmail.com"
  end

end