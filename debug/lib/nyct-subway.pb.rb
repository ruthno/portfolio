## Generated from nyct-subway.proto for 
require "beefcake"


class TripReplacementPeriod
  include Beefcake::Message
end

class NyctFeedHeader
  include Beefcake::Message
end

class NyctTripDescriptor
  include Beefcake::Message

  module Direction
    NORTH = 1
    EAST = 2
    SOUTH = 3
    WEST = 4
  end
end

class NyctStopTimeUpdate
  include Beefcake::Message
end

class TripReplacementPeriod
  optional :route_id, :string, 1
  optional :replacement_period, transit_realtime::TimeRange, 2
end

class NyctFeedHeader
  required :nyct_subway_version, :string, 1
  repeated :trip_replacement_period, TripReplacementPeriod, 2
end

class NyctTripDescriptor
  optional :train_id, :string, 1
  optional :is_assigned, :bool, 2
  optional :direction, NyctTripDescriptor::Direction, 3
end

class NyctStopTimeUpdate
  optional :scheduled_track, :string, 1
  optional :actual_track, :string, 2
end
