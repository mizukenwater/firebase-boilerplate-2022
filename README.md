## これは何？
Cloud FunctionsやFirebaseにまつわるその他諸々を管理するレポジトリです

## 何ができる？
基本はFirebase Cloud Functionsの開発ができます。
それに付随してAuthentication, CloudStorage, Cloud Firestoreのエミュレーションができます。

## 環境構築
ビルド & 起動
```shell
docker compose build && docker compose up -d
```

コンテナに入る
```shell
docker compose exec app sh
```

FirebaseCLIにログイン
```shell
firebase login --no-localhost
```

.firebasercを編集
```json
{
  "projects": {
    "default": "YOUR_PROJECT_ID"
  }
}
```