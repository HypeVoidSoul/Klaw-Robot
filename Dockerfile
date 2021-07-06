FROM python:latest
ENV VIRTUAL_ENV "/venv"
RUN python -m venv $VIRTUAL_ENV
ENV PATH "$VIRTUAL_ENV/bin:$PATH"

RUN apt-get update && apt-get upgrade -y
RUN python -m pip install --upgrade pip
RUN git clone https://github.com/mentiontard/klawli.git
RUN cd klawli

WORKDIR /klawli
RUN pip install -r requirements.txt
CMD python3 subprocesser.py