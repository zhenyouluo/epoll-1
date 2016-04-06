SRC_SVR = server.c
SRC_CLT = client.c
CFLAG = -std=gnu99

all: epoll_svr epoll_clt

epoll_svr: server.c
	gcc $(CFLAG) -Wall -o $@ $(SRC_SVR)

epoll_clt: client.c
	gcc $(CFLAG) -Wall -o $@ $(SRC_CLT)

clean:
	rm -f epoll_svr epoll_clt

