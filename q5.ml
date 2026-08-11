(* Reverse a list *)

let rec rev l = 
  match l with
  | [] -> []
  | x::xs -> rev xs @ [x]