# What I have done

2019/12/15

```shell script
$ git init
$ git commit --allow-empty

$ mkdir documents

$ rbenv local 2.6.5

$ rails new . -d postgresql --skip-test --skip-bundle
# -d postgresql: データベースにPostgreSQLを使用する
# --skip-test: Minitestのためのファイルやディレクトリを作成しない
# --skip-bundle: このタイミングではまだbundle installを実行させない

$ git submodule add https://github.com/ha4gu/docker-rails-commons submodules/commons
$ rsync -av submodules/commons/. ./. --exclude ".git"

$ bundle install
$ bundle update

$ yarn upgrade

$ bundle exec rails db:create db:migrate
```

Top

```shell script
$ bundle exec rails g controller Top index
      create  app/controllers/top_controller.rb
       route  get 'top/index'
      invoke  erb
      create    app/views/top
      create    app/views/top/index.html.erb
      invoke  helper
      create    app/helpers/top_helper.rb
      invoke  assets
      invoke    scss
      create      app/assets/stylesheets/top.scss
```

Project

```shell script
$ bundle exec rails g migration EnablePgcryptoExtensionForUuid
      invoke  active_record
      create    db/migrate/20191215120650_enable_pgcrypto_extension_for_uuid.rb
$ bundle exec rails g model Project name:string description:text
      invoke  active_record
      create    db/migrate/20191215121705_create_projects.rb
      create    app/models/project.rb
```
