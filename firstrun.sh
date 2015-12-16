# Using run vs create and then start..
docker rm kerneltime.dev
docker run -it \
	   --name kerneltime.dev \
           -w /root/dev \
	   -v $HOME/src:/root/dev \
	   -v $HOME/.ssh:/root/.ssh \
	   -v /etc/localtime:/etc/localtime:ro \
	   kerneltime/dev 
