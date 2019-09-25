FROM alinode
LABEL author="zyy" description="NPM私有仓库镜像，基于alinode"
COPY app-config.json /root/app-config.json
RUN npm install -g verdaccio
EXPOSE 4873
CMD verdaccio
