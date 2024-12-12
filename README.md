# docker-bake-gcp

This project shows how to use Docker Bake with several use cases and how to build and publish the images
in Google Cloud Artifact Registry.

An example of CI CD pipeline is also showed with Cloud Build.


## Build the images with Docker Bake locally

```bash
docker buildx bake -f vars.hcl -f docker-bake.hcl
```

## Build and publish the images with Docker Bake locally

```bash
docker buildx bake -f vars.hcl -f docker-bake.hcl --push
```

## Build and publish the images with Docker Bake via Cloud Build

```bash
gcloud builds submit \
    --project=$PROJECT_ID \
    --region=$LOCATION \
    --config build-and-publish-images-artifact-registry.yaml \
    --substitutions _REPO_NAME="$REPO_NAME",_IMAGE_TAG_VERSION_APP="$IMAGE_TAG_VERSION_APP",_IMAGE_TAG_VERSION_INFRA="$IMAGE_TAG_VERSION_INFRA" \
    --verbosity="debug" .
```