using Pcap
using Base.Test

# write your own tests here
#@test 1 == 1

#println(pcap_lookupdev())
#pcap_findalldevs()

cap   = PcapOffline("capture.pcap")
rec   = pcap_get_record(cap)
ethhdr = decode_eth_hdr(rec.payload)
println(ethhdr)
iphdr  = decode_ip_hdr(rec.payload[15:end])
println(iphdr)
