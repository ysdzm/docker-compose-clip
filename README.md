# docker-compose-clip

[OpenAI/CLIP](https://github.com/OpenAI/CLIP)のREADMEに記載された[サンプルコード](https://github.com/OpenAI/CLIP?tab=readme-ov-file#usage)を、Docker Composeを使用して実行するリポジトリです。

以下の画像とテキストリスト ["a diagram", "a dog", "a cat"] の類似度を計算します。

### 使用する画像

![](./animal_dance_cat.png)

- 出典：https://www.irasutoya.com/2013/04/blog-post_8197.html

## Usage

1. リポジトリをクローン
```bash
$ git clone https://github.com/ysdzm/docker-compose-clip.git
$ cd docker-compose-clip
```
2. Docker-composeで実行
```bash
$ docker-compose up
```

### 出力例
```bash

[+] Running 1/0
 ✔ Container docker-clip-clip-1  Created
Attaching to clip-1
clip-1  | Label probs: [[0.00311101 0.04015714 0.9567319 ]]
clip-1 exited with code 0
```

`[[0.00311101 0.04015714 0.9567319 ]]`という出力が得られ、３番目の要素（"a cat"）との類似度が0.95で一番高いことがわかります。
