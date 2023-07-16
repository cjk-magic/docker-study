FROM node:16-alpine as builder

WORKDIR /app
COPY ./my-app ./

RUN npm install && npm run build

FROM nginx:1.21.0-alpine as production
COPY --from=builder /app/build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80