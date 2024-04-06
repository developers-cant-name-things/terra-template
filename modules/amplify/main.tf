module "amplify_app" {
  source  = "cloudposse/amplify-app/aws"

  access_token = ""

  name = "my-website"
  description  = "Test Amplify App"
  repository   = "https://github.com/cloudposse/amplify-test2"
  platform     = "WEB"
}
