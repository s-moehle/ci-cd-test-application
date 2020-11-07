FROM raspbian/stretch
RUN apt install npm
COPY . .
# install packages
RUN cd src/client
RUN npm install && npm install -g @angular/cli
# build client and package
RUN ng build
CMD rm -f client.tgz
RUN cd dist/ && tar cvfz ../client.tgz ./* && cd - 
RUN cd ../../
