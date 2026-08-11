(* Palindrome *)

let is_palindrome u =
  let rev_u = List.rev u in
    if rev_u = u then true else false

    