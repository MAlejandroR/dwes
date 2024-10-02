git add *
git commit -m $1
git push origin main
sudo rm ./public -r
hugo -d public
rsync -avz -e "ssh" ./public/ admin@web.infenlaces.com:web/web.infenlaces.com/public_html/dwes/


