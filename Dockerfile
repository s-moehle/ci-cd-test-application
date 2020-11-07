FROM raspbian/stretch
CMD apt update
CMD curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
CMD apt install -y nodejs
CMD apt install -y npm
COPY . .
# install packages
#RUN cd src/client
#RUN npm install
#RUN npm install -g @angular/cli
# build client and package
#RUN ng build
#RUN rm -f client.tgz
#RUN cd dist/ && tar cvfz ../client.tgz ./* && cd - 
#RUN cd ../../
