FROM fedora:latest

RUN yum -y update && yum install -y \
    clang \
    clang-tools-extra \
    make \
    cmake \
    gdb \
    valgrind \
    vim \
    python3-devel \
    git \
    wget \
&& yum clean all

ENV CC=/usr/bin/clang
ENV CXX=/usr/bin/clang++

RUN groupadd -r bjarne && useradd -m -r -g bjarne bjarne
WORKDIR /home/bjarne

USER bjarne

RUN mkdir -p ~/.vim/bundle \
&& git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim \
&& git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe \
&& cd ~/.vim/bundle/YouCompleteMe \
&& git submodule update --init --recursive \
&& python3 install.py --clang-completer

RUN wget https://dl.bintray.com/boostorg/release/1.67.0/source/boost_1_67_0.tar.gz \
&& tar xzf boost_*.tar.gz \
&& rm -f boost_*.tar.gz \
&& ln -s boost_* boost

COPY .vimrc /home/bjarne/.vimrc
COPY .clang-format /home/bjarne/.clang-format
COPY .ycm_extra_conf.py /home/bjarne/.ycm_extra_conf.py

CMD ["/bin/bash"]
