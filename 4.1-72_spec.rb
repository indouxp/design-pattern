#encoding: utf-8
require 'rspec'
require './4.1-72.rb'

describe "Formatter" do
  before do
    @title = '日報'
    @text = ['サーバーチェック', 'rails勉強']
    @formatter = Formatter.new
  end

  it "@formatter.output_report raise" do
    proc{
      @formatter.output_report(@title, @text)
    }.should raise_error("Abstract method called")
  end
end

describe "HTMLFormatter" do
  before do
    @title = '日報'
    @text = ['サーバーチェック', 'rails勉強']
    @formatter = HTMLFormatter.new
    @result = <<"EOT"
<html>
  <head>
    <title>日報</title>
  </head>
  <body>
    <p>サーバーチェック</p>
    <p>rails勉強</p>
  </body>
</html>
EOT
  end

  it "@formatter.output_report" do
    @formatter.output_report(@title, @text) == @result
  end
end

describe "TEXTFormatter" do
  before do
    @title = '日報'
    @text = ['サーバーチェック', 'rails勉強']
    @formatter = TEXTFormatter.new
    @result = <<"EOT"
***** 日報 *****
サーバーチェック
rails勉強
EOT
  end

  it "@formatter.output_report" do
    @formatter.output_report(@title, @text) == @result
  end
end
