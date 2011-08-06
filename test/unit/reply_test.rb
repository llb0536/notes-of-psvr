require 'test_helper'

class ReplyTest < ActiveSupport::TestCase
  setup :initialize_reply
  
  test "should not save without body" do
    fill_head
    assert !@reply.save
  end
  
  test "should pass with all info" do
    fill_full
    assert @reply.save
  end
  
  test "should not save with a very long body" do
    fill_head
    @reply.body = ''
    1000.times do
      @reply.body += '.'
    end
    assert !@reply.save
  end
  
  test "should not save with a bad email" do
    fill_head
    @reply.email = 'sooooobad'
    assert !@reply.save
  end
  
  test "cannot reply consecutively three" do
    fill_full
    assert @reply.save
    fill_full
    assert @reply.save
    fill_full
    assert @reply.save
    fill_full
    assert !@reply.save
    fill_full
    assert !@reply.save
  end

private
  def initialize_reply
    @reply = Reply.new
  end
  def fill_head
    @reply.email = 'pmq2001@gmail.com'
    @reply.website = 'http://www.ofpsvr.org'
    @reply.username = 'P.S.V.R'
  end
  def fill_full
    @reply.email = 'pmq2001@gmail.com'
    @reply.website = 'http://www.ofpsvr.org'
    @reply.username = 'P.S.V.R'
    @reply.body = 'Good good perfect nice!!!'
  end
end
