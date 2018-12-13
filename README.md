# 概要
オブジェクト指向のメリットを説明する為に用意したサンプルコード管理用リポジトリです。
オブジェクト指向の考え方を取り入れない場合、どれだけコードのメンテナンス性が下がるかをなるべく分かりやすく説明することを目的としたコードを格納しています。

# ディレクトリ構成
-not_use_object_orientationフォルダ  
  オブジェクト指向を取り入れず、完全に上から下へのコードの流れのみで実装した場合のコードを格納しています。
  
-use_object_orientationフォルダ  
  オブジェクト指向を取り入れて実装した場合のコードを格納しています。

# 想定シナリオ
電子財布管理プログラム開発を想定し、クライアントの機能要望追加に応じてエピソード単位でコードを分けています。

## episode1
機能要望：  
財布の残高管理と、お金の計算ができるプログラムを用意してほしい。

## episode2
機能要望：  
ポイント管理機能を追加してほしい。  
なおポイントの仕様としては、消費金額の20％が還元され、支払い時に1ポイント=1円で自動的に支払い額から割引が行われるものとする。

## episode3
機能要望：  
利用履歴閲覧機能を追加してほしい。  

# 確認点
episode1の時点では、まだコードを比較してもそこまで大差無いかもしれません。
ただ、episode3くらい色々な機能が載ってくると、「どこで何をしているか」というのが、徐々に探しづらくなってくることが分かると思います。
