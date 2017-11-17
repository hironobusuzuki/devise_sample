```
$ rbenv local 2.4.1
$ rbenv exec bundle init
$ vi Gemfile
gem "rails"
$ rbenv exec bundle install --path vendor/bundle
$ mv Gemfile Gemfile.bk
$ mv Gemfile.lock Gemfile.lock.bk
$ rbenv exec bundle exec rails new --skip-bundle devise_sample
$ cd devise_sample
$ rbenv exec bundle install --path vendor/bundle
$ rbenv exec bundle exec rails generate devise:install
$ rbenv exec bundle exec rails g  scaffold Client name:string
$ rbenv exec bundle exec rails generate devise Client
$ vi  config/environments/development.rb
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
$ vi config/routes.rb
root to: "clients#index"
devise_for :clients, path: :users
$ vi app/views/layouts/application.html.erb
       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>
$ rbenv exec bundle exec  rails g devise:views
$ rbenv exec bundle exec rails db:create
$ rbenv exec bundle exec rails db:migrate
$ rbenv exec bundle exec rails s

Read this if you customize devise routing
http://www.rubydoc.info/github/plataformatec/devise/master/ActionDispatch/Routing/Mapper%3Adevise_for


https://qiita.com/kawasakiatsushi/items/8209a979d86ab3468799
http://pb-times.jp/P_56e63ff76a0d2
$ rbenv exec bundle exec rails generate devise Admin
$ rbenv exec bundle exec rake db:migrate
$ rbenv exec bundle exec rails g devise:controllers admins
$ rbenv exec bundle exec rails g devise:views admins

TODO: clientとadminの操作を同一brwserで行うとエラーが起きる点を起きないようにする
Started DELETE "/users/sign_out" for 127.0.0.1 at 2017-11-17 13:56:44 +0900
Processing by Devise::SessionsController#destroy as HTML
  Parameters: {"authenticity_token"=>"rDrRZumHoUNlSOf61LO+g7SGysUN/at/H7Ak0QUPYqKK+08FBhj/EVvxd+D4RJPrBy449V8gL1WesL8vBRdLDA=="}
Completed 500 Internal Server Error in 1ms (ActiveRecord: 0.0ms)


  
ArgumentError (wrong number of arguments (given 4, expected 2)):
  
vendor/bundle/ruby/2.4.0/gems/devise-4.3.0/lib/devise/models/authenticatable.rb:228:in `serialize_from_session'
vendor/bundle/ruby/2.4.0/gems/devise-4.3.0/lib/devise.rb:478:in `block (2 levels) in configure_warden!'
```
