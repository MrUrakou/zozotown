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
|gender|string|null: false|
|birthday|integer|null: false|
|email|string|null: false|
|postal_code|integer|null: false|
|point|integer|


### Associateion

- has_many: delivery_addresses
- has_many: porducts, through: :product_user



## delivery_addresses table

|type|string|null: false|
|name|string|null: false|
|address1|string|null: false|
|address2|string|null: false|
|postal_code|integer|null: false|
|phone_number|integer|null: false|


### Association

- has_many: users
- belongs_to: payment
- belongs_to: shopping_cart
- belongs_to: payment



## products table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|explanation|text|null: false|
|gender|string|null: false|
|shop|string|null: false|
|category|string|null: false|
|image|string|null: false|
|price|integer|null: false|
|size|string|null: false|
|material|string|null: false|
|contact_number|integer|null: false|
|brand|string|null: false|
|color|string|null: false|


### Association

- has_many: users, through: :product_users
- has_many: shopping_carts



## product_users table

|Column|Type|Options|
|------|----|-------|
|user_id|integer|
|product_id|integer|


### Associacion

belongs_to: user
belongs_to: product



## shopping_carts table

|Column|Type|Options|
|------|----|-------|
|quantity|integer|null: false|
|user_id|integer|null: false|
|payment_id|integer|
|price_sum|integer|null: false|
|shipping_cost|integer|
|payment_fee|integer|


### Association

- belongs_to: user
- belongs_to: payment
- has_many: products



## payments

|Column|Type|Options|
|------|----|-------|
|user_id|integer|
|shopping_cart_id|integer|
|delivery_address_id|integer|null: false|
|delivery_date|integer|null: false|
|payment_method|string|null: false|


### Association

- has_one: delivery_address
- belongs_to: shopping_cart
- belongs_to: user
