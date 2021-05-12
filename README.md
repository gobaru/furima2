# テーブル設計

## users テーブル

| Column             | Type   | Options                    |
| ------------------ | ------ | -------------------------- |
| nickname           | string | null: false                |
| encrypted_password | string | null: false                |
| email              | string | unique: true, null: false  |
| first_name         | string | null: false                |
| last_name          | string | null: false                |
| first_name_kana    | string | null: false                |
| last_name_kana     | string | null: false                |
| birthday           | date   | null: false                |

### Association
- has_many :items
- has_many :purchases


## items テーブル

| Column            | Type        | Options                        |
| ----------------- | ----------- | ------------------------------ |
| name              | string      | null: false                    |
| introduction      | text        | null: false                    |
| price             | integer     | null: false                    |
| user              | references  | null: false, foreign_key: true |
| category_id       | integer     | null: false                    |
| delivery_fee_id   | integer     | null: false                    |
| item_condition_id | integer     | null: false                    |
| prefecture_id     | integer     | null: false                    |
| shipping_day_id   | integer     | null: false                    |


### Association
- belongs_to :user
- has_one :purchase


## purchase テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| user       | references | null: false, foreign_key: true |
| item       | references | null: false, foreign_key: true |

### Association
- belongs_to :item
- belongs_to :user
- has_one :shipping_address


## shipping_address テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| postal_code    | string     | null: false                    | 
| prefecture_id  | integer    | null: false                    |
| municipalities | string     | null: false                    |
| address        | string     | null: false                    |
| building_name  | string     |                                |
| phone_num      | string     | null: false                    |
| purchase       | references | null: false, foreign_key: true |

### Association
- belongs_to :purchase
