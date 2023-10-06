# FROM python:3.8-slim
# WORKDIR /app
# COPY calci_ops.py .
# COPY requirements.txt .
# RUN pip install -r requirements.txt
# ENV STREAMLIT_SERVER_ENABLE_TELEMETRY false
# CMD ["streamlit", "run", "calci_ops.py"]
FROM python:3.8-slim

RUN apt-get update && apt-get install -y sudo dbus

WORKDIR /app
COPY calci_ops.py .
COPY requirements.txt .
RUN pip install -r requirements.txt

ENV STREAMLIT_SERVER_ENABLE_TELEMETRY false

CMD ["streamlit", "run", "calci_ops.py"]
