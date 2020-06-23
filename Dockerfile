# pull official base image
FROM python:3.7

COPY . /usr/src/face

# set work directory
WORKDIR /usr/src/face

# Update pip and from requirements.txt install dependencies
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

# Add Tini. Tini operates as a process subreaper for jupyter. This prevents kernel crashes.
ENV TINI_VERSION v0.6.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]

# RUN chmod +x boot.sh
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]