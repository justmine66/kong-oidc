FROM kong:1.2

RUN wget -O master.zip "https://github.com/yang-xiaodong/kong-oidc/archive/master.zip" \
    && unzip master.zip \
	&& rm -f kong.tar.gz \
	&& luarocks make "kong-oidc-master/kong-oidc-1.1.0-0.rockspec"
	