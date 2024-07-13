FROM cloudflare/cloudflared:latest

# Instalar sudo (ejemplo con Ubuntu)
RUN apt-get update && apt-get install -y sudo

# Agregar un usuario con privilegios sudo
RUN useradd -m user && echo "matias:catolica001" | chpasswd && adduser user sudo

# Establecer el usuario por defecto
USER user


# Comando a ejecutar al iniciar el contenedor
CMD ["docker run cloudflare/cloudflared:latest tunnel --no-autoupdate run --token eyJhIjoiYmNjN2ViZmFjYTVkODg4Mzc5NjgxNWM5YTI1NWM1MDIiLCJ0IjoiODg3ZWY4MWMtZGQ0MS00OGJhLTk3NjgtYjAwMDA2NDU0NDBjIiwicyI6Ik5EZzRPVGc0TkRJdFpEWTVZeTAwTkdNNExXRmxNalF0WVRRelpUZG1OemRoTTJGbSJ9"]
