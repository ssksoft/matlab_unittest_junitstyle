classdef ForFileSolverTest < matlab.unittest.TestCase

    methods (Test)

        function testRealSolution(testCase)
            addpath('..\main')
            actSolution = quadraticSolver(1, -3, 2);
            expSolution = [2, 1];
            testCase.verifyEqual(actSolution, expSolution)

        end

        function testImaginarySolution(testCase)
            addpath('..\main')
            actSolution = quadraticSolver(1, 2, 10);
            expSolution = [-1 + 3i, -1 - 3i];
            testCase.verifyEqual(actSolution, expSolution);

        end

    end

end
