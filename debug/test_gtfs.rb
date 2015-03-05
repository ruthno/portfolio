require 'protobuf'
require 'google/transit/gtfs-realtime.pb'
require 'net/http'
require 'uri'

data = Net::HTTP.get(URI.parse("http://datamine.mta.info/mta_esi.php?key=d7e39c74ab2c66ded00f27a8f2ec9f07&feed_id=1"))
feed = Transit_realtime::FeedMessage.decode(data)
for entity in feed.entity do
  if entity.field?(:trip_update)
    #p entity.trip_update
    puts entity.to_json
  end
end
