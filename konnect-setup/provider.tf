provider "konnect" {
  personal_access_token = var.konnect_pat
  server_url            = lookup(
    {
      "us" = "https://us.api.konghq.com"
      "eu" = "https://eu.api.konghq.com"
      "in" = "https://in.api.konghq.com"
    },
    var.region,
    "https://in.api.konghq.com" # fallback
  )
}
