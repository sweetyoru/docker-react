FROM node:16-alpine as builder

WORKDIR '/app'
copy package.json .
run npm install
copy . .
run npm build


from nginx

copy --from=builder /app/build /usr/share/nginx/html