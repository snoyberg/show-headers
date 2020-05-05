FROM fpco/pid1:18.04

COPY Main /usr/local/bin/show-headers

CMD ["/usr/local/bin/show-headers"]
EXPOSE 3000
