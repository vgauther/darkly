# frozen_string_literal: true

require 'net/http'


def crowl(uri)

  u = Net::HTTP.get_response(URI.parse(uri)).body

  sc = u.scan(/<a href=\"(.+)\">/)

  sc.each do |s|
    s = s.first
    next if s == '../'

    if s == 'README'
      f = Net::HTTP.get_response(URI.parse(uri + s)).body
      f = f.strip
      next if f.include?('Demande')
      next if f.include?('pas')
      next if f.include?('aide')

      puts f
    else
      sleep 0.1
      crowl("#{uri}#{s}")
    end
  end

end

crowl('http://192.168.1.186/.hidden/')