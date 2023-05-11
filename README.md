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

参考：[TeX入手法 - TeX Wiki](https://texwiki.texjp.org/?TeX入手法)

### 2. make、git

[scoop](https://scoop.sh/)を使用する場合、以下のコマンドでインストールできます。

```sh
scoop install git
scoop install make
```

その他の場合は適当にインストールしてください。

### 3. git clone

適当な場所で

```sh
git clone https://gitlab.com/yuma140902/generic-latex-template-with-citation.git
```

## 使用方法

### PDFを作る

```sh
make
```

### タイプセットの中間ファイルを削除する

```sh
make clean
```

### dviファイルとPDFファイルも含む中間ファイルを削除する

```sh
make clean-all
```

## FAQ

### サンプルコードが邪魔なので本当に空のテンプレートがほしい

```sh
git checkout empty
```

### 参考文献リストはいらない

`main.ltx`の

```latex
\nocite*{}
\bibliographystyle{junsrt}
\bibliography{cite}
```

を削除してください。

### makeしたときに意味わからんエラーが出る

絶対にコードが間違っていないという自信がある場合は`make clean-all && make`を実行すると上手くいくかもしれません。

### BibTeXがエラーを吐く

ltxファイル内の`\nocite*{}`を削除し、`make clean-all && make`を実行してください。それでも直らない場合は知りません。

### その他

その他の質問はyuma14<sup>[誰？]</sup>まで
