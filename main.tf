module "alb-public" {

  source                    = "./vendor/modules/alb"
  ENV                       = var.ENV 
  ALB_NAME                  = roboshop-public
  internal                  = false
}

module "alb-private" {

  source                    = "./vendor/modules/alb"
  ENV                       = var.ENV 
  ALB_NAME                  = roboshop-private
  internal                  = true

}

# We cannot parametrize anything that's added n the source.
# To limit that, we can use a tool called as Terrafile. All it does is clonnes the remote code from the specified branch and make it locally available.