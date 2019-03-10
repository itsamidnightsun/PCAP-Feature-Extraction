#/bin/sh

echo "Name of the pcap file: "
read fileName

echo "Scanning for TCP flows.."
for stream in `tshark -r $fileName -T fields -e tcp.stream | sort -n | uniq`
do
    echo "TCP Stream: " $stream
    tshark -r $fileName -w TCP_stream-$stream.pcap -Y "tcp.stream==$stream"
done

echo "Scanning for UDP flows.."
for stream in `tshark -r $fileName -T fields -e udp.stream | sort -n | uniq`
do
    echo "UDP Stream: " $stream
    tshark -r $fileName -w UDP_stream-$stream.pcap -Y "udp.stream==$stream"
done
