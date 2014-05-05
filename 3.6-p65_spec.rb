#encoding: utf-8
require 'rspec'
require './3.6-65.rb'

describe 'empty?' do
  before do
    @empty_string = ''
    @one_char_string = 'X'
    @long_string = 'The rain in Spain'
    @empty_array = []
    @one_element_array = [1]
    @long_array = [1, 2, 3, 4, 5]
    @empty_hash = {}
    @one_element_hash = {'X' => 'B'}
    @long_hash = {'1' => 1, '2' => 2, '3' => 3, '4' => 4}
  end

  it 'empty string' do
    empty?(@empty_string).should == true
  end

  it 'one char string' do
    empty?(@one_char_string).should == false
  end

  it 'long string' do
    empty?(@long_string).should == false
  end

  it 'empty array' do
    empty?(@empty_array).should == true
  end

  it 'one element array' do
    empty?(@one_element_array).should == false
  end

  it 'long array' do
    empty?(@long_array).should == false
  end

  it 'empty hash' do
    empty?(@empty_hash).should == true
  end

  it 'one element hash' do
    empty?(@one_element_hash).should == false
  end

  it 'long hash' do
    empty?(@long_hash).should == false
  end
end
