FROM httpd:2.4
 
# Expose port 80
EXPOSE 80


COPY . /usr/local/apache2/htdocs/

