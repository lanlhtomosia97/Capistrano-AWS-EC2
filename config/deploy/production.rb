# server-based syntax
server "3.19.77.69", user: "ec2-user", roles: %w(web app db)

# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

# server "example.com", user: "deploy", roles: %w{app db web}, my_property: :my_value
# server "example.com", user: "deploy", roles: %w{app web}, other_property: :other_value
# server "db.example.com", user: "deploy", roles: %w{db}

set :stage, :production
set :rails_env, :production
set :branch, :master


# Custom SSH Options
# ==================
set :ssh_options, {
keys: %w(~/Downloads/cap_demo.pem),
# forward_agent: false,
  user: 'ec2-user',
  # bind_address: '13.59.20.125',
  auth_methods: %w(publickey),
  port:22
}
# role-based syntax
# ==================

# access server by "ssh -i ~/Downloads/cap_demo.pem ec2-user@<ipv4>"
# cài đặt môi trường
# tạo ssh key trên sv => add ssh key vào github
# sudo chmod 400 ~/Downloads/cap_demo.pem read only

# role :app, %w{deploy@example.com}, my_property: :my_value
# role :web, %w{user1@primary.com user2@additional.com}, other_property: :other_value
# role :db,  %w{deploy@example.com}
