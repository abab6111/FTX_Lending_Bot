FROM python:3.7-slim-buster
WORKDIR /app
#COPY . .     ## COPY <原始路徑> <目標路徑>
COPY . .
#RUN pip install pipenv && \
#  apt-get update && \
#  apt-get install -y --no-install-recommends gcc python3-dev libssl-dev && \
#  pipenv install --deploy --system && \
#  apt-get remove -y gcc python3-dev libssl-dev && \
#  apt-get autoremove -y && \
#  pip uninstall pipenv -y
RUN pip3 install -r requirements.txt
CMD ["python3","main.py"]