import matlab.unittest.TestRunner
import matlab.unittest.plugins.CodeCoveragePlugin
import matlab.unittest.plugins.codecoverage.CoberturaFormat

testFile = 'ForFileSolverTest.m'
suite = testsuite(testFile);
runner = TestRunner.withTextOutput;

sourceCodeFile = '..\main\quadraticSolver.m'
reportFile = '..\..\target\CoverageResults.xml';
reportFormat = CoberturaFormat(reportFile);
plugin = CodeCoveragePlugin.forFile(sourceCodeFile, 'Producing', reportFormat);
runner.addPlugin(plugin)
result = runner.run(suite);

disp(fileread(reportFile))
