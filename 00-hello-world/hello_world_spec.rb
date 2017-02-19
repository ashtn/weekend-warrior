gem 'minitest', '>= 5.0.0'
require 'minitest/pride'
require 'minitest/autorun'
require_relative 'hello_world'#allows you to run code in another file but it need to be in the same folder unless you specify the path

#pride makes it oclorful
#mini test is a test sweet. it lets ou automactically run test on your code and create your own test
describe "Hello World" do
  it "When given no name, it should greet the world!" do
    expect(hello_world).must_equal 'Hello, World!'
  end


#each it is considered one test case
  it "When given 'Alice' it should greet Alice!" do
    expect(hello_world 'Alice').must_equal 'Hello, Alice!'
  end

  it "When given 'Bob' it should greet Bob!" do
    expect(hello_world 'Bob').must_equal 'Hello, Bob!'
  end

  it "When given an empty string it should greet the world!" do
     #method to skip the test
    expect(hello_world '').must_equal 'Hello, World!'
  end
end


# in test results E = error .= passed S = skip
