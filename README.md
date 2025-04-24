# Screaming Frog SEO Spider Docker Image
This Docker image is based on Ubuntu and installs Screaming Frog SEO Spider version 21.4 along with necessary dependencies.
The container is designed to run Screaming Frog headless.

## Building the Docker Image
To build the Docker image, run the following command in the directory containing the Dockerfile:

`docker build -t screamingfrog-seo-spider .`

### Important
To build this Docker image on macOS with Apple Silicon (ARM chips), you need to use the --platform argument to ensure the container runs properly:

`docker build --platform linux/amd64 -t screamingfrog-seo-spider .`

## Running the Docker Container
To run the Docker container, use the following command:

`docker run -it screamingfrog-seo-spider`

## Headless Usage Instructions
To check if Screaming Frog SEO Spider in headless mode works, you can use the following command:

`screamingfrogseospider --help`

To run Screaming Frog SEO Spider in headless mode, use the following command:

`screamingfrogseospider --crawl <url> --headless --save-crawl --output-folder <folder> --timestamped-output`

Replace <url> with the URL you want to crawl and <folder> with the directory where you want to save the crawl data.

More details about using Screaming Frog CLI can be found on the [official site](https://www.screamingfrog.co.uk/seo-spider/user-guide/general/#command-line)

## Notes
1. This image installs Screaming Frog SEO Spider version 21.4.
2. The EULA is accepted automatically during the build process.