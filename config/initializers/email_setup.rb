ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :user_name            => "marcosetaisacasamento@gmail.com",
  :password             => "xjapan2302",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = ENV['marcosetaisa.herokuapp.com']