FROM node:18-alpine
WORKDIR /app

# Copy dependency manifests first for efficient layer caching
COPY package*.json ./
RUN npm ci --only=production

# Copy application source
COPY . .

EXPOSE 7301
CMD ["node", "app.js"]
