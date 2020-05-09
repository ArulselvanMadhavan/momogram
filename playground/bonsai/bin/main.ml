open Bonsai_web
open Bonsai_examples

let (_ : _ Start.Handle.t) =
  Start.start_standalone
    ~initial_input:()
    ~bind_to_element_with_id:"counter"
    Counter.application

