val from_string
  : project:Merlin_lib.Project.t
  -> env:Env.t
  -> local_defs:[`Str of Typedtree.structure | `Sg of Typedtree.signature] list
  -> string
  -> [> `File_not_found of string
      | `Found of string option * Lexing.position
      | `Not_found
      | `Not_in_env of string ]