
group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
  gem "capistrano"
  gem "capistrano-rails" , require: false
  gem "capistrano-bundler" , require: false
  gem "capistrano-rvm"
  gem "capistrano3-puma"


end

bundle 

cap install STAGES=poduction
