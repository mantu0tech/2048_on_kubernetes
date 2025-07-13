FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*


# WORKDIR /2048

COPY . /usr/share/nginx/html/ 



EXPOSE 80
# CMD [ "npm", "start" ]
CMD ["nginx", "-g", "daemon off;"]
