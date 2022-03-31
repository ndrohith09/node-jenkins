FROM python:3.7-alphine

COPY hello.py /

CMD [ "python" , "hello.py"  ]