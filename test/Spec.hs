import Aquamarine

main :: IO ()
main = putStrLn $ "hello" $> ["echo 'Hello'", "echo 'Bye'"]
