FROM python:3.9
ENV TZ Europe/Stockholm
WORKDIR /usr/src/app
COPY . ./
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]