let sieve max = 
  let is_prime = Array.make (max+1) true in

  is_prime.(0) <- false;
  is_prime.(1) <- false;

  for i = 2 to max do 

    if is_prime.(i) && i * i <= max then begin
      let j = ref (i * i) in 

      while !j <= max do 
        is_prime.(!j) <- false;
        j := !j + i
      done
      
    end
  done;
  for i = 0 to max do 
    if is_prime.(i) then Printf.printf "%d " i
  done

let () = 
  sieve(int_of_string(Sys.argv.(1)))





