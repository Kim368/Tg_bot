FROM python:3.8
# set work directory
# WORKDIR /usr/src/app/
# # copy project
# COPY . /usr/src/app/
# # install dependencies
# RUN pip install --user aiogram
# # run app
# CMD ["python", "bot.py"]
WORKDIR ~/Python
RUN apt-get update && apt-get install -y netcat
COPY pip-requirements.txt ~/Python
RUN pip3 install --upgrade pip && \
    pip3 install -r pip-requirements.txt
COPY . ~/Python