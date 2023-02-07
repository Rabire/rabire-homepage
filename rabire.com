server {
    listen 33;
    server_name rabire.com www.rabire.com;

    root /home/ubuntu/projects/rabire-homepage;
    index index.html;

    location / {
        try_files $uri $uri/ /index.html;
    }
}