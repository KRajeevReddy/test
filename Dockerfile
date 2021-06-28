FROM httpd:2.4
RUN apt-get update
RUN apt-get install vim
RUN echo 'deleting index.html'
RUN rm /usr/local/apache2/htdocs/index.html
RUN echo 'deletion completed index.html'
RUN echo 'copying testimg.html'
COPY ./testimg.html /usr/local/apache2/htdocs/
