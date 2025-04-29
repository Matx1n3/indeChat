docker run -d --name thelounge -p 9000:9000 -v $(pwd)/thelounge:/var/opt/thelounge thelounge/thelounge:latest
docker run -d --name ngircd -v $(pwd)/ngircd:/config -p 6667:6667 lscr.io/linuxserver/ngircd:latest
