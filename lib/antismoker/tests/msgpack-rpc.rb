#!/usr/bin/env ruby

require "antismoker/tests"
require "antismoker/tests/msgpack-rpc/version"
require "msgpack/rpc"

module AntiSmoker
  class MsgpackRpcTest < AbstractSmokeTest
    include MsgpackRpcModule

    def initialize(host, port, options={})
      super
      @message = options.fetch(:message, [:ping])
    end
    attr_reader :message

    def run_once_with_timeout(options={})
      client = MessagePack::RPC::Client.new(host, port)
      client.timeout = timeout
      response = client.call(*message)
      response_ok(response)
    rescue => error
      logger.warn("unknown error: #{self}: #{error}")
      false
    end

    def response_ok(response)
      response
    end

    def to_s
      "msgpack-rpc://#{host}:#{port}"
    end
  end
end

# vim:set ft=ruby sw=2 ts=2 :
