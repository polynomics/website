cd _site
zip -r site.zip .
scp site.zip andrew@45.79.140.147:
ssh andrew@45.79.140.147
# sudo cp site.zip /srv/www/polynomicsgame.com/public_html/site.zip && rm site.zip && cd /srv/www/polynomicsgame.com/public_html/ && sudo unzip -o site.zip && sudo rm site.zip && exit
