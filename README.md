# LaTeX Templates

LaTeXのテンプレート集

## セットアップ方法

~テンプレートは複数あり、ディレクトリによって分けられています。~

テンプレートは `lua-latexmk` の 1 種類だけです。

[tiged](https://github.com/tiged/tiged)を使用して

```sh
tiged "yuma140902/lt/(ディレクトリ)"
```

のようにするとカレントディレクトリに複製できます。

| ディレクトリ  | エンジン | 文書クラス  | 文献管理         |
|---------------|----------|-------------|------------------|
| `lua-latexmk` | LuaTex   | ltjsarticle | BibLaTeX + Biber |

## 使用方法

すべて make を使います。使用方法は `make help` を実行してください。

## 動作環境

- TeX Live full-scheme
- make
- git
- Linux, Windows, macOS
