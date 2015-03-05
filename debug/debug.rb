require './lib/gtfs-realtime.pb.rb'
#require './lib/nyct-subway.pb.rb'

serialized_string = File.read('debug.txt')

transit_realtime = TripUpdate.decode(serialized_string)
#transit_realtime = transit_realtime.to_hash
