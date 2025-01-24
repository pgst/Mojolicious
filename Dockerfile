# ベースイメージとしてRocky Linux 8.9を指定
FROM rockylinux:8.9

# 必要なパッケージをインストール
RUN dnf -y update && \
    dnf -y install \
    make \
    gcc \
    vim \
    git \
    curl \
    wget && \
    dnf clean all

# # Perl5の開発環境をインストール
# RUN dnf -y install perl perl-App-cpanminus

# plenvをインストール
RUN git clone https://github.com/tokuhirom/plenv.git ~/.plenv && \
    git clone https://github.com/tokuhirom/Perl-Build.git ~/.plenv/plugins/perl-build && \
    echo 'export PATH="$HOME/.plenv/bin:$PATH"' >> ~/.bashrc && \
    echo 'eval "$(plenv init -)"' >> ~/.bashrc && \
    /bin/bash -c "source ~/.bashrc"

# plenvでPerl5.40.1をインストール
RUN /bin/bash -c "source ~/.bashrc && plenv install 5.40.1 && plenv global 5.40.1"

# cpanmをインストール
RUN /bin/bash -c "source ~/.bashrc && plenv install-cpanm"

# Carmelをインストール
RUN /bin/bash -c "source ~/.bashrc && cpanm Carmel"

# 環境変数を設定（必要に応じて）
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

# デフォルトのコマンドを指定
CMD ["/bin/bash"]
