
```shell
svn export https://github.com/rodloboz/lw-fullstack/trunk/instadogs/stylesheets tmp
```

## User Stories

* As a user I can see the albums of an artist
* As a user I can add an album to an artist
* As a user I can delete an album

## Setup

Create the app

```shell
rails new airtunes --skip-active-storage -T
```

Ensure you have bootstrap

```bash
yarn add bootstrap
```

Ensure you have the following gems in your Rails `Gemfile`

```ruby
# Gemfile
gem 'autoprefixer-rails'
gem 'font-awesome-sass', '~> 5.6.1'
gem 'simple_form'
```

In your terminal, generate SimpleForm Bootstrap config.

```bash
bundle install
rails generate simple_form:install --bootstrap
```

Then replace Rails' stylesheets by Le Wagon's stylesheets:

```
rm -rf app/assets/stylesheets
curl -L https://github.com/lewagon/stylesheets/archive/master.zip > stylesheets.zip
unzip stylesheets.zip -d app/assets && rm stylesheets.zip && mv app/assets/rails-stylesheets-master app/assets/stylesheets
svn export https://github.com/rodloboz/lw-fullstack.git/trunk/airtunes/stylesheets app/assets/stylesheets/components --force
```

And the viewport in the layout

```html
<!-- app/views/layouts/application.html.erb -->
<head>
  <!-- Add these line for detecting device width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <!-- [...] -->
</head>
```

## Navbar template

Our `layouts/_navbar.scss` code works well with our home-made ERB template which you can find here:

- [version without login](https://github.com/lewagon/awesome-navbars/blob/master/templates/_navbar_wagon_without_login.html.erb)
- [version with login](https://github.com/lewagon/awesome-navbars/blob/master/templates/_navbar_wagon.html.erb)
