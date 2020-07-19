
FROM centos:7
RUN yum install epel-release -y && yum install python-pip -y 
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install --upgrade pip && pip install -r requirements.txt
COPY . /app
EXPOSE 5000
CMD ["python", "app.py" ]



