func :: Int -> Int -> IO()
soma c = func c 0
func c s =
    if (c > 0) then do
        print (s + 1, s + 2, s + 3, "PUM")
        func (c-1) (s+4)
        else do
            return ()