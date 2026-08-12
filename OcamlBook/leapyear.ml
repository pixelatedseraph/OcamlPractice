
(* IO Block*)

(* let year = read_int () *)

(* CLI *)
let year = int_of_string Sys.argv.(1) 

let leap = if year mod 4 = 0 && year mod 100 <> 0 then true else false 
let check = match leap with | true -> "True" | false -> "False"
let () = Printf.printf "%d is %s\n" year check
