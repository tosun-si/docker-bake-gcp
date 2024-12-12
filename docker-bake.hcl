group "default" {
  targets = ["app", "infra"]
}

target "app" {
  context    = "."
  dockerfile = "app/Dockerfile"
  platforms = ["linux/amd64", "linux/arm64"]
  tags = ["${REPO_URL}/app_bake:${IMAGE_TAG_VERSION_APP}"]
}

target "infra" {
  context    = "."
  dockerfile = "infra/Dockerfile"
  platforms = ["linux/amd64", "linux/arm64"]
  tags = ["${REPO_URL}/infra_bake:${IMAGE_TAG_VERSION_INFRA}"]
}