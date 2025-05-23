output "konnect_gateway_service_httpbin_id" {
  value       = konnect_gateway_service.httpbin.id
  description = "konnect_gateway_service_httpbin_id"
}

output "konnect_gateway_route_httpbin_route_get_httpbin_id" {
  value       = konnect_gateway_route.httpbin_route_get_httpbin.id
  description = "konnect_gateway_route_httpbin_route_get_httpbin_id"
}
