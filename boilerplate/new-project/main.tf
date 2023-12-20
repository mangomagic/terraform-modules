# Use ../script/networking.sh to set environment workspace

# Digital Ocean Settings
module "do" {
  source    = "../modules/do-settings"
  workspace = terraform.workspace
}

resource "resource" "this" {

}
