FROM node:18 AS build
WORKDIR /app
COPY . .
RUN npm i
RUN npm run build


FROM nginx:alpine
COPY --from=build /app/dist/weather-app /usr/share/nginx/static
COPY nginx.conf /etc/nginx/nginx.conf
COPY mime.types /etc/nginx/mime.types
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
