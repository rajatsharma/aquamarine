module Aquamarine where

import Soothsayer ((***))

abbr :: String -> String -> String
abbr abbreviation fullCommand = "abbr -a -g {0} {1}" *** [abbreviation, fullCommand]

fishAddPath :: String -> String
fishAddPath path = "fish_add_path {0}" *** [path]

functionWithDescription :: String -> String -> [String] -> String
functionWithDescription name description body = "function {0} -d {1}\n\t{2}\nend" *** [name, description, unlines body]

function :: String -> [String] -> String
function name body = "function {0}\n\t{1}end" *** [name, unlines body]
