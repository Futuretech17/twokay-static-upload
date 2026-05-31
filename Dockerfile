FROM nginx:alpine

COPY . /usr/share/nginx/html

RUN printf 'server {\n\
    listen 80;\n\
    server_name localhost;\n\
\n\
    root /usr/share/nginx/html;\n\
    index index.html;\n\
\n\
    location / {\n\
        try_files $uri $uri/ /index.html;\n\
    }\n\
}\n' > /etc/nginx/conf.d/default.conf
