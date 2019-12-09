###############################################################################################################
# Description: Webhook to send message to hangouts chat
###############################################################################################################

# Main
#**************************************************************************************************************
FROM python:3.8.0

ENV FLASK_ENV=development

RUN pip install --upgrade pip
RUN pip3 install flask httplib2

COPY alertmanager-hangouts-chat /usr/local/bin

RUN  chmod +x /usr/local/bin/alertmanager-hangouts-chat

CMD ["python3", "/usr/local/bin/alertmanager-hangouts-chat"]
#**************************************************************************************************************
