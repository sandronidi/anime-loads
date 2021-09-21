FROM python:3

ENV TZ="Europe/Zurich"

WORKDIR /usr/src/app

RUN apt install git -y

RUN git clone https://github.com/Pfuenzle/anime-loads.git

WORKDIR /usr/src/app/anime-loads

RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "./anibot.py" ]
