workspaces = {
  shared       = "terraform/shared"
}

var_sets = {
    test = {
        desc   = "Testing"
        global = false
        vars = {
            a = {
                val       = 1
                sensitive = false
                desc      = "woohoo"
                category  = "env"
            }
            b = {
                val       = 2
                sensitive = true
            }
        }
        workspaces = [
          "workspace1",
          "workspace2",
        ]
    }
}