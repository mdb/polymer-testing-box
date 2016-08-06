FROM nodesource/trusty:latest

RUN apt-get update;

# install Chrome
RUN apt-get install -y curl
RUN curl -sL https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo 'deb http://dl.google.com/linux/chrome/deb/ stable main' >> /etc/apt/sources.list.d/google.list
RUN apt-get update
RUN apt-get install -y google-chrome-stable

# install Firefox
RUN apt-get install -y wget tar
RUN wget -O /usr/local/firefox-46.0.1.tar.bz2 http://ftp.mozilla.org/pub/mozilla.org/firefox/releases/46.0.1/linux-x86_64/en-US/firefox-46.0.1.tar.bz2
RUN tar xvjf /usr/local/firefox-46.0.1.tar.bz2 -C /usr/local
RUN ln -s /usr/local/firefox/firefox /usr/bin/firefox

# install xvfb
RUN apt-get install -y xvfb;

# install java; needed by selenium
RUN apt-get install default-jre -y

# cleanup
RUN apt-get clean

# install web-component-tester & bower globally
RUN npm install -g web-component-tester
RUN npm install -g bower

# configure bower
RUN echo '{ "allow_root": true }' > /root/.bowerrc
