(*
 * Copyright (c) 2016 Jeremy Yallop.
 *
 * This file is distributed under the terms of the MIT License.
 * See the file LICENSE for details.
 *)

(* Foreign function bindings for the Errno tests. *)

open Ctypes

module Stubs (F: Cstubs.FOREIGN) =
struct
  open F

  let struct_stat : [`stat] structure typ = structure "stat"
  let stat = foreign "stat"
      (string @-> ptr struct_stat @-> returning int)
end
