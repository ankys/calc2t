= 積分の極限
<積分の極限>
== 一様収束とディニの補題
<一様収束とディニの補題>
== アルツェラの定理
<アルツェラの定理>
== リーマン・ルベーグの補題
<リーマンルベーグの補題>
#block[
$f$を有界閉区間$[a , b]$を含む開区間上の$C^1$級関数とする。
この時、$n = 1 , 2 , 3 , dots.h.c$として
$ lim_(n arrow.r oo) integral_a^b f (x) cos n x ⅆ x = lim_(n arrow.r oo) integral_a^b f (x) sin n x ⅆ x = 0 $
が成り立つ。

]
#block[
#emph[Proof.] $cos$について示す。 部分積分により
\$\$\\int\_a^b f(x)\\cos n x\\dd{x}
= \\int\_a^b f(x)\\qty(\\frac{1}{n}\\sin n x)\'\\dd{x}
= \\frac{1}{n}\\lreval\*{f(x)\\sin n x}\_a^b-\\frac{1}{n}\\int\_a^b f\'(x)\\sin n x\\dd{x}.\$\$
よって、$n arrow.r oo$で \$\$\\abs{\\int\_a^b f(x)\\cos n x\\dd{x}-0}
\\le \\frac{1}{n}\\abs{f(b)}+\\frac{1}{n}\\abs{f(a)}+\\frac{1}{n}\\int\_a^b \\abs{f\'(x)}\\dd{x}
\\to 0\$\$ なので、定理の等式を得る。
$sin$の式も同様なので詳細は省略する。~◻

]
== 周期関数の積分
<周期関数の積分>
#block[
$[a , b]$を有界閉区間として、$f (x , y)$を$[a , b] times bb(R)$上の連続関数であって$y$について周期$L > 0$を持つ、
つまり $ f (x , y + L) = f (x , y) $ が成り立つものとする。
この時、$epsilon > 0$や$n = 1 , 2 , 3 , dots.h.c$として
\$\$\\lim\_{\\varepsilon \\to 0}\\int\_a^b f\\qty(x, \\frac{x}{\\varepsilon})\\dd{x}
= \\lim\_{n \\to \\infty}\\int\_a^b f(x, n x)\\dd{x}
= \\int\_a^b \\frac{1}{L}\\int\_0^L f(x, y)\\dd{y}\\dd{x}\$\$
が成り立つ。 特に連続関数$f (x) g (y)$に対しては
\$\$\\lim\_{\\varepsilon \\to 0}\\int\_a^b f(x)g\\qty(\\frac{x}{\\varepsilon})\\dd{x}
= \\lim\_{n \\to \\infty}\\int\_a^b f(x)g(n x)\\dd{x}
= \\int\_a^b f(x)\\dd{x}\\frac{1}{L}\\int\_0^L g(y)\\dd{y}\$\$
が成り立つ。

]
#block[
この定理は容易に多次元化される。

]
#block[
#emph[Proof.] まず、$L = 1$の時のみ考えれば十分なことを示す。
実際、$f (x , y)$が$y$について周期$L$の時、
$ f^(‾) (x , y) = f (x , L y) $
とおくと$f^(‾) (x , y)$は$y$について周期$1$であり
\$\$\\frac{1}{L}\\int\_0^L f(x, y)\\dd{y}
= \\frac{1}{L}\\int\_0^L \\bar{f}\\qty(x, \\frac{y}{L})\\dd{y}
= \\int\_0^1 \\bar{f}(x, y)\\dd{y}\$\$ となる。

そのため$f (x , y)$は$y$について周期$1$として、
$ lim_(n arrow.r oo) integral_a^b f (x , n x) ⅆ x = integral_a^b integral_0^1 f (x , y) ⅆ y ⅆ x $
を示す（$epsilon$の方は同様に示されるので詳細は省略する）。
$y = n x$と置換すると \$\$\\int\_a^b f(x, n x)\\dd{x}
= \\frac{1}{n}\\int\_{a n}^{b n} f\\qty(\\frac{y}{n}, y)\\dd{y}\$\$
である。
ここで積分区間$[a n , b n]$からできるだけ多くの周期$1$の部分を取り出すことをする。
\$\\lreval{a n}\$を$a n$と$b n$の間の整数で最も$a n$に近いものとし、
\$\\lreval{b n}\$を$a n$と$b n$の間の整数で最も$b n$に近いものとする。
ただし、そのような整数が存在することが問題になるが、$a = b$の場合は積分が$0$になるので等式が言えて$a eq.not b$の場合は$n$を十分大きく取ればよい。
\$\\abs{a n-\\lreval{a n}} \\le 1\$,
\$\\abs{b n-\\lreval{b n}} \\le 1\$に注意する。 この時、
\$\$\\int\_a^b f(x, n x)\\dd{x}
= \\frac{1}{n}\\int\_{a n}^{\\lreval{a n}} f\\qty(\\frac{y}{n}, y)\\dd{y}+\\frac{1}{n}\\int\_{\\lreval{a n}}^{\\lreval{b n}} f\\qty(\\frac{y}{n}, y)\\dd{y}+\\frac{1}{n}\\int\_{\\lreval{b n}}^{b n} f\\qty(\\frac{y}{n}, y)\\dd{y}\$\$
で、右辺の最初と最後の項は$f$が有界閉矩形上の連続関数より有界であることから
\$\$\\abs{\\frac{1}{n}\\int\_{a n}^{\\lreval{a n}} f\\qty(\\frac{y}{n}, y)\\dd{y}}
\\le \\frac{1}{n}\\int\_{a n}^{\\lreval{a n}} \\sup\\abs{f}\\dd{y}
\\le \\frac{1}{n}\\sup\\abs{f}
\\to 0\$\$ となる。 真ん中の項を変形すると
\$\$\\frac{1}{n}\\int\_{\\lreval{a n}}^{\\lreval{b n}} f\\qty(\\frac{y}{n}, y)\\dd{y}
= \\frac{1}{n}\\sum\_{k = \\lreval{a n}+1}^{\\lreval{b n}} \\int\_{k-1}^{k} f\\qty(\\frac{y}{n}, y)\\dd{y}
= \\frac{1}{n}\\sum\_{k = \\lreval{a n}+1}^{\\lreval{b n}} \\int\_0^1 f\\qty(\\frac{y+k-1}{n}, y+k-1)\\dd{y}\$\$
で、$f (x , y)$は$y$について周期$1$なので、
\$\$\\frac{1}{n}\\int\_{\\lreval{a n}}^{\\lreval{b n}} f\\qty(\\frac{y}{n}, y)\\dd{y}
= \\frac{1}{n}\\sum\_{k = \\lreval{a n}+1}^{\\lreval{b n}} \\int\_0^1 f\\qty(\\frac{y+k-1}{n}, y)\\dd{y}
= \\int\_0^1 \\frac{1}{n}\\sum\_{k = \\lreval{a n}+1}^{\\lreval{b n}} f\\qty(\\frac{k-1+y}{n}, y)\\dd{y}\$\$
となる。

ここで最右辺の被積分関数は$y$を固定するごとに定積分$integral_a^b f (x , y) ⅆ x$のリーマン和になっているので、区分求積法により$n arrow.r oo$で積分に収束することを言いたいがそのためにこの収束が$y$について一様収束になっていることを示す。
$0 lt.eq y lt.eq 1$に対して定積分$integral_a^b f (x , y) ⅆ x$の方を変形すると
\$\$\\int\_a^b f(x, y)\\dd{x}
= \\int\_a^{\\lreval{a n}/n} f(x, y)\\dd{x}+\\int\_{\\lreval{a n}/n}^{\\lreval{b n}/n} f(x, y)\\dd{x}+\\int\_{\\lreval{b n}/n}^b f(x, y)\\dd{x}\$\$
で、 \$\$\\abs{\\int\_a^{\\lreval{a n}/n} f(x, y)\\dd{x}}
\\le \\int\_a^{\\lreval{a n}/n} \\sup\\abs{f}\\dd{x}
\\le \\frac{1}{n}\\sup\\abs{f}
\\to 0\$\$ である。 ここで
\$\$\\int\_{\\lreval{a n}/n}^{\\lreval{b n}/n} f(x, y)\\dd{x}
= \\sum\_{k = \\lreval{a n}+1}^{\\lreval{b n}}\\int\_{\\frac{k-1}{n}}^{\\frac{k}{n}} f(x, y)\\dd{x}\$\$
であり、$f$は有界閉矩形上の連続関数より一様連続で連続性の度合い$omega$があるので、
\$\$\\begin{aligned}
&\\abs{\\frac{1}{n}\\sum\_{k = \\lreval{a n}+1}^{\\lreval{b n}} f\\qty(\\frac{k-1+y}{n}, y)-\\sum\_{k = \\lreval{a n}+1}^{\\lreval{b n}}\\int\_{\\frac{k-1}{n}}^{\\frac{k}{n}} f(x, y)\\dd{x}} \\\\
&\\quad \\le \\sum\_{k = \\lreval{a n}+1}^{\\lreval{b n}} \\abs{\\frac{1}{n}f\\qty(\\frac{k-1+y}{n}, y)-\\int\_{\\frac{k-1}{n}}^{\\frac{k}{n}} f(x, y)\\dd{x}}
\\le \\sum\_{k = \\lreval{a n}+1}^{\\lreval{b n}} \\int\_{\\frac{k-1}{n}}^{\\frac{k}{n}} \\abs{f(x, y)-f\\qty(\\frac{k-1+y}{n}, y)}\\dd{x} \\\\
&\\quad \\le \\sum\_{k = \\lreval{a n}+1}^{\\lreval{b n}} \\int\_{\\frac{k-1}{n}}^{\\frac{k}{n}} \\omega\\qty(\\abs{x-\\frac{k-1+y}{n}})\\dd{x}
\\le \\sum\_{k = \\lreval{a n}+1}^{\\lreval{b n}} \\int\_{\\frac{k-1}{n}}^{\\frac{k}{n}} \\omega(n^{-1})\\dd{x}
\\le \\frac{\\lreval{b n}-\\lreval{a n}}{n}\\omega(n^{-1}) \\\\
&\\quad \\le (b-a)\\omega(n^{-1})
\\to 0.
\\end{aligned}\$\$ ここから一様収束が言えるので、以上の内容をまとめると
\$\$\\lim\_{n \\to \\infty}\\int\_a^b f(x, n x)\\dd{x}
= \\lim\_{n \\to \\infty}\\int\_0^1 \\frac{1}{n}\\sum\_{k = \\lreval{a n}+1}^{\\lreval{b n}} f\\qty(\\frac{k-1+y}{n}, y)\\dd{y}
= \\int\_0^1 \\int\_a^b f(x, y)\\dd{x}\\dd{y}\$\$
であり、$f (x , y)$は$[a , b] times [0 , 1]$上積分可能なので積分の順序交換をして、定理の等式を得る。~◻

]
