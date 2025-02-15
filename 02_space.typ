
#import "deps/theorem.typ": thmrules, theorem, lemma, proposition, corollary, definition, example, remark, proof
#show: thmrules.with()

#let proj = $op("proj")$

= 空間

== 点と空間

平面上の点は座標軸を定めるとその座標を読み取ることで2つの（実）数の組（対）が対応する。
また、三次元空間は3つの実数の組が対応する。
しかしながら空間が何かと聞かれたら幾何学的な問題となり難しいので、本テキストでは逆に$N = 1, 2, 3, dots$として$N$個の実数$x_1, dots, x_N$の組$P = (x_1, dots, x_N)$のことを$N$次元空間上の_点_と呼び、$N$次元空間上の点をすべて集めたものを$N$次元_空間_ということにする。
つまり$N$次元空間とは実数の直積$RR^N$に他ならない。
$N = 1$のとき、つまり$RR^1$は_直線_といい、
$N = 2$のとき、つまり$RR^2$は_平面_という。
$N$次元空間の点の集合つまり$N$次元空間の部分集合のことを$N$次元_点集合_と呼ぶことがある。

$N$次元空間上の点$P = (x_1, dots, x_N)$に対して、実数$x_i$を$P$の_第$i$成分_という。
ただし、$i = 1, dots, N$である。
点$P$に対して、第$i$成分を$P_i$または$P^i$と表すことがある。
この節では点を大文字の$P$を使って書いているが以降では$a$や変数の場合は$x$など小文字を用いることもある。

$N$次元空間上の演算において最も基礎的になるのは（ユークリッド）距離である。
つまり、二点$P = (x_1, dots, x_N)$, $Q = (y_1, dots, y_N)$間の_距離_$d(P, Q)$をピタゴラスの定理（三平方の定理）にもとづき
$
d(P, Q)
= d((x_1, dots, x_N), (y_1, dots, y_N))
= sqrt((y_1-x_1)^2+dots+(y_N-x_N)^2)
$
と定義する。

距離の満たす重要な性質として次がある。

+ （正値性）任意の点$P$, $Q$に対して$d(P, Q) >= 0$が成り立つ。
+ （同一性）任意の点$P$, $Q$に対して$d(P, Q) = 0$と$P = Q$は同値である。
+ （対称性）任意の点$P$, $Q$に対して$d(P, Q) = d(Q, P)$が成り立つ。
+ （三角不等式）任意の点$P$, $Q$, $R$に対して$d(P, R) <= d(P, Q)+d(Q, R)$が成り立つ。

点$a in RR^N$と正の数$r > 0$に対して、$a$から半径$r$内の点の集合
$
B_r (a) = { x in RR^N mid(|) d(a, x) < r },
quad overline(B)_r (a) = { x in RR^N mid(|) d(a, x) <= r }
$
をそれぞれ点$a$の$r$を半径とする_開円板_と_閉円板_という。
また、閉円板に関しては$r = 0$でも$overline(B)_0 (a) = { a }$として定義する。

== 空間ベクトル

$N$次元空間上の2点$P = (x_1, dots, x_N)$, $Q = (y_1, dots, y_N)$を取ると成分同士を引くことで別の実数の組
$
arrow(P Q) = (y_1-x_1, dots, y_N-x_N)
$
が定義できる。
この$arrow(P Q)$のことを点$P$から点$Q$への$N$次元_空間ベクトル_あるいは単に_ベクトル_という。

$N$次元空間ベクトル全体も、実数の組全体であり、$N$次元空間同様$RR^N$と表すが、空間と空間ベクトル全体では使える演算が異なることに注意する。
実際、ベクトル$u = (u_1, dots, u_N)$と$v = (v_1, dots, v_N)$に対して加法
$
u+v = (u_1+v_1, dots, u_N+v_N)
$
が定義でき、ベクトル$u = (u_1, dots, u_N)$と実数$a$に対して定数乗法
$
a u = (a u_1, dots, a u_N)
$
が定義できる。
また、2つのベクトル$u = (u_1, dots, u_N)$と$v = (v_1, dots, v_N)$に対して、
$
u dot v = u_1 v_1+dots+u_N v_N
$
を$u$と$v$の_内積_といい、
$
norm(u) = sqrt(u_1^2+dots+u_N^2)
$
を$u$の_大きさ_または_ノルム_という。
二点$P$と$Q$の間の距離はそのベクトルの大きさとなる。
$
d(P, Q) = norm(arrow(P Q)).
$

ベクトルは以下の性質を満たす。

+ （加法の結合法則）任意のベクトル$u, v, w$に対して$(u+v)+w = u+(v+w)$が成り立つ。
+ （加法の交換法則）任意のベクトル$u, v$に対して$u+v = v+u$が成り立つ。
+ （両立法則）任意のベクトル$u$と実数$a, b$に対して$a (b u) = (a b) u$が成り立つ。
+ （分配法則）任意のベクトル$u, v$と実数$a, b$に対して$a (u+v) = a u+a v$と$(a+b) u = a u+b u$が成り立つ。
+ （零ベクトル）$0 = (0, dots, 0)$は零元である。
  つまり任意のベクトル$u$に対して$u+0 = 0+u = u$が成り立つ。
+ （逆ベクトル）任意のベクトル$u$に対して$u+x = x+u = 0$が成り立つようなベクトル$x = -u$がただ一つ存在する。
+ （単位元）$1$は単位元である。
  つまり任意のベクトル$u$に対して$1 dot u = u$が成り立つ。
+ （内積の対称性）任意のベクトル$u, v$に対して$u dot v = v dot u$が成り立つ。
+ （内積の多重線形性）任意のベクトル$u, v, w$に対して$(u+v) dot w = u dot w+v dot w$と$u dot (v+w) = u dot v+u dot w$が成り立つ。
+ （内積の正定値性）任意のベクトル$u$に対して$u dot u >= 0$であり、$u dot u = 0$と$u = 0$は同値である。
+ （ノルムの正値性）任意のベクトル$u$に対して$norm(u) >= 0$であり、$norm(u) = 0$と$u = 0$は同値である。
+ （ノルムの斉次性）任意のベクトル$u$と実数$a$に対して$norm(a u) = abs(a)norm(u)$が成り立つ。
+ （三角不等式）任意のベクトル$u, v$に対して$norm(u+v) <= norm(u)+norm(v)$が成り立つ。

空間ベクトル$u = (u_1, dots, u_N)$と$v = (v_1, dots, v_N)$に対して、距離をその差のノルムとする、つまり
$
d(u, v) = norm(v-u) = sqrt((v_1-u_1)^2+dots+(v_N-u_N)^2)
$
とすると、空間上の点に対する距離と同等のものが定義できる。
もちろんこのベクトルの距離も空間上の点の距離と同様の性質を持つ。

ちなみに複素数も平面や平面ベクトル同様集合的には$RR^2$であるが、複素数には乗法と除法が備わっていてさらに豊かな構造を持っている。
また、直線$RR^1$は実数全体$RR$と同一視されるが、直線ベクトルのノルムは実数の絶対値と同質なものである。

空間上の点$P = (x_1, dots, x_N)$と空間ベクトル$u = (u_1, dots, u_N)$に対して$P$を$u$だけ_平行移動_して空間上の点
$
P+u = (x_1+u_1, dots, x_N+u_N)
$
を得ることができる。
点$P, Q$に対して$P+arrow(P Q) = Q$である。

== 矩形と有界性

実数の集合において重要な役割を果たしていたのが区間であるが、$N$次元空間あるいは$N$次元空間ベクトルの空間でそれに相当するのが矩形（長方形）であり区間の直積に相当する。
特に有界閉区間に当たる有界閉矩形が重要であり、$2 N$個の実数$a_1 <= b_1, dots, a_N <= b_N$で定まる点集合$[a_1, b_1] times dots times [a_N, b_N]$を_有界閉矩形_と呼ぶ。

点集合$X$を考える。 つまり、$X$は$N$次元空間$RR^N$の部分集合である。
ここで実数$a_1 <= b_1, dots, a_N <= b_N$が存在して$X subset [a_1, b_1] times dots times [a_N, b_N]$が成り立つとき、$X$は_有界_であるという。
つまり$X$を被覆する有界閉矩形が存在すると言い換えることができる。

一般的な教科書では有界性を円で定義されることが多いが、矩形で定義しても円で定義しても同じである。

#proposition[
点集合$X$に対して、$X subset [a_1, b_1] times dots times [a_N, b_N]$となる有界閉矩形$[a_1, b_1] times dots times [a_N, b_N]$が存在することと$X subset overline(B)_R (0)$となる半径$R >= 0$が存在することは同値である。
ただし、$0 = (0, dots, 0)$である。
]

#proof[
有界閉矩形$[a_1, b_1] times dots times [a_N, b_N]$で被覆できたとすると$L = max{ abs(a_1), abs(b_1), dots, abs(a_N), abs(b_N) }$として有界閉矩形$[-L, L]^N$でも被覆でき、$R = sqrt(N)L$とすればよい。
閉円板$overline(B)_R (0)$で被覆できたとすると、有界閉矩形$[-R, R]^N$でも被覆できる。
]

本テキストで矩形を用いるのは点列の収束の議論で区間の問題に帰着させたり、リーマン積分を区間の類推で定義するためである。

自明なことであるが有界閉矩形は有界であることに注意する。

空でない有界な集合に対してそれを被覆する最も小さい有界閉矩形が存在して、以下のようにして構成できる。

#proposition[
$X$を空でない有界な$N$次元点集合とする。
このとき、$i = 1, dots, N$に対して以下で$macron(a)_i, macron(b)_i$を定めると、
$[macron(a)_1, macron(b)_1] times dots times [macron(a)_N, macron(b)_N]$は有界閉矩形であり、$X subset [macron(a)_1, macron(b)_1] times dots times [macron(a)_N, macron(b)_N]$であり、$X subset [a_1, b_1] times dots times [a_N, b_N]$ならば$[macron(a)_1, macron(b)_1] times dots times [macron(a)_N, macron(b)_N] subset [a_1, b_1] times dots times [a_N, b_N]$を満たす。
$
macron(a)_i = sup{ a in RR mid(|) X subset { x in RR^N mid(|) x_i >= a } },
quad
macron(b)_i = inf{ b in RR mid(|) X subset { x in RR^N mid(|) x_i <= b } }.
$
]

このような矩形を空でない有界な点集合の_最小被覆有界閉矩形_と呼ぶ。

== 点列の極限

数列を思い出すとこれは自然数$n$に対し数（自然数、整数、有理数、実数、複素数など）を対応させることで、無限に連なる数の並びを表現したものであった。
これと同様の発想で数の代わりに$N$次元空間上の点あるいは$N$次元空間ベクトル$a_n$をならべたもの$(a_n)$を$N$次元_点列_という。

数列に対して極限が（存在したら）あったように、点列に対しても極限の概念を導入する。
このとき、数列の極限は絶対値を使って定義していたのに対して、点列では距離を使って定義することが重要である。
つまり、点列$(a_n)_(n in NN)$が$n -> oo$で点$a$に収束するとは
#quote(block: true)[
任意の$epsilon > 0$に対して、ある自然数$N$が存在して、$N$以上のすべての自然数$n$に対して$d(a, a_n) < epsilon$が成り立つ
]
ことを言う。
このことは言い換えると$n -> oo$で非負の実数列$(d(a, a_n))_n$が$0$に収束することと同値である。
こちらの表現の方が単純なので本テキストでは以下のように点列の極限を定義する。

#definition([点列の極限])[
点列$(a_n)_(n in NN)$が$n -> oo$で点$a$に_収束する_あるいは$a$が$(a_n)_(n in NN)$の$n -> oo$での_極限である_とは$n -> oo$で
$
d(a, a_n) -> 0
$
が成り立つことをいう。
点列$(a_n)_(n in NN)$が何らかの数に収束する時この点列は_収束する_といい、そうでない時_発散する_という。
]

#example[
$a$を定点として定点列$(a)_(n in NN)$の極限は$a$である。
]

極限は存在したら一意である。

#proposition[
点列$(a_n)$が収束したらその極限は一つしかない、つまり$(a_n)$が$a$に収束し$b$にも収束したとすると$a = b$である。
]

#proof[
三角不等式より
$
d(a, b) <= d(a, a_n)+d(b, a_n)
$
で、$n$についての極限を取ると右辺は$0$に収束するのではさみうちの原理より$d(a, b) = 0$がわかる。
よって、距離の同一性より$a = b$である。
]

#proposition[
$(a_n)$を点列、$a$を点とする。
もし$(a_n)$の任意の部分列$(a_(n_k))$が$a$に部分列収束する、つまり$a$に収束する部分列$(a_(n_(k_l)))$が存在するとき、$(a_n)$は$a$に収束する。
]

#proof[
]

== 連続関数

この節では主に多変数関数$f: RR times dots times RR -> RR$の極限や連続性について見ていく。
このとき直積$RR times dots times RR$を$N$次元空間$RR^N$と同一視すると関数$f$は空間上の点からの一変数関数のように見なすことができ、点列の収束のところで見たように実数だったら絶対値を使っていたところを距離に置き換えることで、極限が定義できる。

より詳しくは$N = 1, 2, 3, dots$として、$N$次元点集合$X$上で定義された実数値関数$f: X -> RR$を考える。
点$a$は、任意の正の数$delta$に対して$0 < d(a, x) < delta$を満たす$x in X$が存在するとして、このような$a$を$X$の_極限点_という。
点列の収束が距離を用いることで数列の収束に帰着できたように、連続性も度合い関数を用いて簡潔に記述することができる。

#definition([空間上の関数の極限])[
$f$を点集合$X$上の実数値関数、$a$を$X$の極限点、$l$を実数とする。
関数$f(x)$が$x -> a$で実数$l$に_収束する_あるいは$l$が$f(x)$の$x -> a$での_極限である_とは
度合い関数$omega_a$が存在し任意の$x in X$に対して
$
abs(f(x)-l) <= omega_a (d(a, x))
$
が成り立つことをいう。
]

今後の議論の展開の中で値域が実数でなく$RR^M$ ($M = 1, 2, 3, dots$)である場合に拡張する必要がありそのために極限の概念を拡張しておく。

#definition([空間上の$RR^M$値関数の極限])[
$F$を点集合$X$上の$RR^M$値関数、$a$を$X$の極限点、$L$を$RR^M$の点とする。
関数$F(x)$が$x -> a$で点$L$に_収束する_あるいは$L$が$F(x)$の$x -> a$での_極限である_とは
度合い関数$omega_a$が存在し任意の$x in X$に対して
$
d(L, F(x)) <= omega_a(d(a, x))
$
が成り立つことをいう。
]

$RR^M$値関数の極限を調べるには各成分の極限を調べれば十分である。

#proposition[
$f_1, dots, f_M$を点集合$X$上の実数値関数として$F(x) = (f_1 (x), dots, f_M (x))$により$RR^M$値関数$F$を定める。
$a$を$X$の極限点、$L = (l_1, dots, l_M)$を$RR^M$の点とする。

このとき、関数$F(x)$が$x -> a$で点$L$に収束することは、
各$i = 1, dots, M$に対して関数$f_i (x)$が$x -> a$で実数$l_i$に収束することと同値である。
]

#proof[
$F(x)$が収束するならばの方が簡単で、各$i = 1, dots, M$に対して
$
abs(f_i (x)-l_i) <= d(L, F(x)) <= omega_a (d(a, x))
$
であることから直ちに従う。

各$f_i (x)$が収束する場合は
$
abs(f_i (x)-l_i) <= omega_a^i (d(a, x))
$
となる度合い関数$omega_a^i$が存在し、
新しい度合い関数を$omega_a (r) = max{ omega_a^1 (r), dots, omega_a^M (r) }$として取ると、
$
d(L, F(x))
= sqrt((f_1 (x)-l_1)^2+dots+(f_M (x)-l_M)^2)
<= sqrt(omega_a^1 (d(a, x))^2+dots+omega_a^M (d(a, x))^2)
<= sqrt(M) omega_a (d(a, x))
$
なので$F(x)$も収束する。
]

今後$N$変数関数の極限や連続性も$RR^M$値に拡張すべきだが、実数値の場合だけ明記して$RR^M$値の場合の定義等は省略する。

$N$変数関数は点$(a_1, dots, a_N)$から点$(x_1, dots, x_N)$の距離が
$
d((a_1, dots, a_N), (x_1, dots, x_N)) = sqrt((x_1-a_1)^2+dots+(x_N-a_N)^2)
$
で与えられることから以下のようにして定義される。

#definition([多変数関数の極限])[
$f$を$RR^N$の部分集合$X$上で定義された$N$変数実数値関数、$(a_1, dots, a_N)$を$X$の極限点、$l$を実数とする。

$N$変数関数$f(x_1, dots, x_N)$が$(x_1, dots, x_N) -> (a_1, dots, a_N)$で実数$l$に_収束する_あるいは$l$が$f(x_1, dots, x_N)$の$(x_1, dots, x_N) -> (a_1, dots, a_N)$での_極限である_とは
度合い関数$omega_((a_1, dots, a_N))$が存在し任意の$(x_1, dots, x_N) in X$に対して
$
abs(f(x_1, dots, x_N)-l) <= omega_((a_1, dots, a_N)) (sqrt((x_1-a_1)^2+dots+(x_N-a_N)^2))
$
が成り立つことをいう。
]

極限が定義できると一変数関数と同様に連続性が定義できる。
以下では多変数関数の場合を述べるが、空間上の関数でも同様である。

#definition([多変数関数の連続性])[
$f$を$RR^N$の部分集合$X$上で定義された$N$変数実数値関数、$(a_1, dots, a_N)$を$X$の極限点であり$X$は$(a_1, dots, a_N)$を元として含むとする。
ここで$f(x_1, dots, x_N)$が$(x_1, dots, x_N) -> (a_1, dots, a_N)$で$f(a_1, dots, a_N)$に収束する、つまり
$
lim_((x_1, dots, x_N) -> (a_1, dots, a_N)) f(x_1, dots, x_N) = f(a_1, dots, a_N) $
の時、関数$f(x_1, dots, x_N)$は点$(x_1, dots, x_N) = (a_1, dots, a_N)$であるいは関数$f$は点$(a_1, dots, a_N)$で_連続_であるという。
]

#definition([多変数連続関数])[
$f$を$RR^N$の部分集合$X$上で定義された$N$変数実数値関数として、$X$の点はすべて$X$の極限点であるとする。
ここで、すべての点$(a_1, dots, a_N) in X$で$f$が連続である時、関数$f$は集合$X$上の_連続関数_であるという。
]

#remark[
以上のことをまとめると$N$変数実数値関数$f(x_1, dots, x_N)$が$(x_1, dots, x_N) = (a_1, dots, a_N)$で連続であることは度合い関数$omega_((a_1, dots, a_N))$が存在し
$
abs(f(x_1, dots, x_N)-f(a_1, dots, a_N)) <= omega_((a_1, dots, a_N)) (sqrt((x_1-a_1)^2+dots+(x_N-a_N)^2))
$
が成り立つことと同値である。
]

多変数あるいは空間上の連続関数の典型例として射影と距離が挙げられる。

#proposition([射影の連続性])[
$i = 1, dots, N$として、以下の射影は連続関数である。
$
proj_i: x_1 in RR, dots, x_N in RR |-> x_i in RR.
$
]

#proof[
次の不等式が成り立つことからすぐわかる。
$
abs(x_i-a_i) <= sqrt((x_1-a_1)^2+dots+(x_N-a_N)^2).
$
]

#proposition([距離の連続性])[
点$hat(a) in RR^N$を固定し、距離から定まる関数$f(x) = d(hat(a), x)$は$RR^N$上の連続関数である。
]

#proof[
三角不等式より
$
abs(f(x)-f(a)) = abs(d(hat(a), x)-d(hat(a), a)) <= d(a, x)
$
なので、$f$は連続関数である。
]

#remark[
実は距離を定める関数$d$は$RR^N times RR^N$上の連続関数である。
実際、三角不等式より
$
abs(d(x, y)-d(a, b))
= abs((d(x, y)-d(a, y))+(d(a, y)-d(a, b)))
<= d(a, x)+d(b, y)
<= 2 sqrt(d(a, x)^2+d(b, y)^2)
$
で、これは$d$が連続関数であることを意味している。
]

一変数関数同様に以下の連続性に関する性質がある。

#proposition([点列連続性])[
関数$f(x)$が点$x = a$で連続であることは
#quote(block: true)[
$a$に収束する任意の点列$(a_n)$に対して、数列$(f(a_n))$が$f(a)$に収束する
]
ことと同値である。
] <t_seqcont>

#proof[
$f(x)$が$x = a$で連続として、$a$に収束する点列$(a_n)$を考える。
$epsilon > 0$に対して、連続性からある$delta > 0$が存在して$d(a, x) < delta$を満たす任意の点$x$に対して$abs(f(x)-f(a)) < epsilon$である。
さらにこの$delta > 0$に対して、数列の収束から自然数$N$が存在して$n >= N$を満たす任意の自然数$n$に対して$d(a, a_n) < delta$である。
よって、$x$として$a_n$を考えることで、十分大きいすべての$n$に対して$abs(f(a_n)-f(a)) < epsilon$、つまり$f(a_n) -> f(a)$を得る。

逆に$a$に収束する任意の点列$(a_n)$に対して$f(a_n) -> f(a)$のとき、$f$の連続性を示すが、背理法で連続でなかったとする。
この時、ある$epsilon > 0$が存在して、任意の$delta > 0$に対して$d(a, x) < delta$かつ$abs(f(x)-f(a)) >= epsilon$となる点$x$が存在する。
ここで$n = 1, 2, 3, dots$ごとに$delta = 1/n$を考えて上記の条件を満たす$x$が存在することからそのうち一つを$a_n$とおく。
そうして点列$(a_n)_(n = 1)^oo$を定めるとき、$d(a, a_n) < 1/n$なので$(a_n)$は$a$に収束する。
一方で$abs(f(a_n)-f(a)) >= epsilon$より$(f(a_n))$は$f(a)$に収束しないので仮定に矛盾する、よって$f(x)$は$x = a$で連続である。
]

#proposition([連続関数の合成関数])[
$F$を$N$次元点集合$X$上の$RR^M$値関数、$g$を$M$次元点集合$Y$上の実数値関数であって$F(X) subset Y$を満たすとする。

ここで関数$F(x)$が点$x = a in X$で連続で、関数$g(y)$が点$y = F(a) in Y$で連続である時、
合成関数$g(F(x))$は点$x = a$で連続である。
]

各種演算は二変数連続関数の典型例である。

#proposition([演算の連続性])[
以下の演算によって定義される関数は連続関数である。

+ $+ : x in RR, y in RR |-> x+y in RR$.
+ $- : x in RR, y in RR |-> x-y in RR$.
+ $times : x in RR, y in RR |-> x y in RR$.
+ $div: x in RR, y in RR\\{0} |-> x/y in RR$.
+ $max: x in RR, y in RR |-> max{ x, y } in RR$.
+ $min: x in RR, y in RR |-> min{ x, y } in RR$.
]

#proof[
定義域から点$(a, b)$を固定する。

+ 三角不等式より
  $
  abs((x+y)-(a+b))
  = abs((x-a)+(y-b))
  <= abs(x-a)+abs(y-b)
  <= 2 sqrt((x-a)^2+(y-b)^2).
  $
  よって加法$+$は$RR times RR$上の連続関数である。
+ 三角不等式より
  $
  abs((x-y)-(a-b))
  = abs((x-a)-(y-b))
  <= abs(x-a)+abs(y-b)
  <= 2 sqrt((x-a)^2+(y-b)^2).
  $
  よって減法$-$は$RR times RR$上の連続関数である。
+ 三角不等式より$r = sqrt((x-a)^2+(y-b)^2)$とおくと
  $
  abs(x y-a b)
  = abs((x y-x b)+(x b-a b))
  <= abs(x)abs(y-b)+abs(x-a)abs(b)
  <= abs(x-a)abs(y-b)+abs(a)abs(y-b)+abs(x-a)abs(b)
  <= r^2+(abs(a)+abs(b))r.
  $
  ここで、各$(a, b)$ごとに$lim_(r -> 0+) (r^2+(abs(a)+abs(b))r) = 0$より、
  乗法$times$は$(a, b)$で連続であり$RR times RR$上の連続関数である。
+ 最初に$(a, b)$に十分近い$(x, y)$のみ考えることで$sqrt((x-a)^2+(y-b)^2) < abs(b)/2$、特に$abs(y-b) <= abs(b)/2$で$abs(y) >= abs(b)/2$としてよいことに注意する。
  三角不等式より$r = sqrt((x-a)^2+(y-b)^2)$とおくと
  $
  abs(x/y-a/b)
  = (abs(x b-a y))/(abs(b)abs(y))
  = (abs((x b-x y)+(x y-a y)))/(abs(b)abs(y))
  <= (abs(x)abs(y-b))/(abs(b)abs(y))+abs(x-a)/abs(b)
  <= 2 (r^2+abs(b) r)/(abs(b)^2)+r/abs(b).
  $
  ここで、各$(a, b)$ごとに$lim_(r -> 0 +) (2 (r^2+abs(b) r)/(abs(b)^2)+r/abs(b)) = 0$より、除法$div$は$(a, b)$で連続であり$RR times (RR\\{0})$上の連続関数である。
+ 一般に
  $
  max{ x, y } = (x+y)/2+abs(y-x)/2
  $
  が成り立ち、連続関数の合成になっているので、最大$max$は$RR times RR$上の連続関数である。

+ 一般に
  $
  min{ x, y } = (x+y)/2-abs(y-x)/2
  $
  が成り立ち、連続関数の合成になっているので、最小$min$は$RR times RR$上の連続関数である。
]

連続性を調べるときにしばしば直面するのが$N = 2$で1点$(a, b)$がくりぬかれた領域では連続だが、その点は極限を考えなければならない場合である。
そのような時は極座標$(x, y) = (a+r cos theta, b+r sin theta)$ ($r > 0$)を用いるとよい。

#proposition([極限と極座標])[
$(a, b) in RR times RR$として、$f$を$(RR times RR)\\{(a, b)}$上で定義された二変数実数値関数とする。
このとき、二変数関数$f(x, y)$が$(x, y) -> (a, b)$で実数$l$に収束することの必要十分条件は
$
lim_(r -> 0+) sup_theta abs(f(a+r cos theta, b+r sin theta)-l|) = 0
$
が成り立つことである。

特に、$f$を$RR times RR$上で定義された二変数実数値関数とするとき、
二変数関数$f(x, y)$が$(x, y) = (a, b)$で連続であることの必要十分条件は
$
lim_(r -> 0+) sup_theta abs(f(a+r cos theta, b+r sin theta)-f(a, b)) = 0
$
が成り立つことである。
]

#example[
二変数関数
$
f(x, y) = cases(
  (x y)/sqrt(x^2+y^2) & ((x, y) eq.not (0, 0))",",
  0 & ((x, y) = (0, 0)),
)
$
を考える。
このとき
$
abs(f(r cos theta, r sin theta)-f(0, 0))
= abs(r^2 cos theta sin theta)/r
= r abs(cos theta sin theta)
<= r
-> 0
quad(r -> 0).
$
したがって、$f$は$(0, 0)$で連続であるので、$RR times RR$上の連続関数である。
]

#example[
二変数関数
$
f(x, y) = cases(
  (x y)/(x^2+y^2) & ((x, y) eq.not (0, 0))",",
  0 & ((x, y) = (0, 0)),
)
$
を考える。
この関数は原点$(0, 0)$を除いた領域では連続であるが、原点の周りの点$(x, y) = (r cos theta, r sin theta)$においては
$
f(r cos theta, r sin theta) = cos theta sin theta
$
で$r -> 0$としたときの極限$cos theta sin theta$が$theta$に依る（例えば$theta = 0$だとこの値は$0$だが$theta = pi/4$だと$1/2$で一定でない）。
つまり極限$lim_((x, y) -> (0, 0)) f(x, y)$が存在しないので、$f(x, y)$は$(x, y) = (0, 0)$で連続でない。
] <t_non_cont>

== 開集合と閉集合と有界閉集合

点集合$A$を考える。 つまり、$A$は$N$次元空間$RR^N$の部分集合である。

$A$が開集合であるとは境界がないつまり開いているということで、境界上の点はどんなに近くを見ても$A$の点と$A$でない点が存在するものなので、次のように表現される。

#definition([開集合])[
$A$を$N$次元点集合とする。
ここで、任意の点$a in A$に対して半径$r > 0$が存在して$B_r (a) subset A$が成り立つとき、$A$は_開集合_であるという。
]

閉集合は何かについて閉じているということであるが、極限について閉じている場合をいい、以下のとおりである。

#definition([閉集合])[
$A$を$N$次元点集合とする。 ここで、任意の収束する$A$上の点列$(a_n)$ ($a_n in RR^N$)に対して極限$a$が$A$の元であるとき、$A$は_閉集合_であるという。
]

#remark[
定義より空集合$nothing$と空間全体$RR^N$はともに開集合であり閉集合でもある。
]

開集合と閉集合は次の命題の意味で表裏の関係にある。

#proposition([開集合と閉集合の関係])[
$A$を$N$次元点集合とする。

- $A$が開集合であるとき、補集合$A^c$は閉集合である。
- $A$が閉集合であるとき、補集合$A^c$は開集合である。
]

#proof[
- $A$を開集合とするとき、補集合$A^c$上の収束する点列$(a_n)$と極限$a$を考える。
  ここでもし$a in A$だとすると$B_r (a) subset A$となる半径$r > 0$が存在する。
  ここで点列の収束性から十分大きい自然数$n$に対して$a_n in B_r (a) subset A$であり、$a_n in A^c$に矛盾する。
  したがって$a in A^c$なので、$A^c$は閉集合である。
- $A$を閉集合として、補集合$A^c$上の点$a in A^c$を考える。
  ここでもし$A^c$が開集合でないとすると、任意の$r > 0$に対して$d(a, x) < r$かつ$x in (A^c)^c = A$となる点$x$が存在する。
  ここで$n = 1, 2, 3, dots$ごとに$r = 1/n$を考えて上記の条件を満たす$x$が存在することからそのうち一つを$a_n$とおく。
  そうして点列$(a_n)_(n = 1)^oo$を定めるとき、$(a_n)$は$A$上の点列であり$a in A^c$に収束するがこれは$A$が閉集合であることに矛盾する。
  したがって$A^c$は開集合である。
]

開集合・閉集合の判定は連続関数をもとに考えるとよい。

#proposition([開集合・閉集合と連続関数])[
$f(x)$を$N$次元空間上の連続関数とする。
このとき、次の$N$次元点集合はいずれも開集合である。

- ${ x in RR^N mid(|) f(x) eq.not 0 }$.
- ${ x in RR^N mid(|) f(x) < 0 }$.
- ${ x in RR^N mid(|) f(x) > 0 }$.

また、次の$N$次元点集合はいずれも閉集合である。

- ${ x in RR^N mid(|) f(x) = 0 }$.
- ${ x in RR^N mid(|) f(x) <= 0 }$.
- ${ x in RR^N mid(|) f(x) >= 0 }$.
]

#proof[
$A = { x in RR^N mid(|) f(x) <= 0 }$が閉集合であることを示す。
$A$上の収束する点列$(a_n)$とその極限$a$を考える。
このとき、$f(a_n) <= 0$であり、$f$が連続関数なので$f(a_n) -> f(a)$であることから、$f(a) <= 0$が従う。
よって、$a in A$であるから、$A$は閉集合である。

$<=$が$=$や$>=$になっている場合も同様に示される。
開集合の方は任意の集合$B$に対して$f^(-1) (B) = (f^(-1) (B^c))^c$から従う。
]

#remark[
一般に定義域も値域も開集合・閉集合が定義されるような集合（位相空間という）であるならば、
開集合の連続関数による逆像は開集合で、閉集合の連続関数による逆像は閉集合となっている。
]

開集合・閉集合は共通部分と和集合について閉じている。

#proposition([開集合・閉集合の演算])[
$A$, $B$を$N$次元点集合とする。

- $A$, $B$が開集合であるとき、共通部分$A sect B$も開集合である。
- $A$, $B$が開集合であるとき、和集合$A union B$も開集合である。
- $A$, $B$が閉集合であるとき、共通部分$A sect B$も閉集合である。
- $A$, $B$が閉集合であるとき、和集合$A union B$も閉集合である。
]

#proof[
- $A$, $B$が開集合として、共通部分$A sect B$を考える。
  任意の点$a in A sect B$を固定すると、
  $a in A$で$A$は開集合なので、$B_(r_A) (a) subset A$となる半径$r_A > 0$が存在し、
  $a in B$で$B$は開集合なので、$B_(r_B) (a) subset B$となる半径$r_B > 0$が存在する。
  よって$r = min{ r_A, r_B } > 0$とおくと、$B_r (a) subset A sect B$となるので、$A sect B$は開集合である。
- $A$, $B$が開集合として、和集合$A union B$を考える。
  任意の点$a in A union B$を固定する。
  - $a in A$のとき、$A$は開集合なので、$B_r (a) subset A subset A union B$となる半径$r > 0$が存在する。
  - $a in B$のとき、$B$は開集合なので、$B_r (a) subset B subset A union B$となる半径$r > 0$が存在する。
  よっていずれの場合でも$A union B$は開集合であることが示された。
- 残る閉集合に関する命題はド・モルガンの法則$A sect B = (A^c union B^c)^c$, $A union B = (A^c sect B^c)^c$が成り立つことから従う。
]

有界な閉集合である_有界閉集合_が一次元での有界閉区間に相当し今後いろいろなところで出てくる。

#proposition[
有界閉矩形は有界閉集合である。
]

#proof[
有界閉矩形$[a_1, b_1] times dots times [a_N, b_N]$上の点列$(x_n) = ((x_n^1, dots, x_n^N))$が$x = (x^1, dots, x^N)$に収束したとすると、
各$i = 1, dots, N$に対して$a_i <= x_n^i <= b_i$なので$a_i <= x^i <= b_i$、つまり極限$x = (x^1, dots, x^N)$は$[a_1, b_1] times dots times [a_N, b_N]$の元である。
したがって、$[a_1, b_1] times dots times [a_N, b_N]$は閉集合である。
有界閉矩形は明らかに有界なので、有界閉集合である。
]

#theorem([ボルツァーノ・ワイエルシュトラスの定理])[
有界な点列つまりある有界閉矩形上の点列は収束する部分列を持つ。
]

#proof[
$(x_n) = ((x_n^1, dots, x_n^N))$を有界閉矩形$[a_1, b_1] times dots times [a_N, b_N]$上の点列とする。
このとき、$a_1 <= x_n^1 <= b_1$であるから、一次元のボルツァーノ・ワイエルシュトラスの定理から部分列$(x_(n_k)^1)$であってある実数$x^1$に収束するものが存在する。
さらに$a_2 <= x_(n_k)^2 <= b_2$であるから、再度一次元のボルツァーノ・ワイエルシュトラスの定理から部分列$(x_(n_(k_j))^2)$であってある実数$x^2$に収束するものが存在する。
これを繰り返していけば点列$(x_n)$のある部分列$(x_(n_k))$であってある点$x = (x^1, dots, x^N)$に収束するものが取れる。
]

#corollary[
$X$を有界閉集合とする。
このとき任意の$X$上の点列$(a_n)$に対して、収束する部分列が存在してその極限は$X$の元である。
]

#proof[
$X$は有界閉矩形で被覆できるので、ボルツァーノ・ワイエルシュトラスの定理より、点列$(a_n)$は少なくとも部分列を取れば収束する。
さらに$X$は閉集合なので、極限は$X$の元である。
]

$N$次元空間上の有界閉集合はしばしば_コンパクト集合_とも呼ばれる。

#proposition[
$X$を有界閉集合として、$f$を$X$上の関数、$l$を定数とする。
ここで任意の収束する点列$(a_n)$に対して$(f(a_n))$が$l$に収束するとき、
任意の（収束するとは限らない）点列$(a_n)$に対して$(f(a_n))$は$l$に収束する。
] <t_cptfconv>

有界閉集合上の点列なので部分列を取れば収束するが、この定理の重要な点は部分列を取らなくても$(f(a_n))$は収束することにある。

#proof[
$(a_n)$の任意の部分列$(a_(n_k))$に対して収束部分列$(a_(n_(k_l)))$が取れて、
仮定より$(f(a_(n_(k_l))))$は$l$に収束するので$f(a_n)$は$l$に収束する。
]

== 最大値最小値定理

一変数関数では有界閉区間に対して成立する最大値最小値定理は多変数関数では有界閉集合に対して自然に拡張される。

#theorem([最大値最小値定理])[
関数$f$を空でない有界閉集合$X$上の実数値連続関数とする。
この時、関数$f$は$X$上で最大と最小を持つ。
]

証明は区間縮小法によってもできるが、ここではボルツァーノ・ワイエルシュトラスの定理を用いた簡潔なものを紹介する。

#proof[
最大について示す。
$f$の$X$上の上限を$l in macron(RR)$とおくと、$X$が空集合でないので$l eq.not -oo$であり、$f(a_n) -> l$となる$X$上の点列$(a_n)$が存在する。
ここで$X$は有界閉集合より$(a_n)$は収束する部分列$(a_(n_k))$をもち極限を$a in X$とおくと、$f$は連続関数なので$f(a_(n_k)) -> f(a)$である。
よって$l = f(a)$であり、上限を達成することができたので、$f$は$X$上で最大となる。

最小についても同様なので証明は省略する。
]

この定理からすぐわかる例として$A$を空でない有界閉集合、$x$を点とすると、連続関数$f(a) = d(a, x)$は$A$上で最大値と最小値を持つことが挙げられる。
実際には最小値については有界性が必要ない。

#proposition[
$A$を空でない閉集合、$x$を点とすると、距離関数$f(a) = d(a, x)$は$A$上で最小値を持つ。
]

#proof[
$A$は空集合でないので、半径$R$を十分大きく取ると$A$と閉円板$overline(B)_R (x)$は共通部分を持つ。
そのため連続関数$f(a)$は$A sect overline(B)_R (x)$上で最大値と最小値を取る。
最小値を$f(hat(a))$とおくと、$d(hat(a), x) <= R$より$f(hat(a)) <= R$である。
$overline(B)_R (x)$の外では$f(a) = d(a, x)$の値は$R$より大きいので、$f(hat(a))$は$A$上の最小値にもなっている。
]

この最小値を集合$A$から点$x$への_距離_といい、$d(A, x)$と表す。

#proposition[
空でない閉集合$A$から点$x$の距離関数$f(x) = d(A, x)$は連続関数である。
]

#proof[
$x, y in RR^N$に対して$d(A, x) = d(a, x)$となる点$a in RR^N$が存在するので、
$
d(A, y)-d(A, x) = d(A, y)-d(a, x) <= d(a, y)-d(a, x) <= d(x, y)
$
が成り立つ。
$x$と$y$を入れ替えて同様のことをすれば$abs(d(A, y)-d(A, x)) <= d(x, y)$がわかり、$d(A, x)$は$x$について連続である。
]

ここから直ちに次がわかる。

#theorem([最小距離])[
$A$を空でない有界閉集合、$B$を空でない閉集合とすると、距離関数$d(x, y)$は$A times B$上で最小値を持つ。
] <t_distmin>

== 多変数の中間値の定理

最大値最小値定理と比較して中間値の定理は幾分人工的な拡張である。

まず、$N$次元の議論を一次元に帰着させるために弧状連結性を導入する。

#definition([弧状連結])[
$X$を$N$次元点集合とする。 ここで、$X$の任意の二点$x$, $y$に対して$x$と$y$を結ぶ$X$上の連続な曲線$c: [0, 1] -> X$が存在するとき、$X$は弧状連結であるという。
]

#theorem([中間値の定理])[
関数$f$を弧状連結な集合$X$上の実数値連続関数とする。
このとき、任意の$x, y in X$に対して、$f$は$X$上で$f(x)$と$f(y)$の間の値を全て取る。
言い換えると、簡単のため$f(x) <= f(y)$とすると、$[f(x), f(y)] subset f(X)$である。
]

#remark[
この定理は抽象化すると弧状連結集合の連続関数による像は弧状連結であると表現できる。
]

#proof[
弧状連結性から$x$と$y$を結ぶ$X$上の連続な曲線$c: [0, 1] -> X$が存在する。
ここで$f$と$c$の合成関数$f(c(t)): [0, 1] -> RR$は連続関数であり$f(c(0)) = f(x)$,
$f(c(1)) = f(y)$なので、一変数での中間値の定理から$f(x)$と$f(y)$の間の値を全て取る。
よって、$f$は$f(x)$と$f(y)$の間の値を全て取る。
]

この定理は実質的に一変数の中間値の定理と同等である。
より多次元らしさがある拡張が次のブラウアーの不動点定理として知られる定理である。

#theorem([ブラウアーの不動点定理])[
有界閉矩形$E$からそこへの連続な変換$F$は不動点、つまり$F(x) = x$となる点$x in E$を持つ。
]

しかしながらブラウアーの不動点定理の証明は大変難しく本テキストの範囲を逸脱するので詳細は省略する。

中間値の定理（の高次元版）は弧状連結の定義から直ちに従ったが、偏微分に関するいくつかの定理を考える際には曲線を軸に沿った折れ線で取り直す必要がある。
次の補題はそのことを保証する。

#lemma[
$X$を$RR^N$の開集合として、$X$の二点を結ぶ$X$上の連続な曲線$c: [0, 1] -> X$が存在するとする。
この時、ある$l > 0$が存在して曲線上のすべての点$c(t) = (x_1, dots, x_N)$に対して、$[x_1-l, x_1+l] times dots times [x_N-l, x_N+l] subset X$が成り立つ。
特にそのような二点は$x_1, dots, x_N$軸に並行ないくつかの線分で結ばれる。
] <t_pcurv>

#proof[
曲線を$C$、$X$の補集合を$X^c$とおいて、関数$x in C, y in X^c |-> d(x, y)$が正の最小値を持つことを示せばよい。
まず$X = RR^N$の時は$l$は何でもよいので、除外する。
仮定より、$C$は空でない有界閉集合で$X^c$は閉集合でなので、@t_distmin より最小距離$m$が存在する。
あとは$l = 1/sqrt(N) m$とすればよい。
]

== 一様連続性

一変数の時と同様に多変数でも一様連続性が定義され、いくつかの場面で登場する。

#definition([一様連続関数])[
$N$次元点集合$X$上の実数値関数$f$に対して、度合い関数$omega$が存在して任意の$x, y in X$に対して
$
abs(f(y)-f(x)) <= omega (d(x, y))
$
が成り立つとき、$f$は$X$上の_一様連続関数_であるという。
]

重要なこととして有界閉集合上の連続関数は自動的に一様連続関数である。

#theorem([有界閉集合上の連続関数、ハイネ・カントールの定理])[
有界閉集合$X$上の実数値連続関数$f$は$X$上一様連続である。
]

#proof[
$f$が一様連続でないと仮定すると、ある$epsilon > 0$が存在して任意の$delta > 0$に対して$x, y in X$, $d(x, y) < delta$が存在して$abs(f(x)-f(y)) >= epsilon$である。
ここで$n = 1, 2, 3, dots$に対して$delta = n^(- 1)$として取れば、$x_n, y_n in X$が存在して$d(x_n, y_n) < n^(-1)$, $abs(f(x_n)-f(y_n)) >= epsilon$が成り立つ。
$X$は有界閉集合なのでボルツァーノ・ワイエルシュトラスの定理より部分列を取れば数列$(x_n)$, $(y_n)$は収束し極限をそれぞれ$macron(x)$, $macron(y)$とおくと、
$d(x_n, y_n) < n^(-1) -> 0$より$macron(x) = macron(y)$である。
さらに$macron(x) = macron(y) in X$もわかる。
ここで、$f$は$macron(x) = macron(y)$で連続より
$
epsilon <= abs(f(x_n)-f(y_n)) -> abs(f(macron(x))-f(macron(y))) = 0
$
となり矛盾が導かれた。 よって関数$f$は$X$上一様連続である。
]

== リプシッツ連続性

一変数の時同様多変数でもリプシッツ連続性が定義され、いくつかの場面で登場する。

#definition([リプシッツ連続関数])[
$N$次元点集合$X$上の実数値関数$f$に対して、非負の定数$L$が存在して任意の$x, y in X$に対して
$
abs(f(y)-f(x)) <= L d(x, y)
$
が成り立つとき、$f$は$X$上の_リプシッツ連続関数_であるという。
そのような$L$の下限をリプシッツ連続関数$f$の_リプシッツ定数_という。
]

リプシッツ連続関数は定義域が何であれ全体集合に拡張できる。

#theorem([リプシッツ連続関数の拡張])[
$f$を$N$次元点集合$X$上のリプシッツ連続関数で$L$をそのリプシッツ定数とする。
この時、$N$次元空間上の関数
$
tilde(f)(x) = inf_(a in X) (f(a)+L d(a, x))
$
は全ての$x in X$に対して$tilde(f)(x) = f(x)$を満たす$RR^N$上のリプシッツ連続関数でそのリプシッツ係数は$L$である。
]

#proof[
]
