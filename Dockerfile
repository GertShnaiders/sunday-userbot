FROM gertshnaiders/sundayuserbot

#clonning repo 
RUN git clone https://github.com/GertShnaiders/SundayUserbot.git /root/sundaybot
#working directory 
WORKDIR /root/sundaybot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/sundaybot/bin:$PATH"

CMD ["python3","-m","sundaybot"]
