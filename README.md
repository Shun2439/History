# 試験対策をみんなでしよう

pdfはpdfブランチにあります。

## 編集方法

question.texの中の`\item`ってところを編集したら、

```tex

\item <問題>

```

ans.texの該当するところに答えを加えてください。

```tex

\item <答え>

```

## tips

### `\label{}`と`\ref{}`を使うと便利（？）

question.tex

```tex

\item 江戸幕府の最初の将軍は？ \label{ieyasu}
\item \ref{ieyasu}の氏は？

```

question.pdf

```text

(n) 江戸幕府の最初の将軍は？

(n + 1) (n)の氏は？

```

ちなみにans.texは

```text

\item 徳川家康
\item 源

```
