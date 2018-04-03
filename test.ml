
let () =
  Random.self_init ();
  let check n =
    let s = String.init n (fun _i -> Char.chr (Random.int 256)) in
    let c = Snappy.compress s in
    assert (true = Snappy.is_valid c);
    assert (false = Snappy.is_valid s);
    assert (String.length s = Snappy.get_uncompressed_size c);
(*     assert (try let (_:string) = Snappy.uncompress s in false with Snappy.Error _ -> true); *)
    assert (s = Snappy.uncompress c)
  in
  for n = 0 to 1024 do check n done;
  for n = 0 to 1024 do check (Random.int 16384 + 16384) done;
  ()

