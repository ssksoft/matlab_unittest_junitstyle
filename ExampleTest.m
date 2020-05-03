%% QlFhttps://jp.mathworks.com/help/matlab/ref/matlab.unittest.plugins.xmlplugin-class.html

classdef ExampleTest < matlab.unittest.TestCase

    methods (Test)

        function testOne(testCase)
            testCase.verifyEqual(5, 4,  'Testing 5==4')
        end

        function testTwo(testCase)
            testCase.verifyEqual(5, 5,  'Testing 5==5')
        end

        function testThree(testCase)
            testCase.assumeTrue(false)
        end

    end

end
