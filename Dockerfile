FROM ramadhani892/ramagans:slim-buster

RUN git clone -b RAM-UBOT https://github.com/rakasvpz/RAKAS-BOT /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/ramadhani892/RAKAS-BOT/RAM-UBOT/requirements.txt

CMD ["python3","-m","userbot"]
