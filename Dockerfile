FROM python:3

RUN pip install --no-cache-dir \
        'mkdocs' \
        'mkdocs-material==8.0.0' \
        'mkdocs-awesome-pages-plugin>=2.2.1' \
        'mkdocs-git-revision-date-localized-plugin>=0.4' \
        'mkdocs-minify-plugin>=0.3' \
        'mkdocs-redirects>=1.0' \
        'mkdocs-rss-plugin>=0.6.1'

WORKDIR /docs

EXPOSE 8000

ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
