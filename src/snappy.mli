
exception Error of string

val compress : string -> string
val is_valid : string -> bool
val get_uncompressed_size : string -> int
val uncompress : string -> string

val compress_sub : string -> int -> int -> string
val is_valid_sub : string -> int -> int -> bool
val get_uncompressed_size_sub : string -> int -> int -> int
val uncompress_sub : string -> int -> int -> string

val unsafe_compress : string -> int -> int -> string
val unsafe_is_valid : string -> int -> int -> bool
val unsafe_get_uncompressed_size : string -> int -> int -> int
val unsafe_uncompress : string -> int -> int -> string

