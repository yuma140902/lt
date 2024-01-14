# LaTeX Templates

LaTeXのテンプレート集

## セットアップ方法

テンプレートは複数あり、ディレクトリによって分けられています。

[tiged](https://github.com/tiged/tiged)を使用して

```sh
tiged "yuma140902/lt/(ディレクトリ)"
```

のようにするとカレントディレクトリに複製できます。

| ディレクトリ               | エンジン    | ドライバ | 文書クラス             | 文献データベース |  説明 |
|----------------------------|-------------|----------|------------------------|------------------|------|
| `lua-cite`                 | LuaTex      | なし     | ltjsarticleまたはjlreq | Biber            | 推奨 |
| `lua-nocite`               | LuaTex      | なし     | ltjsarticleまたはjlreq | なし             | 推奨 |
| `docker-nocite`            | LuaTex      | なし     | ltjsarticleまたはjlreq | なし             | Dockerを用いてコンパイルするためTeX環境のセットアップが不要\\非推奨 |
| `up-cite`                  | upTeX       | dvipdfmx | jsarticle              | pBiBTeX          | |
| `up-nocite`                | upTeX       | dvipdfmx | jsarticle              | なし             | |
| `up-sample`                | upTeX       | dvipdfmx | jsarticle              | pBiBTeX          | サンプル付きです |

## 使用方法

すべてmakeを使います。使用方法は`make help`を実行してください。

## 動作環境

- LaTeXが動く環境
- make
- git
- LinuxまたはWindows (おそらくmacOSでも動作します)

## 動作環境のセットアップ方法

### LaTeX

TeX Liveのfull-schemeをインストールすれば十分です。

参考：[TeX入手法 - TeX Wiki](https://texwiki.texjp.org/?TeX入手法)

