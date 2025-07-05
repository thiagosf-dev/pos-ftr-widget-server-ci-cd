FROM node:22-alpine3.21 AS base

WORKDIR /api

COPY package.json pnpm-lock.yaml ./

RUN npm i -g pnpm
RUN pnpm i

COPY . .

RUN pnpm build
RUN pnpm prune --prod

FROM cgr.dev/chainguard/node:latest AS production

USER 1000

WORKDIR /api

COPY --from=base /api/dist ./dist
COPY --from=base /api/node_modules ./node_modules
COPY --from=base /api/package.json ./package.json

EXPOSE 3333

CMD ["dist/server.mjs"]
