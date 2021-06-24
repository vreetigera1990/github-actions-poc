FROM ruby:2.7.2

#Install Updates
RUN apt-get update

# Install aws cli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-2.0.30.zip" -o "/tmp/awscliv2.zip" && \
    unzip -d /tmp /tmp/awscliv2.zip && \
    /tmp/aws/install

RUN echo hello
RUN echo world

# Install yard tool
RUN gem install yard

# Generate yard doc
RUN yard doc
