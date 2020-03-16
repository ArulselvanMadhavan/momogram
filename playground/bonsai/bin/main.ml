open Bonsai_web
open Bonsai_examples

let (_ : _ Start.Handle.t) =
  Start.start_standalone
    ~initial_input:()
    ~initial_model:Counter.initial_model
    ~bind_to_element_with_id:"app"
    Counter.application_component

