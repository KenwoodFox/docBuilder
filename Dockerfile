FROM python:3.10

# Authors
LABEL authors="31870999+KenwoodFox@users.noreply.github.com"

# Set the name of our app
ARG APP_NAME=DocBuilder
ENV APP_NAME=${APP_NAME}


# Imported from ci/cd
RUN sudo apt update
RUN sudo apt install texlive-latex-recommended texlive-latex-extra texlive-pictures pandoc rename latexmk inkscape imagemagick

# Reqs
ADD requirements.txt ${HOME}
RUN pip install -r requirements.txt
