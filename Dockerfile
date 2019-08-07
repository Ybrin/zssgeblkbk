##################
### production ###
##################

# base image
FROM nginx:1.15.7-alpine

# copy artifact build from the 'build environment'
COPY . /usr/share/nginx/html

# copy custom nginx config
COPY ./nginx-custom.conf /etc/nginx/conf.d/default.conf

# set workdir to html directory
WORKDIR /usr/share/nginx/html

# expose port 80
EXPOSE 80

# run nginx
CMD ["./docker-run.sh"]
