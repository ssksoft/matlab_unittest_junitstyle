import matlab.unittest.TestRunner
import matlab.unittest.TestSuite
import matlab.unittest.plugins.XMLPlugin

suite = TestSuite.fromClass(?ExampleTest);
runner = TestRunner.withNoPlugins;

mkdir("..\..\target");
xmlFile = '..\..\target\myTestResults.xml';
p = XMLPlugin.producingJUnitFormat(xmlFile);

runner.addPlugin(p)
results = runner.run(suite);

results_table = table(results);
num_failure = sum(results_table.Failed);

if num_failure > 0
    disp('Some Unit Tests Result: Failed')
else
    disp('All Unit Tests Result: Passed')
end
