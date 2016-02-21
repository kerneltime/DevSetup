# Using run vs create and then start..
docker rm kerneltime.dev
docker run -it \
	   --name kerneltime.dev \
           -w /home/ritesh/dev \
	   -v $HOME/dev:/home/ritesh/dev \
	   -v $HOME/.ssh:/home/ritesh/.ssh \
           -v $HOME/go:/home/ritesh/go \
	   -v /etc/localtime:/etc/localtime:ro \
	   -v /var/run/docker.sock:/var/run/docker.sock \
	   kerneltime/dev  /bin/bash -c "git config --global user.email \"sritesh@vmware.com\"; \
				         git config --global user.name \"Ritesh H Shukla\"; \
					 sed -i 's/ZSH_THEME=.*/ZSH_THEME=candy/g' ~/.zshrc;
					 zsh"
