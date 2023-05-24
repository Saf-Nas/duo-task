# Python base image.
FROM python:3.6
# Create and set the

# Copy the app file into the image working directory
COPY . .
# State the listening port for the container.
RUN pip3 install -r requirements.txt
ENV YOUR_NAME=safina
# The app's code does not actually specify the port, so it would be useful to include here.
EXPOSE 5500
# Run 'python app.py' on container start-up. This is the main process.
ENTRYPOINT ["python3", "app.py"]
