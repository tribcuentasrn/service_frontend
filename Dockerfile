FROM node:latest as build

WORKDIR /usr/local/app

COPY ./app/package*.json /usr/local/app/

RUN npm install

COPY ./app /usr/local/app/

ARG env=prod

#RUN npm run build -- --prod --environment $env
RUN node_modules/.bin/ng build --prod


FROM nginx:latest

COPY --from=build /usr/local/app/dist/workflow-frontend /usr/share/nginx/html

EXPOSE 80
