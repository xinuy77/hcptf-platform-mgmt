terraform {
  required_providers {
    tfe = {
      source = "hashicorp/tfe"
     version = "0.65.0"
    }
  }
}

provider "tfe" {
   # Configuration options
}

#resource "tfe_workspace" "tfe_provider_demo" {
#  name         = "tfe-provider-demo"
#  organization = "yy-org"
#  project_id   = "prj-beBGAw9yrs1668V2"
#  tag_names    = ["aws", "test"]
#}


#module "workspacer" {
#  source  = "alexbasista/workspacer/tfe"
#  version = "0.12.0"

#  organization   = var.organization
#  workspace_name = "hcptf-branch-based-example-ws-dev"
#  workspace_desc = "Description of my new Workspace."
# workspace_tags = ["tag1", "tag2", "tagz"]
#  project_name   = "hcptf-platform-mgmt"
#
#  vcs_repo = {
#    identifier     = "xinuy77/tf-bc"
#    branch         = "develop"
#    oauth_token_id = "ot-boB2UZtPjbwt82mH"
#  }
#
#  tfvars = {
#    pet_length = 10
#    pet_prefix  = "fluffy"
#    pet_separator = "-"
#  }
#}

module "random_pets_projecter" {
  source  = "alexbasista/projecter/tfe"
  version = "0.1.1"

  organization = var.organization
  project_name = "random-pets-application"

  team_access = {
    tf-team = "admin"
    random-pets-app-team = "write"
  }
}