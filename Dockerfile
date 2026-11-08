FROM node:22-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci --omit=dev

COPY . .

ENV HOST=0.0.0.0
ENV PORT=5001

EXPOSE 5001

CMD ["npx", "wisp-js-server", "--host", "0.0.0.0", "--port", "5001"]
