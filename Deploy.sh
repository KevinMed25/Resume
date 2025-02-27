REPO_DIR="/var/www/html/Resume"

# Apagar NGINX y NGROK
sudo systemctl stop nginx
pkill -f ngrok

echo "NGINX y NGROK detenidos."

# Actualizar el repositorio
echo "Actualizando el repositorio..."
cd "$REPO_DIR" || exit
git pull

echo "Repositorio actualizado..."

# Encender NGINX
sudo systemctl start nginx
echo "NGINX iniciado"

#Encender NROK
echo "Encendiendo NROK..."
sleep 5
ngrok http 80