docker build -t kerneltime-ubuntu-base -f Dockerfile.base .
docker build -t kerneltime-rust -f Dockerfile.rust .
 docker build -t kerneltime-dev -f Dockerfile.dev .
