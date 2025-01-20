# ベースイメージとしてRocky Linux 8.9を指定
FROM rockylinux:8.9

# 必要なパッケージをインストール
RUN dnf -y update && \
    dnf -y install \
    vim \
    git \
    curl \
    wget && \
    dnf clean all

# Perl5の開発環境をインストール
RUN dnf -y install perl perl-App-cpanminus

# 環境変数を設定（必要に応じて）
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

# デフォルトのコマンドを指定
CMD ["/bin/bash"]
