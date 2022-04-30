FROM python

WORKDIR /app
# we copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt .

#this runs when image is built
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

ENTRYPOINT ["python" ,"app.py"]