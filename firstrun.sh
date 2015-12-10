# Using run vs create and then start..
docker run -it \
	   --name kerneltime.dev \
           -w /root/dev \
	   -v $HOME/src:/root/dev \
	   -v $HOME/.ssh:/root/.ssh \
	   kerneltime/dev 
