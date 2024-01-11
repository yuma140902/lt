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
| `up-cite`                  | upLaTeX       | dvipdfmx | jsarticle   | pBiBTeX          | |
| `up-nocite`                | upLaTeX       | dvipdfmx | jsarticle   | なし             | |
| `up-sample`                | upLaTeX       | dvipdfmx | jsarticle   | pBiBTeX          | サンプル付きです |

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

- LaTeXが動く環境
- make
- git
- LinuxまたはWindows (おそらくmacOSでも動作します)

## 動作環境のセットアップ方法

### LaTeX

TeX Liveのfull-schemeをインストールすれば十分です。

参考：[TeX入手法 - TeX Wiki](https://texwiki.texjp.org/?TeX入手法)

