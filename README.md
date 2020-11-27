# アプリケーション名
- STYLEBOOK
# アプリケーション概要
- ヘアースタイルの投稿・閲覧とそれができるショップが投稿・閲覧できる
# URL
- 
# テスト用アカウント
- ponnge@gmail.com
- 88888q

- senda_masa@hotmail.com
- 88888q
# 利用方法
- 自分のヘアスタイルを投稿し、それができる店を紹介する
- ヘアスタイルを閲覧し、それができる店を探す
# 目指した課題解決
- 現在コンビニの5倍の25万店舗が全国にある中でお店選びに迷うとき、好みのヘアスタイルを見てからそれができるお店を探すというきっかけを作りたかった
# 洗い出した要件
- ユーザー管理機能
- ヘアスタイル投稿機能
- ヘアスタイル一覧表機能
- ショップ登録機能
- ヘアスタイル編集機能
- ショップ編集機能
- ヘアスタイル削除機能
- ショップ削除機能
- SNS認証
- admin管理機能
- ヘアスタイル検索機能
# 実装した機能
- ユーザー管理機能
- ヘアスタイル投稿機能
- ヘアスタイル一覧表機能
- ショップ登録機能
- ヘアスタイル編集機能
- ショップ編集機能
- ヘアスタイル削除機能
- ショップ削除機能
# 実装予定の機能
- SNS認証
- admin管理機能
- ヘアスタイル検索機能
# データベース設計
- 
# ローカルでの操作方法
- Ruby 6.0.0


# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| last_name          | string | null: false |
| first_name         | string | null: false |
| birth_date         | date   | null: false |
| referral_code      | string | null: false |

### Association

- has_many :hair_styles
- has_one :shop


## hair_styles テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| gender_id      | integer    | null: false                    |
| hair_length_id | integer    | null: false                    |
| hair_parm_id   | integer    | null: false                    |
| hair_color_id  | integer    | null: false                    |
| user           | references | null: false, foreign_key: true |
| shop           | references | foreign_key: true              |

### Association

- belongs_to :user
- belongs_to :shop



## shops テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| postal_code   | string     | null: false                    |
| prefecture_id | integer    | null: false                    |
| city          | string     | null: false                    |
| addresses     | string     | null: false                    |
| buillding     | string     |                                |
| phone_number  | string     | null: false                    |
| user          | references | null: false, foreign_key: true |
| hair_style    | references | foreign_key: true              |

### Association

- has_many :hair_styles
- belongs_to :user
