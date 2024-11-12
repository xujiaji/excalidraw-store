FROM node:14-alpine

WORKDIR /excalidraw-store

COPY package.json yarn.lock ./
RUN yarn

COPY tsconfig.json ./
COPY esbuild.js ./
COPY index.html ./
COPY index.ts ./
RUN yarn build

EXPOSE 80
CMD ["yarn", "start"]
