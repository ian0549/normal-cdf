options( digits = 16 )
library( jsonlite )

mu = 0
sigma = 2
x = c( -5, -2.5, 0, 2.5, 5 )
y = pnorm( x, mu,sigma )

cat( y, sep = ",\n" )

data = list(
	mu = mu,
	sigma = sigma,
	data = x,
	expected = y
)

write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/number.json" )
