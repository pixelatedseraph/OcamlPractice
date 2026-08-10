(* Tail of a list*)

(* last : 'a list  ->  'a option*)

let rec last user_list = 
  match user_list with
  | [] -> None
  | [x] -> Some x
  | _ :: xs -> last xs


