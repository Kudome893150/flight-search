# Flight-Search

## 概要
 flight-searchとは、日本発のフライトを航空会社問わずに表示できるサイトです。
 フライトを調べる際に各航空会社のサイトへと直接閲覧しなければならなかった作業が、
 このサイトにて検索することによってすぐに検索することができます。

## URL

## テスト用アカウント

## 利用方法

1. サイトに新規登録を行います。(既に登録済みのユーザーはログイン)

1. 複数の検索タグから条件を指定していただき、検索ボタンをクリックします。

1. クリック後、便名・航空会社名・フライト時間が表示されます。

## 目指した課題解決
このアプリケーションは、現在物流の現場で働いている方達の業務効率化に貢献する様に作成したアプリケーションです。
普段冊子を開き、該当のページを探す業務を短縮できる様にするものです。

## 要件定義

## 各機能の説明

## 今後実装予定の機能

## データーベース設計

### Departure テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| departure       | string | null: false |

#### Association

- has_many :schedules

### Schedule テーブル

| Column          | Type    | Options            |
| --------------- | ------- | ------------------ |
| country         | string  | null: false        |
| airline         | string  | null: false        |
| fltnum          | integer | null: false        |
| dptime          | time    | null: false        |
| artime          | time    | null: false        |
| day             | string  | null: false        |
| model           | string  | null: false        |
| departure       |         | foreign_key: true  |


#### Association

- belongs_to :departure

## ローカルでの動作方法

