# Docker Container for Packer

This builds a lightweight Docker image containing [Packer](https://packer.io/)
for creating virtual machine images (e.g. AWS EC2 instances).

## Usage

Pass inputs in using volumes and environment variables.

    docker run \
      --rm \
      --tty \
      --interactive \
      --volume /path/to/some/packer.json:/packer.json \
      d11wtq/packer:0.8.5 \
      packer build \
        -var aws_region=$AWS_REGION \
        -var aws_access_key=$AWS_ACCESS_KEY_ID \
        -var aws_secret_key=$AWS_SECRET_ACCESS_KEY \
        /packer.json
