class DevelopmentMailInterceptor

  def self.delivering_email(message)
    message.to = "email"
  end

end