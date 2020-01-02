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

RSpec（とりあえず現時点ではmodel specが動くところまで。）

```shell script
$ bundle exec rails g rspec:install
      create  .rspec
      create  spec
      create  spec/spec_helper.rb
      create  spec/rails_helper.rb
$ bundle exec rails g rspec:model project
      create  spec/models/project_spec.rb
```

Annotate

```shell script
$ bundle exec rails g annotate:install
      create  lib/tasks/auto_annotate_models.rake
$ bundle exec rake annotate_models
Annotated (2): app/models/project.rb, spec/models/project_spec.rb
$ bundle exec rake annotate_routes
config/routes.rb annotated.
```

RailsAdmin

```shell script
$ bundle exec rails g rails_admin:install
           ?  Where do you want to mount rails_admin? Press <enter> for [admin] >
       route  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
      create  config/initializers/rails_admin.rb
```

Task

```shell script
$ bundle exec rails g model Task project:references title:string detail:text deadline_at:datetime status:integer priority:integer position:integer
      invoke  active_record
      create    db/migrate/20191219132352_create_tasks.rb
      create    app/models/task.rb
      invoke    rspec
      create      spec/models/task_spec.rb
      invoke      factory_bot
      create        spec/factories/tasks.rb
```
