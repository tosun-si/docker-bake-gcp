variable "PROJECT_ID" {
}

variable "LOCATION" {
  default = "europe-west1"
}

variable "REPO_NAME" {
}

variable "IMAGE_TAG_VERSION_APP" {
}

variable "IMAGE_TAG_VERSION_INFRA" {
}

variable "REPO_URL" {
  default = "${LOCATION}-docker.pkg.dev/${PROJECT_ID}/${REPO_NAME}"
}




