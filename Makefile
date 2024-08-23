Server-exec:
	python3 udp_latency.py -s --ip 10.0.0.1 --port 4000 --verbose 1 --save result.csv
	python3 udp_rtt.py -s --verbose 0 -n 1200 --save result.csv
	python3 udp_rtt.py -s --verbose 0 -n 1200 --save result.csv --localIP 192.168.5.1

Cliner-exec:
	python3 udp_latency.py -c -t 10 --ip 201.0.0.1 -m 1 -n 1200 --port 4000 --verbose 0