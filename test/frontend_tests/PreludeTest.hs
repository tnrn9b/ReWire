x :: Bool
x = True

y :: Bool
y = x && x

loop :: Bool -> ReT Bool Bool I ()
loop a = do
  b <- signal ((zookus . zookus) a)
  loop (a && x && y)

zookus :: Bool -> Bool
zookus x = fst (x,x)

main :: ReT Bool Bool I ()
main = loop False

start :: ReT Bool Bool I ()
start = main
