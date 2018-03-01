FROM elixir:1.6.1

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get update \
    && apt-get install -y nodejs inotify-tools 

RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez

RUN mix local.hex --force \ 
    && mix local.rebar --force

WORKDIR /app