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
# 目的
・一つのフォームで複数テーブル（postsテーブル、imagesテーブル）にデータを保存
・画像の複数投稿
・複数ある画像ファイルの個別編集

# 作成手順
## carrierwaveの導入（詳細は割愛）

## 投稿フォームの作成
1.ネストフォーム用のアソシエーション設定
＜post.rb＞
accepts_nested_attributes_for :images

2.ストロングパラメータ（post_params）にimagesテーブルの情報を追加
＜post_controller.rb＞
images_attributes:[:image, :id]

3.複数テーブルの情報を投稿するためのビューの作成
＜_form.htm.haml＞
form_with + fields_for

4.投稿できる画像の個数（file_fieldの表示数）を設定
＜post_controller.rb＞
5.times {@post.images.build}

## 画像を編集するためのhidden_field作成
＜_form.htm.haml＞
= i.hidden_field :id, value: i.object.id

## cssやjs（プレビュー表示）での装飾（詳細は割愛）