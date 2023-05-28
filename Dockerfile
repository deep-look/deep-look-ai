FROM python:3.9.6

COPY . /deep-look-ai
WORKDIR /deep-look-ai

RUN python -m pip install --upgrade pip
RUN	pip3 install -r requirements.txt
EXPOSE 6000

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=6000"]