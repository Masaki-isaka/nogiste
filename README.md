# サービス名  

　[乃木ステ](https://www.nogiste.com/)  


# 概要
　乃木坂46のライブ写真投稿サービスです。過去に行ったライブの写真を投稿することでライブ未参加の人も楽しめるサービスです。  
アイドル好きが興じて作成しました。  

![乃木ステ](https://user-images.githubusercontent.com/68765478/125436849-9d0abd53-45d1-40e3-98d0-c8a196d91ae5.png)

# 使用技術
* Ruby 2.7.2  

* Ruby on Rails 6.0.4

* JQuery 3.6.0  

* Node.js 14.17.0  

* yarn 1.22.5    

* PostgreSQL 13.2  

* Puma  

* AWS(S3)  

* RSpec  

# 機能一覧  

* ユーザー登録、ログイン機能(devise)  
* 投稿機能  
    * 画像投稿  (fileuploadプラグイン)  

* 画像リサイズ機能(imgix)

* いいね機能

* ページネーション機能(kaminari)  

# 使い方  

※ライブ写真閲覧・投稿
* 「ライブ写真共有」→見たいライブの年をクリック→ライブ名をクリック→投稿する場合＋ボタンをクリック  
    * いいねはログインすれば誰でもできます。写真の削除は管理人と投稿者のみ行えます。

※登録ユーザーを閲覧
* 「ユーザー一覧」→ユーザー名をクリックするとユーザーの詳細を見ることができ、編集ボタンで編集を行うことが可能です。  
    * ユーザー情報編集はユーザー本人と管理人のみ行うことができます。　　

# テスト  

* RSpec  

    * モデルテスト(model)  

    * 結合テスト(request)  
