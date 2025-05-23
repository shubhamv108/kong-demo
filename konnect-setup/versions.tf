terraform {
  required_providers {
    konnect = {
      source = "kong/konnect" # ✅ must match root module exactly
    }
  }
}
