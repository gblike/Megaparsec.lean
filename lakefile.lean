import Lake
open Lake DSL

package Megaparsec

@[default_target]
lean_lib Megaparsec

require LSpec from git
  "https://github.com/lurk-lab/LSpec" @ "550123b4a9846acf5f402c696111453baafb44be"

require YatimaStdLib from git
  "https://github.com/gblike/YatimaStdLib.lean" @ "624989d118e9e090fedc6a91a3514a93f231bcd9"

require Straume from git
  "https://github.com/gblike/straume" @ "a7b2192ce927419577923bae9930f42fbbf942aa"

@[default_target]
lean_exe megaparsec {
  root := "Main"
}

lean_exe Tests.Parsec
lean_exe Tests.IO
lean_exe Tests.StateT
lean_exe Tests.Lisp
