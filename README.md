# 概要
- 基礎力確認テストとして、バグ修正をお願いします。
- 後述のテスト実行コマンドがエラーにならないように修正してください。

## 環境構築
```
$ git checkout -b fix_[自分のアカウント名]
$ rbenv local 2.7.4
$ bundle install
$ rails db:migrate
$ rails server
```

## テスト実行
```
$ rails test:system
```

※ ローカルでMiniTestのテストコードが成功する様な修正が確認できれば、この課題は完了となります。  
修正したコードのcommitやpushは不要です。  
