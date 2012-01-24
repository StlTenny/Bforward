ActionMailer::Base.smtp_settings = {
  :address                    => "smtp.gmail.com",
  :port                       => "587",
  :domain                     => "bforwardtest@gmail.com",
  :user_name                  => "bforwardtest@gmail.com",
  :password                   => "bftesting",
  :authentication             => "plain",
  :enable_starttls_auto       => true
}

# ActionMailer::Base.smtp_settings = {
  # :address                    => "email-smtp.us-east-1.amazonaws.com",
  # :port                       => "465",
  # :domain                     => "mail@blindforward.com",
  # :user_name                  => "AKIAJRKUE73VTMKWVTNA",
  # :password                   => "Ag4NDbBPfU7holLW+K5u7BwDBqih0jGjqXChb6Qgw3hL",
  # :authentication             => "plain",
  # :enable_starttls_auto       => true
# }