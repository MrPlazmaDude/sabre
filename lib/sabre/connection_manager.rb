module Sabre
  class ConnectionManager
=begin
    attr_accessor :pool_size, :connections

    def initialize(*h)
      if h.length == 1 && h.first.kind_of?(Hash)
        h.first.each { |k,v| send("#{k}=",v) }
      end
      destroy_all
      #build_pool
    end

    def build_pool
      self.connections = []
      self.pool_size.times do
        self.connections << Connection.new(conversation_id: 'elia@mytravelershaven.com')
      end
    end

    def destroy_all
      if self.connections
        self.connections.each{|c|c.destroy} 
      end
    end
=end
  end
end
