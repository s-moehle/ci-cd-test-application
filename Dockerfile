FROM raspbian/stretch
CMD apt install npm
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
