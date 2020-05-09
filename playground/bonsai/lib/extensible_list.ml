open! Core_kernel
(* open Bonsai_web *)

module Model = struct
  type t =
    { data : unit Int.Map.t
      ; count : int
    }
      [@@deriving fields, equal, sexp]
  
  let default = { data = Int.Map.empty; count = 0 }
end

module Action = struct
  type t =
    Add
  | Remove of int
                [@@deriving sexp_of]
end

(* let state_component =
 *   Bonsai.state_machine
 *     (module Model)
 *     (module Action)
 *     [%here]
 *     ~default_model:Model.default
 *     ~apply_action:(fun ~inject:_ ~schedule_event:_ _ model -> function
 *       | Action.Add ->
 *         let key = model.Model.count in
 *         { data = Map.add_exn model.data ~key ~data:(); count = key + 1 }
 *       | Action.Remove key -> { model with data = Map.remove model.Model.data key })
 * ;;   *)



