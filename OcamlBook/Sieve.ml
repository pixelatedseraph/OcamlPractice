let n = read_int ()

let is_prime = Array.make (n+1) true

let () = 
  is_prime.(0) <- false;
  is_prime.(1) <- false;

  let max = truncate @@ sqrt@@  float n in
  for i = 2 to max do 
    if is_prime.(i) then begin
      let j = ref (i * i) in 
      while !j <= n do 
        is_prime.(!j) <- false;
        j := !j + i
      done
    end
  done

let () = 
  for i = 2 to n do
    if is_prime.(i) then Printf.printf "%d " i 
  done
