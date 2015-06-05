NAME = cgwalters/f22-ostree-grub2-fix
REG = 192.168.122.1:4999

all: build


build-push-local: build push-local

build:
	sudo docker build -t $(NAME) .

push-local:
	sudo docker tag -f $(NAME) $(REG)/$(NAME)
	sudo docker push $(REG)/$(NAME)
