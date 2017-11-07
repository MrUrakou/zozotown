# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

DB設計

## users table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|kana_name|string|null: false|
|postal_code|integer|null: false|
|address1|string|null: false|
|address2|string|null: false|
|phone|integer|null: false|

|gender|string|null: false|
|birthday|integer|null: false|
|postal_code|integer|null: false|
|point|integer|


### Associateion

- has_many :delivery_addresses
- has_many :porducts, through: :product_user



## products table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|category|string|null: false|
|price|integer|null: false|
|count|integer|null: false|
|description|text|null: false|
|image|string|null: false|
|product_code|integer|null: false|


### Association

- has_many :users, through: :product_users
- has_many :carts, through: :cart_products



## carts table

|Column|Type|Options|
|------|----|-------|
|user_id|integer|
|product_id|integer|


### Associacion

belongs_to :user
belongs_to :product


