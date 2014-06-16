SMTP_SETTINGS = {
  address: ENV.fetch('foo'), # example: 'smtp.sendgrid.net'
  authentication: :plain,
  domain: ENV.fetch('SMTP_DOMAIN'), # example: 'this-app.com'
  enable_starttls_auto: true,
  password: ENV.fetch('SMTP_PASSWORD'),
  port: '587',
  user_name: ENV.fetch('SMTP_USERNAME')
}
