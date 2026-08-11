(* Read whole file: Approach 2*)
open Printf

let read_whole_chan chan = 
  let buf = Buffer.create 4096 in 
  try 
    while true do
      let line = input_line chan in
      Buffer.add_string buf line;
      Buffer.add_char buf '\n'
    done;
    assert false

  with 
    End_of_file -> Buffer.contents buf

let read_whole_file filename = 
  let chan = open_in filename in
    read_whole_chan chan

let () = 
  let filename = Sys.argv.(1) in
  let str = read_whole_file filename in
  printf "Read %d chars from %s\n" (String.length str) filename