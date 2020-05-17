%% xml�t�@�C���ł̃e�X�g���|�[�g�쐬
%% �Q�l�F https://jp.mathworks.com/help/matlab/ref/matlab.unittest.plugins.xmlplugin-class.html

classdef ExampleTest < matlab.unittest.TestCase

    methods (Test)

        function testOne(testCase)
            testCase.verifyEqual(6, 6, 'Testing 6==5')

        end

        function testTwo(testCase)
            testCase.verifyEqual(5, 5, 'Testing 5==5')
        end

        function testThree(testCase)
            testCase.assumeTrue(true)
        end

    end

end