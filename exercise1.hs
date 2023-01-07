d x = x + x
e = e
f x y = x * y
g x = f x (d x)
h x y = if x <= 1 then d x + 1 else y

k x = x*x
gg x = f x (d x)
q x = d (if x < 1 then 2 else 3)
r x = d (if (x < 1) then 2 else 3)
s a b = h (d a) (f a b)

bisektion f a b = let m = (a+b) / 2 in if abs (b-a) < 10^^(-9) then m else if f a * f m < 0 then bisektion f a m else bisektion f m b

-- Funktionsaufruf bisektion sin 3 4 Ausgabe: ca. PI -> Nullstelle bei PI

-- wenn ich eps als argument nehme kommt ein fehlerhaftes Ergebnis aus ich habe nicht verstanden warum
-- Funktionsaufruf bisektion2 sin 3 4 10^^(-9) Ausgabe: ca. 1.288
bisektion2 f a b eps = let m = (a+b) / 2 in if abs (b-a) < eps then m else if f a * f m < 0 then bisektion2 f a m eps else bisektion2 f m b eps
