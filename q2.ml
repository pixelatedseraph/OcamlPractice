(* Last two elements of a list*)

(* last_two : 'a list -> ('a * 'a) option *)

let rec last_two user_list =
  match user_list with
  | [] -> None
  | [x;y] -> Some (x,y)
  | [x] -> None
  | x :: xs -> last_two xs