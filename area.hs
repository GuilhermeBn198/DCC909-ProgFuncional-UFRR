main = do
	putStrLn("Digite o raio: ")
	raio <- readLn :: IO Double
	putStrLn ("O valor da area da circunferencia eh: "++show(3.14159*(raio*raio)))