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
```
