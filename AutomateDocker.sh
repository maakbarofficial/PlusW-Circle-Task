image_name="django-test-app"

echo "FROM python:3" > Dockerfile
echo "WORKDIR /app" >> Dockerfile
echo "COPY . /app" >> Dockerfile
echo "RUN pip install django" >> Dockerfile
echo "EXPOSE 8000" >> Dockerfile
echo "CMD python manage.py runserver 0.0.0.0:8000" >> Dockerfile

docker build -t "$image_name" .

container_id=$(docker run -p 8000:8000 -d "$image_name")

echo "Docker container ID: $container_id"

docker logs -f "$container_id"
