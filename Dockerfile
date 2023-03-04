FROM python:3.9.16

WORKDIR /app
RUN pip install pandas==1.3.5
ADD python_script.py .

#create container volume mounting to host dir so that the python script can read and write data from host
VOLUME /app/input
VOLUME /app/output

#create environment variables for python script
ENV INPUT_DIR='/app/input'
ENV OUTPUT_DIR='/app/output'

#make sure the container keep on running
CMD tail -f /dev/null  