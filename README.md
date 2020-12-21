## 製品名
カフェワーク

## サービス概要
仕事、勉強に適したカフェを探したい人に向けた
カフェ情報を共有できるサービスです

## 対象ユーザー
ノマドワーカー、高校生〜大学生

## ユーザーが抱える課題
大都市では、wifiや電源を備えているカフェが多いが、場所によってはそのようなカフェが少ない。また常時混雑していたり、店舗が狭く密になりがちであるなど、現在の状況では利用しづらい店舗があるが公式サイトからでは確認しづらい。

## 解決方法
電源、wifiの有無、密度などを含めたカフェ情報を共有することにより、勉強に適したカフェをスムーズに選ぶことができるようにする。

## バージョン情報（予定含む）
- Ruby 2.6.6
- Ruby on Rails 6.0.3.4
- PostgreSQL
- Nginx(Webサーバ)
- unicorn(アプリケーションサーバ)
- AWS(EC2,S3)
- RSpec(自動テスト)
- JavaScript
- HTML/CSS
- Bootstrap4
- Vue.js

## 機能一覧
システムを構成する機能
1. 画像ファイルをアップロードする機能
2. 閲覧した投稿のお気に入り機能
3. 投稿内容ソート機能
4. アップロードしたファイルのタグづけ機能
5. ユーザ登録/ログイン機能
6. ゲストログイン機能
7. ユーザ情報閲覧機能
8. 管理者機能
9. プロフィール編集機能
10. 投稿検索機能
11. 投稿タグ付機能
12. 投稿ファイルタグ検索機能
13. googlemaps連携機能

## ER図
<img width="798" alt="スクリーンショット 2020-12-21 14 44 12" src="https://user-images.githubusercontent.com/64455800/102745592-b3c7aa00-439f-11eb-8752-dab58f3cf664.png">

## 使用Gem（予定）
- font-awesome-rails
- geocoder
- unicorn
- rails_admin
- kaminari
- fog-aws
- devise
- devise_i18n
- rspec-rails
- capybara
- ransack
- decorator
- rubocop
