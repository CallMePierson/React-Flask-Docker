FROM node:14

RUN apt-get install python3
RUN apt-get install python3-pip
RUN pip3 install flask

WORKDIR /app/
COPY ["Hello World.jsx", coolStyle.css, app.py] /app/

CMD ["python3","app.py"]

EXPOSE 80