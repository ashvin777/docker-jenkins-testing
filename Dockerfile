# FROM node:boron

# # Create app directory
# WORKDIR /usr/src/app

# # Install app dependencies
# COPY package.json .

# # For npm@5 or later, copy package-lock.json as well
# # COPY package.json package-lock.json ./

# RUN npm install
# # If you are building your code for production
# # RUN npm install --only=production

# # Bundle app source
# COPY . .

# EXPOSE 8080

# CMD [ "npm", "start" ]

# use a node base image
FROM node:7-onbuild

# set maintainer
LABEL maintainer "miiro@getintodevops.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000