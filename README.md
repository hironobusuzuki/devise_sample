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
```
