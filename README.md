## Resnet-Demo-docker

* tenserflowのdockerイメージをベースに、KerasとchainerのResNetを使って画像認識するWebアプリデモ
* WebアプリサーバーにはNode-REDを使って構築
* Keras、Chainerをノード内で実行する
* 画像はFlickrからRESET－APIを介して取得
* 認識結果は非同期でWebSocketを介してページ更新する
* 結果表示ではChartistを使用して円グラフ表示

動くようにするまでのセットアップに色々インストールする必要があり、手間がかかるので実行環境をdockerで構築できるようにしました。

### dockerイメージ作成
```
$ docker build -t resnet-demo .
```
必要なセットアップが自動実行されます。

### 実行
```
$ run.sh
```
1. http://実行したホスト名またはIPアドレス:1880/ へブラウザでアクセス
2. Node-REDダッシュボードが表示されます
3. 右上のメニューアイコン＞読み込み＞ライブラリ＞resnet-demo を選んで取り込み
4. デプロイしてアプリ起動
5. http://実行したホスト名またはIPアドレス:1880/flickr へブラウザでアクセス
6. consoleエリアにCONNECTと表示されれば成功

URLアトリビュートオプションの tagで画像の種類（デフォルトは'zoo'）、netで1=Keras, 2=Chainer の選択
この辺をUI化するのが大変なので直接記述する感じで
