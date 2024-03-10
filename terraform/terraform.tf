terraform {
  cloud {
    organization = "testing-agustin"

    workspaces {
      name = "helops-test"
    }
  }
}