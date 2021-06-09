# Daily Smarty :books:

DailySmarty is a knowledge blog that will allow users to post about things they learn on a daily basis.


## Configuration database and Installing dependencies

- Apply database configuration in the **database.yml** file

```
default: &default
  adapter: postgresql
  encoding: unicode
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  host: localhost
  user: username
  password: password
```

### next steps

-
```
bundle install
```
-
```
rails db:create
```
-
```
rails db:migrate
```
-
```
bundle exec rspec
```
-
```
rails s
```


## Stack
 - Ruby 2.7.1
 - Rails 6.0.3.3
 - Postgres

## Authors

- [brandaoplaster](https://github.com/brandaoplaster)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
