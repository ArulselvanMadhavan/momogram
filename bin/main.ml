open Opium.Std

let js = Middleware.static ~local_path:"./_build/default/frontend" ~uri_prefix:"/js" ()

let index = Middleware.static ~local_path:"./public" ~uri_prefix:"/" ()

let root = get "/" (fun _req -> redirect' (Uri.of_string "/index.html"))

let () =
  print_endline (Sys.getcwd ());
  App.port 3001 App.empty |> middleware js |> middleware index |> root |> App.run_command
