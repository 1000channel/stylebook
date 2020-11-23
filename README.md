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
| shop           | references | null: false, foreign_key: true |

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
| hair_style    | references | null: false, foreign_key: true |

### Association

- has_many :hair_styles
- belongs_to :user
