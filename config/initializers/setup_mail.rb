# config/initializers/setup_mail.rb
ActionMailer::Base.smtp_settings = {
    address:              "smtp.gmail.com",
    port:                 587,
    domain:               "gmail.com",
    user_name:            "flavio.avila.silva@gmail.com",
    password:             "120986fl@v!o",
    authentication:       :plain,
    enable_starttls_auto: true
}

ActionMailer::Base.default_url_options[:host] = "localhost:3000"
ActionMailer::Base.raise_delivery_errors = true