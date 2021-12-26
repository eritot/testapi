FROM tiangolo/uvicorn-gunicorn:python3.9
RUN apt-get update && apt-get install -y \
gcc \
unixodbc unixodbc-dev \
libaio1 \
libsasl2-dev
ENV TZ Europe/Stockholm
WORKDIR /usr/src/app
COPY . ./
RUN pip install --upgrade pip
RUN pip install Cython
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt