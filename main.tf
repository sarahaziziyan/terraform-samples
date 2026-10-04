module "ec2" {
  source        = "./module/ec2"
  count         = 4
  instance_name = "coloring_app-${count.index}"
}