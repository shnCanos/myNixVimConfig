{ ... }:
let cmd = command: "<cmd>${command}<cr>";
in [
  {
    # ADD PROJECT
    key = "<leader>pa";
    action = cmd "AddProject";
    options.desc = "Add Project";
  }
  {
    # (For some reason this gives me an error if I put it in telescope itself)
    key = "<leader>pf";
    action = cmd "Telescope projects";
    options.desc = "Find Projects";
  }
]
