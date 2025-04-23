# Screaming Frog SEO Spider Docker Image
This Docker image is based on Ubuntu and installs Screaming Frog SEO Spider version 21.4 along with necessary dependencies.

## Building the Docker Image
To build the Docker image, run the following command in the directory containing the Dockerfile:
`docker build -t screamingfrog-seo-spider .`

## Running the Docker Container
To run the Docker container, use the following command:
`docker run -it screamingfrog-seo-spider`

## Notes
1. This image installs Screaming Frog SEO Spider version 21.4.
2. The EULA is accepted automatically during the build process.