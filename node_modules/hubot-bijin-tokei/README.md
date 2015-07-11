# hubot-bijin-tokei

Hubot responds current time [bijin-tokei](http://www.bijint.com) URL.

[美人時計](http://www.bijint.com)の現在時刻の画像のURLを取得する。

See [`src/bijin-tokei.coffee`](src/bijin-tokei.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install succi0303/hubot-bijin-tokei --save`

Then add **hubot-bijin-tokei** to your `external-scripts.json`:

```json
[
  "hubot-bijin-tokei"
]
```

## Sample Interaction

```
user1>> hubot bijin now
hubot>> 現在の時刻は15時46分です。[全国版]
        http://www.bijint.com/assets/pict/jp/pc/1546.jpg

user1>> hubot bijin now tokyo
hubot>> 現在の時刻は15時48分です。[地域版: tokyo]
        http://www.bijint.com/assets/pict/tokyo/pc/1548.jpg

user1>> 美人なう
hubot>> 現在の時刻は15時49分です。[全国版]
        http://www.bijint.com/assets/pict/jp/pc/1549.jpg

user1>> 美人なう、東京
hubot>> 現在の時刻は15時51分です。[地域版: tokyo]
        http://www.bijint.com/assets/pict/tokyo/pc/1551.jpg
```
