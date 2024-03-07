module "alb-public" {

  source                    = "./vendor/modules/alb"
  ENV                       = var.ENV 
}

module "alb-private" {

  source                    = "./vendor/modules/alb"
  ENV                       = var.ENV 
}

# We cannot parametrize anything that's added n the source.
# To limit that, we can use a tool called as Terrafile. All it does is clonnes the remote code from the specified branch and make it locally available.