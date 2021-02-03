FROM ghcr.io/kevinmenden/scaden/scaden-gpu:1.0.1

RUN apt-get update && apt-get upgrade -y
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN pip3 install scaden

# Install tensorflow-gpu if GPU container
ARG GPU
RUN if [ "$GPU" = "GPU" ]; then \
    pip3 install tensorflow-gpu; \
    fi

COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip3 install -r /app/requirements.txt

# install tensorflow shell greeting
COPY ./bashrc.sh /etc/bash.bashrc
RUN chmod a+rwx /etc/bash.bashrc

# enable pretty erros globally
RUN sh -c '/bin/echo -e "\n\n" | python3 -m pretty_errors'