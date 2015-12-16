# Using run vs create and then start..
docker rm kerneltime.dev
docker run -it \
	   --name kerneltime.dev \
           -w /root/dev \
	   -v $HOME/src:/root/dev \
	   -v $HOME/.ssh:/root/.ssh \
	   -v /etc/localtime:/etc/localtime:ro \
	   -v /var/run/docker.sock:/var/run/docker.sock \
           -v $(which docker):/bin/docker \
	   -v $(ldconfig -p | grep 'libdevmapper.so.1.02' | awk '{print $4}'):/usr/lib/libdevmapper.so.1.02 \
           -e LD_LIBRARY_PATH=/usr/lib \
	   kerneltime/dev  /bin/bash -c "ldconfig; sed -i  's/ZSH_THEME=.*/ZSH_THEME=candy/g' ~/.zshrc; ZSH_THEME=candy zsh"

