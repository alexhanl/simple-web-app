FROM nginx:1.19.6
LABEL maintainer="guoqiangli@vmware.com" Name="__NAME__" Version="__VERSION__"

ENV TIME_ZONE Asia/Shanghai
RUN ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime
COPY src/ /usr/share/nginx/html/
