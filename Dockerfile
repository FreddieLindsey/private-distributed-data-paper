FROM ubuntu:16.04

RUN apt-get update && apt-get install -y make texlive texlive-latex-base texlive-latex-extra texlive-fonts-recommended texlive-fonts-extra biber
