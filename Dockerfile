FROM teeks99/boost-cpp-docker:gcc-8

RUN wget -O boost_1_67_0.tar.gz https://dl.bintray.com/boostorg/release/1.67.0/source/boost_1_67_0.tar.gz
RUN tar xzvf boost_1_67_0.tar.gz
RUN cd boost_1_67_0 && ./bootstrap.sh && ./b2 install

CMD ["bash"]
