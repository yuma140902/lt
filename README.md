# LaTeX Templates

LaTeXのテンプレート集です。

## セットアップ方法

テンプレートは複数あり、ブランチによって分けられています。

```sh
git clone -b (ブランチ名) https://github.com/yuma140902/lt
```

または[tiged](https://github.com/tiged/tiged)を使用して
```sh
tiged yuma140902/lt#(ブランチ名)
```

| ブランチ                   | エンジン | LaTeXエンジン | ドライバ | 文書クラス  | 文献データベース |  説明 |
|----------------------------|----------|---------------|----------|-------------|------------------|------|
| `empty`                    | upTeX    | upLaTeX       | dvipdfmx | jsarticle   | pBiBTeX          | 普通はこれを使えばいいと思います |
| `nocite`                   | upTeX    | upLaTeX       | dvipdfmx | jsarticle   | なし             | 普通はこれを使えばいいと思いますその2 |
| `master`                   | upTeX    | upLaTeX       | dvipdfmx | jsarticle   | pBiBTeX          | サンプル付きです |
| `bxjscls-uplatex`          | upTeX    | upLaTeX       | dvipdfmx | bxjsarticle | pBiBTeX          | [BXjscls](https://texwiki.texjp.org/BXjscls)を使用してみるテスト |
| `bxjscls-uplatex-samples`  | upTeX    | upLaTeX       | dvipdfmx | bxjsarticle | pBiBTeX          | ↑のサンプル付きバージョン |
| `bxjscls-uplatex-nocite`   | upTeX    | upLaTeX       | dvipdfmx | bxjsarticle | なし             | ↑の参考文献なしバージョン |
| `lualatex-bxjscls-empty`   | luaTeX   | luaLaTeX      | なし     | bxjsarticle | pBiBTeX          | LuaLaTeX |
| `lualatex-bxjscls-samples` | luaTeX   | luaLaTeX      | なし     | bxjsarticle | pBiBTeX          | LuaLaTeX |
| `lualatex-bxjscls-nocite`  | luaTeX   | luaLaTeX      | なし     | bxjsarticle | なし             | LuaLaTeX |


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
  - 各パッケージ
- make
- git
- LinuxまたはWindows (おそらくmacOSでも動作します)

## 動作環境のセットアップ方法

### LaTeX

TeX Liveのfull-schemeをインストールすれば十分です。

参考：[TeX入手法 - TeX Wiki](https://texwiki.texjp.org/?TeX入手法)

