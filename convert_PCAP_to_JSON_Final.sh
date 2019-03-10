#/bin/sh

for filename in *.pcap;
do
	OUT=$(echo $filename | rev | cut -c 5- | rev | echo "$(cat -)json")
	tshark -r $filename -T json > $OUT
done

