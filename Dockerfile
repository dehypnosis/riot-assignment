FROM node:12
EXPOSE 8888
ENV NODE_ENV production

# install deps
COPY ./package.json ./yarn.lock ./
RUN NODE_ENV=development yarn

# copy src and build
COPY ./ ./
RUN yarn build
CMD ["yarn", "start"]
