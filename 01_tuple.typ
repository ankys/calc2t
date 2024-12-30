= 組
<組>
== 組と直積
<組と直積>
$N$個の集合$X_1 , dots.h.c , X_N$を考える($N = 1 , 2 , 3 , dots.h.c$)。
それぞれの集合から元$x_1 in X_1 , dots.h.c , x_N in X_N$を取り出し、この順に並べた$(x_1 , dots.h.c , x_N)$を$x_1 , dots.h.c , x_N$の順序組あるいは単に#emph[組];という。
特に$N = 2$のときは組の代わりに#emph[対];と呼ぶことがある。

二つの組$(x_1 , dots.h.c , x_N)$と$(y_1 , dots.h.c , y_N)$が等しいのは$x_1 = y_1$から$x_N = y_N$のすべてが成り立つ場合である。
ここに順序を無視する集合の外延記法\$\\lrset{x\_1, \\cdots, x\_N}\$と組$(x_1 , dots.h.c , x_N)$の大きな違いがある。
一方で数列の記法$(x_n)_n$も組$(x_1 , dots.h.c , x_N)$と同様に順序を持つので同じ丸かっこを使って表現されるが、数列の各元は同一の集合の元であるのに対して、組の集合は$X_1$から$X_N$の中で異なるものがあっても許されているという違いがある。

組$(x_1 , dots.h.c , x_N)$全体からなる集合を$X_1 , dots.h.c , X_N$の#emph[直積];といい$X_1 times dots.h.c times X_N$と表す。
「積」と呼ばれるのは元の個数を考えると、$X_1 , dots.h.c , X_N$が有限集合でそれぞれ$m_1 , dots.h.c , m_N$個の元からなる場合$X_1 times dots.h.c times X_N$も有限集合で元の個数は積$m_1 times dots.h.c times m_N$になることによる。

各集合$X_1 , dots.h.c , X_N$が同一の集合$X$であるとき、それらの直積$X_1 times dots.h.c times X_N = X times dots.h.c times X$を簡単に$X^N$と表すことにする。
また、$N = 1$のときの$X^1$は$X$と同一視する。

== 多変数関数
<多変数関数>
$X_1 , dots.h.c , X_N , Y$を集合として、元$x_1 in X_1 , dots.h.c , x_N in X_N$が与えられて$Y$の元$y$が対応する場合、この対応（写像）のことを多変数写像という。
多変数写像を $ F : X_1 times dots.h.c times X_N arrow.r Y $ や
$ F : x_1 in X_1 , dots.h.c , x_N in X_N arrow.r.bar y in Y $ と表す。
また、組$(x_1 , dots.h.c , x_N)$に対して対応する$y$のことを$F (x_1 , dots.h.c , x_N)$と書き、多変数写像$F$のことを$F (x_1 , dots.h.c , x_N)$や$y = F (x_1 , dots.h.c , x_N)$などと書くこともある。
このように多変数写像は直積や組の概念と密接な関係を持つ。
より一般に直積$X_1 times dots.h.c times X_N$の部分集合$U$の元から$Y$の元への対応も多変数写像といい、
$ F : U arrow.r Y $ や
$ F : (x_1 , dots.h.c , x_N) in U arrow.r.bar y in Y $ などと表す。

#block[
単純だが基礎的な多変数写像は#emph[射影];であり、
$i = 1 , dots.h.c , N$に対して
\$\$\\proj\_i: x\_1 \\in X\_1, \\cdots, x\_N \\in X\_N \\mapsto x\_i \\in X\_i.\$\$
として定義される。

]
写像の行き先$Y$が$bb(R)$のような数の集合の場合、写像$F$は#emph[多変数関数];と呼ばれる。
その中でも$N = 2$の二変数関数の典型例は加減乗除のような演算子である。
つまり以下は二変数関数とみなすことができる。

+ $+ : x in bb(R) , y in bb(R) arrow.r.bar x + y in bb(R)$.

+ $- : x in bb(R) , y in bb(R) arrow.r.bar x - y in bb(R)$.

+ $times : x in bb(R) , y in bb(R) arrow.r.bar x y in bb(R)$.

+ \$\\divs: x \\in \\mathbb{R}, y \\in \\mathbb{R}\\setminus\\lrset{0} \\mapsto \\frac{x}{y} \\in \\mathbb{R}\$.

+ \$\\max: x \\in \\mathbb{R}, y \\in \\mathbb{R} \\mapsto \\max\\lrset{ x, y } \\in \\mathbb{R}\$.

+ \$\\min: x \\in \\mathbb{R}, y \\in \\mathbb{R} \\mapsto \\min\\lrset{ x, y } \\in \\mathbb{R}\$.

== 変換
<変換>
写像$F$の中でも定義域と行き先が同じ集合$X$であるものを$X$上の#emph[変換];という。

#block[
平面（後で導入する）上の変換$(x , y) = F (r , theta)$を$x = a + r cos theta , y = b + r sin theta$で定めると、
これはしばしば$(a , b)$を中心とする#emph[極座標変換];と呼ばれる。

]
