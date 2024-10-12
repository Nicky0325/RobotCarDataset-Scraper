# os
FROM python:3.9-slim

# apt
RUN apt-get -y update 

# # pip
# RUN git clone https://github.com/matthewgadd/RobotCarDataset-Scraper.git \
#     && cd RobotCarDataset-Scraper 
WORKDIR /RobotCarDataset-Scraper
COPY . /RobotCarDataset-Scraper

RUN pip3 install -r requirements.txt

# alias
RUN echo 'alias python=python3' >> /root/.bashrc \
	&& echo 'alias pip=pip3' >> /root/.bashrc

# entry point at a working dir
ENTRYPOINT ["/bin/bash"]