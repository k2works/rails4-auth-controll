# Rails4での認証と権限管理

以下のユースケースを実装する

## ユースケース

+ 管理ユーザ
    + システム管理ユーザ
    + 業務管理ユーザ
+ 一般ユーザ
    + システム一般ユーザ
    + 業務一般ユーザ
    + ゲストユーザ

|        |            |                    | 機能                     |                      |                  |                  |                    |
|--------|------------|--------------------|--------------------------|----------------------|------------------|------------------|--------------------|
|        |            |                    | マスタメンテ（システム）     | マスタメンテ（業務）    | 管理ユーザ用機能   | 一般ユーザ用機能   | ゲストユーザ用機能   |
| ユーザ  | 管理ユーザ  | システム管理ユーザ    |          C,R,U,D         |        C,R,U,D       |      C,R,U,D     |      C,R,U,D     |       C,R,U,D      |
|        |            | 業務管理ユーザ       |             -            |        C,R,U,D       |      C,R,U,D     |      C,R,U,D     |       C,R,U,D      |
|        | 一般ユーザ  | システム一般ユーザ    |         C,R,U,D          |           R          |         R        |      C,R,U,D     |       C,R,U,D      |
|        |            | 業務一般ユーザ       |             -            |           R          |         R        |      C,R,U,D     |       C,R,U,D      |
|        |            | ゲストユーザ         |             -            |           -          |         -        |         -        |       C,R,U,D      |

+ C:Create
+ R:Read
+ U:Update
+ D:Delete

## 仕様

+ deviseで認証する
+ cancancanでロール毎のパーミッションを割り当てる
+ rails_adminをdeviseとcancancanでadminユーザのみに使わせる

## 実装

### Gemfile

### deviseの設定

### cancanの設定

### rails_adminの設定

### ロール別権限の設定

## 参照

+ [devise](https://github.com/plataformatec/devise)
+ [cancan](https://github.com/ryanb/cancan)
+ [rails_admin](https://github.com/sferik/rails_admin)
+ [Rails4 + devise + cancancan + rails_adminが最強すぎ](http://d.hatena.ne.jp/htz/20140718/1405690417)
+ [Devise/cancancanを使ってログイン機能を実装する](http://morizyun.github.io/blog/devise-cancan-rails-authorize/)




