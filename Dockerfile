# Используем официальный образ Node.js
FROM node:lts

# Устанавливаем рабочую директорию в контейнере
WORKDIR /usr/app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем исходный код
COPY . .

# Определяем порт, который будет использоваться
EXPOSE 3000

# Команда для запуска приложения
CMD ["npx", "nodemon", "-L", "app.js"]