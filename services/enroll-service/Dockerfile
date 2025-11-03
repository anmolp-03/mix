FROM node:18-alpine
WORKDIR /app
COPY . .
RUN npm init -y && npm install express
EXPOSE 7302
CMD ["node", "app.js"]
