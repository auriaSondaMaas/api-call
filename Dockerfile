# Usar una imagen base oficial de Ruby
FROM ruby:3.3.0

# Configurar el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiar el Gemfile y Gemfile.lock para instalar las dependencias
COPY Gemfile Gemfile.lock ./

# Instalar las dependencias de Ruby
RUN bundle install

# Copiar el resto de los archivos de la aplicación
COPY . .

# Definir el comando de inicio
CMD ["ruby", "main.rb"]
