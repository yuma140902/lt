# generic-latex-template-with-citation

LaTeXで「普通」のレポートを書くためのテンプレートです。

## 機能

以下のような機能があります。

- LaTeXを使用した組版処理
- BibTeXを用いた文献管理

## セットアップ方法

適当な場所で`git clone`します。テンプレートは4種類あり、ブランチによって分けられています。

### 1. サンプル付きのテンプレート

```sh
git clone -b master https://gitlab.com/yuma140902/lt report
```

### 2. 空のテンプレート

```sh
git clone -b empty https://gitlab.com/yuma140902/lt report
```

### 3. 空かつ参考文献なしのテンプレート

```sh
git clone -b no-cite https://gitlab.com/yuma140902/lt report
```

### その他

その他、次のようなテンプレートを用意しています。

| ブランチ | 説明 |
|-----------|-------------|
| bxjscls-uplatex | [BXjscls](https://texwiki.texjp.org/BXjscls)とupLaTeXを使用するテンプレート |
| bxjscls-uplatex-empty | ↑の空バージョン |
| bxjscls-uplatex-nocite | ↑の参考文献なしバージョン


## 使用方法

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

- LaTeX関係
  - uplatex
  - pdfdvimx
  - pbibtex
  - パッケージ
    - plautopatch
    - jsarticle
    - graphicx
    - siunitx
    - amssymb
    - amsmath
    - url
    - wrapfig
- make
- git
- LinuxまたはWindows (おそらくmacOSでも動作します)

## 動作環境のセットアップ方法

### LaTeX

TeX Liveのfull-schemeをインストールすれば十分です。

参考：[TeX入手法 - TeX Wiki](https://texwiki.texjp.org/?TeX入手法)

## FAQ

### makeしたときに意味わからんエラーが出る

絶対にコードが間違っていないという自信がある場合は`make clean-all && make`を実行すると上手くいくかもしれません。

### BibTeXがエラーを吐く

ltxファイル内の`\nocite*{}`を削除し、`make clean-all && make`を実行してください。それでも直らない場合は知りません。

### その他

その他の質問はyuma14<sup>[誰？]</sup>まで
