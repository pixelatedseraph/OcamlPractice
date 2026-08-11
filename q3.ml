(* Nth Element of a list *)
let rec at u = function
| [] -> None
| x::xs -> if u = 0 then Some x else at(u-1) xs