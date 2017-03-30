FROM elasticsearch:5.2.2
WORKDIR /usr/share/elasticsearch

COPY config/ config
COPY plugins/ plugins

# RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install mapper-attachments
# RUN chown -R elasticsearch:elasticsearch  plugins

USER elasticsearch
ENV PATH=$PATH:/usr/share/elasticsearch/bin

CMD ["elasticsearch"]
EXPOSE 9200 9300
