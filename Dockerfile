FROM node:16.15.0

RUN mkdir -p /strapi

WORKDIR /strapi

COPY . ./

RUN npm install

RUN npm run build

EXPOSE 1337

ENV PACKAGE_COMMAND start

RUN ln -s /strapi/public/uploads /upload-media

CMD npm run $PACKAGE_COMMAND
