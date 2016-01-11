 repeat() { while :; do $@ && return; sleep 30; done }
 repeat wget -c http://www.fasttrackit.ninja:8080/file.zip


