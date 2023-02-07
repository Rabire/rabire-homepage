server {
    listen 80;
    server_name rabire.com;

    root /home/ubuntu/projects/rabire-homepage;
    index index.html;

    location / {
        try_files $uri $uri/ /index.html;
    }
}