herokuへのデプロイが行えなかった理由一覧

# master.keyがなかった。
## maseter.keyの作り方
https://qiita.com/naokit-dev/items/5e09b2fb4b64a29712e4
## master.keyの設定の仕方
https://yukitoku-sw.hatenablog.com/entry/2020/02/04/145331
または、herokuのアプリのsettingsのRAILS_MASTER_KEYの部分にmaster.keyを入力する。
master.keyが表示できない場合はcatコマンドで内容を表示してその内容を入力する

# migrationファイルの整合性が取れていない。
heroku上ではmigrationファイルを１から順に読み込んでいくため、migrationファイルの内容に整合性が取れていないとエラーが起きてしまう。