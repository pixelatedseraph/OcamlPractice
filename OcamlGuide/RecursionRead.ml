(* Read by recursion *)
open Printf

let read_whole_chan chan = 
  let but = Buffer.create 4096 in
  let rec loop () = 
    let line = input_line chan in
    Buffer.add_string buf line;
    Buffer.add_char buf '\n';
    loop()
  in 
    try loop() with
    End_of_file -> Buffer.contents buf