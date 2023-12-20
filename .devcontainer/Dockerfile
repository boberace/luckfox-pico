FROM luckfoxtech/luckfox_pico:1.0

RUN apt-get update && \
    apt-get install -y \
    locales \
    unzip \
    wget \
    sudo \
    && rm -rf /var/lib/apt/lists/*

RUN locale-gen en_US.utf8

RUN wget --no-verbose https://files.luckfox.com/wiki/Core3566/upgrade_tool_v2.17.zip && \
    sudo unzip upgrade_tool_v2.17.zip && \
    sudo rm upgrade_tool_v2.17.zip && \
    sudo cp upgrade_tool_v2.17_for_linux/upgrade_tool /usr/local/bin && \
    sudo chmod +x /usr/local/bin/upgrade_tool && \
    sudo rm -rf upgrade_tool_v2.17_for_linux

CMD ["/bin/bash", "-c"]
