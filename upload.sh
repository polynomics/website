cd _site
zip -r site.zip .
scp site.zip andrew@45.79.140.147:
ssh andrew@45.79.140.147
# sudo cp site.zip /usr/share/nginx/html/site.zip && rm site.zip && cd /usr/share/nginx/html/ && sudo unzip -o site.zip && sudo rm site.zip && exit
