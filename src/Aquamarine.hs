module Aquamarine where

import Data.List
import Soothsayer ((***))

fp :: String -> String
fp path = "fish_add_path {0}" *** [path]

fn :: String -> String -> [String] -> String
fn name description body = "function {0} -d {1}\n\t{2}\nend" *** [name, description, intercalate "\n\t" body]

(-->) :: String -> String -> String
(-->) abbreviation fullCommand = "abbr -a -g {0} {1}" *** [abbreviation, fullCommand]

($>) :: String -> [String] -> String
($>) name body = "function {0}\n\t{1}\nend" *** [name, intercalate "\n\t" body]
