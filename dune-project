(lang dune 2.0)

(name momogram)

(version 0.1.0)

(authors "Arulselvan Madhavan")
(maintainers "Arulselvan Madhavan")

(package
 (name momogram)
 (synopsis "TODO")
 (description "TODO")
 (depends
  (dune (>= 1.11.3))

  (ocaml (>= 4.08.0))
  (core_kernel (>= v0.12.2))

  (js_of_ocaml (>= 3.4.0))
  (js_of_ocaml-ppx (>= 3.4.0))
  (js_of_ocaml-ppx_deriving_json (>= 3.4.0))
  (js_of_ocaml-lwt (>= 3.4.0))

  (ppx_deriving (>= 4.4))
  
  ; backend deps
  (opium (>= 0.17.1))
))
