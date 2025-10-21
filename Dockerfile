FROM node:18

WORKDIR /app
COPY . .
RUN npm i 
RUN npm i @angular/cli -g
EXPOSE 4200
CMD ["ng","serve","--host","0.0.0.0"]