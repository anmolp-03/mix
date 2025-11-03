FROM node:18-alpine
WORKDIR /app

# Copy dependency manifests first for efficient layer caching
COPY package*.json ./
# Use npm ci when a lockfile exists for reproducible installs, otherwise
# fall back to npm install --production to avoid build failures when no
# package-lock.json is committed.
RUN if [ -f package-lock.json ]; then \
			echo "package-lock.json found -> npm ci --only=production" && npm ci --only=production; \
		else \
			echo "No package-lock.json -> npm install --production" && npm install --production; \
		fi

# Copy application source
COPY . .

EXPOSE 7302
CMD ["node", "app.js"]
