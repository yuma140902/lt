# LaTeX Templates

LaTeXのテンプレート集

## セットアップ方法

テンプレートは複数あり、ディレクトリによって分けられています。

[tiged](https://github.com/tiged/tiged)を使用して

```sh
tiged "yuma140902/lt/(ディレクトリ)"
```

のようにするとカレントディレクトリに複製できます。

| ディレクトリ               | LaTeXエンジン | ドライバ | 文書クラス  | 文献データベース |  説明 |
|----------------------------|---------------|----------|-------------|------------------|------|
| `up-cite`                  | upLaTeX       | dvipdfmx | jsarticle   | pBiBTeX          | 普通はこれを使えばいいと思います |
| `up-nocite`                | upLaTeX       | dvipdfmx | jsarticle   | なし             | 普通はこれを使えばいいと思いますその2 |
| `up-sample`                | upLaTeX       | dvipdfmx | jsarticle   | pBiBTeX          | サンプル付きです |
| `up-bx-cite`               | upLaTeX       | dvipdfmx | bxjsarticle | pBiBTeX          | [BXjscls](https://texwiki.texjp.org/BXjscls)を使用してみるテスト |
| `up-bx-nocite`             | upLaTeX       | dvipdfmx | bxjsarticle | なし             | ↑の参考文献なしバージョン |
| `lua-bx-cite`              | luaLaTeX      | なし     | bxjsarticle | pBiBTeX          | LuaLaTeX |
| `lua-bx-nocite`            | luaLaTeX      | なし     | bxjsarticle | なし             | LuaLaTeX |


## 使用方法

すべてmakeを使います。

### PDFを作る

```sh
make
```

### タイプセットの中間ファイルを削除する

```sh
make clean
```

### PDFファイルも含む中間ファイルを削除する

```sh
make clean-all
```

## 動作環境

- TeX関係
  - 各エンジン(upLaTeX等)
  - 各ドライバ(dvipdfmx等)
  - pbibtex
  - 各パッケージ
- make
- git
- LinuxまたはWindows (おそらくmacOSでも動作します)

## 動作環境のセットアップ方法

### LaTeX

TeX Liveのfull-schemeをインストールすれば十分です。

参考：[TeX入手法 - TeX Wiki](https://texwiki.texjp.org/?TeX入手法)

