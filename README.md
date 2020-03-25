# README

This README would normally document whatever steps are necessary to get the
application up and running.

# chat-space db

## users
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique: true, add_index:users, :email|
|password|string|null: false|
### Association
- has_many :messages
- has_many :groups

## groupテーブル
|Column|Type|Options|
|------|----|-------|
|groupname|strimgs|null: false|
|user_id|integer|null: false, foreign_key: true|
|message|text|null: false, foreign_key: true|
### Association
- has_many :users
- has_many :messages

## messageテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|time|time|null: false|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## user_groupテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

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
