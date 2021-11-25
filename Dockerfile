FROM bash:4.4
LABEL version='0.0.2'
COPY myscript.sh /
CMD ["bash", "/myscript.sh"]
#CMD ["bash"]

