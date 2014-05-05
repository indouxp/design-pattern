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

describe 'Report' do
  it "Report.new(HTMLFormatter.new)" do
    @report = Report.new(HTMLFormatter.new)
    @result = <<"EOT"
<html>
  <head>
    <title>月次報告</title>
  </head>
  <body>
    <p>順調</p>
    <p>最高の調子</p>
    <p>ちょっと悪い</p>
  </body>
</html>
EOT
    @report.output_report.should == @result
  end

  it "Report.new(TEXTFormatter.new)" do
    @report = Report.new(TEXTFormatter.new)
    @result = <<"EOT"
***** 月次報告 *****
順調
最高の調子
ちょっと悪い
EOT
    @report.output_report.should == @result
  end
end
