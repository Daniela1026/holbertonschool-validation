# DEPLOYMENT

## What is in the archive and how to unarchive it?

- In the archive 'awesome-website.zip', you will find the 'dist/' folder
- Use the command line: `unzip awesome-website.zip`
to unarchive it in your current directory

## How to verify the version
  
- Run git tag

## What are the commands to start and stop the application?

- Generate the go-hugo website by running the command `make build`
- Clean the gi-hugo website by running the cmmand `make clean`

## How to customize where the application logs are written?

- Logs are created by the github actions and stored in the respective runner

## How to “quickly” verify that the application is running (healthcheck)?

- Run  the command `hugo server` to verify that the go hugo website is running currectly.
- Then check it out on local host [http://localhost:1313/]
