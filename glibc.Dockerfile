FROM library/debian:stretch
ENV PATH /root/.cargo/bin:$PATH
RUN apt-get update && \
    apt-get install -y curl gcc && \
    curl https://sh.rustup.rs -sSf | sh -s -- -y
