# LaTeX Templates

LaTeXのテンプレート集です。

## セットアップ方法

適当な場所で`git clone`します。テンプレートは複数あり、ブランチによって分けられています。
いろいろな組み合わせが試せるのでお得です。

```sh
git clone -b (ブランチ名) https://github.com/yuma140902/lt report
```

| ブランチ                   | エンジン | LaTeXエンジン | ドライバ | 文書クラス  | 文献データベース |  説明 |
|----------------------------|----------|---------------|----------|-------------|------------------|------|
| `empty`                    | upTeX    | upLaTeX       | dvipdfmx | jsarticle   | pBiBTeX          | 普通はこれを使えばいいと思います |
| `nocite`                   | upTeX    | upLaTeX       | dvipdfmx | jsarticle   | なし             | 普通はこれを使えばいいと思いますその2 |
| `master`                   | upTeX    | upLaTeX       | dvipdfmx | jsarticle   | pBiBTeX          | サンプル付きです |
| `bxjscls-uplatex`          | upTeX    | upLaTeX       | dvipdfmk | bxjsarticle | pBiBTeX          | [BXjscls](https://texwiki.texjp.org/BXjscls)を使用してみるテスト |
| `bxjscls-uplatex-samples`  | upTeX    | upLaTeX       | dvipdfmk | bxjsarticle | pBiBTeX          | ↑のサンプル付きバージョン |
| `bxjscls-uplatex-nocite`   | upTeX    | upLaTeX       | dvipdfmk | bxjsarticle | pBiBTeX          | ↑の参考文献なしバージョン |
| `lualatex-bxjscls-samples` | luaTeX   | luaLaTeX      | なし     | bxjsarticle | pBiBTeX          | LuaLaTeX |


## 使用方法

すべてmakeを使います。テンプレートによっては内部的にlatexmkなど別のビルドツールを使っていますが、makeから呼び出すようにすることでテンプレート間で操作を統一しています。

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

