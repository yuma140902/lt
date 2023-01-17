# generic-latex-template-with-citation

LaTeXで「普通」のレポートを書くためのテンプレートです。

## 機能

以下のような機能があります。

- LaTeXを使用した組版処理
- BibTeXを用いた文献管理

## 動作環境

- LaTeX関係
  - uplatex
  - pdfdvimx
  - pbibtex
  - 以下のパッケージ
    - jsarticle
    - graphicx
    - siunitx
    - amssymb
    - amsmath
    - url
- LaTeX以外
  - make
  - git

## セットアップ

### 1. LaTeXのインストール

TeX Liveのfull-schemeをインストールすれば十分です。

### 2. qpdf、make、git

[scoop](https://scoop.sh/)を使用する場合、以下のコマンドでインストールできます。

```sh
scoop install git
scoop install make
```

### 4. git clone

このリポジトリを適当な場所にgit cloneします。

## 使用方法

### PDFを作る

```sh
make
```

または

```sh
make all
```

### コンパイルの中間ファイルを削除する

```sh
make clean
```

### dviファイルとPDFファイル、GEN_GRAPHSに指定した画像も含む中間ファイルを削除する

```sh
make clean-all
```

## FAQ

### makeしたときに意味わからんエラーが出る

絶対にコードが間違っていないという自信がある場合は`make clean-all && make`を実行すると上手くいくかもしれません。

### BibTeXがエラーを吐く

ltxファイル内の`\nocite*{}`を削除し、`make clean-all && make`を実行してください。それでも直らない場合は知りません。

