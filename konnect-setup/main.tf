module "control_plane_poc" {
  source = "./modules/control_planes/poc"
  control_plane_name = var.control_plane_name
}
