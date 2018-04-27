FROM ubuntu

RUN apt-get update && apt-get install -y software-properties-common curl apt-transport-https

RUN add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./" \
    && curl -L https://cli-assets.heroku.com/apt/release.key | apt-key add - \
    && apt-get update \
    && apt-get install -y \
      dnsutils \
      git \
      sudo \
      postgresql-client \
      vim \
      zsh \
      heroku \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root

RUN git clone git://github.com/robbyrussell/oh-my-zsh.git /root/.oh-my-zsh

ADD zshrc .zshrc
ADD oh-my-zsh .oh-my-zsh

CMD ["zsh"]
