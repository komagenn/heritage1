# README

## userテーブル

|Column                |Type       |Options    |
|------ ---------------|-----------|-----------|
|full_width_first_name |string     |null: false|
|full_width_last_name  |string     |null: false|
|first_name_kana       |string     |null: false|
|last_name_kana        |string     |null: false|
|encrypted_password    |string     |null: false|

## heritageテーブル


## favariteテーブル

|Column                |Type       |Options    |
|------ ---------------|-----------|-----------|
| 後で変えなあかん　　　　　|string     |null: false|
|user                  |references      |null: false|


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
