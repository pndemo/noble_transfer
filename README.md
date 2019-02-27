# Noble Transfer
A simple web based file transfer application. It's simple and fun to use!!!

## Install

### Clone the repository

```shell
https://github.com/pndemo/noble_transfer.git
cd noble_transfer
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.5.0`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 2.5.0
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler):

```shell
bundle install
```

### Initialize the database

```shell
rails db:create db:migrate
```

### Serve

```shell
rails s
```

## Demo API
The demo API of the Converse Next app has been hosted on Heroku and can be used to test functionalities for signing up, logging in, uploading and downloading files. To use the demo API, please visit https://noble-transfer.herokuapp.com.

## Licensing
This app is licensed under the MIT license.
