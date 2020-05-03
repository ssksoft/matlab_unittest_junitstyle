import matlab.unittest.TestRunner
import matlab.unittest.TestSuite
import matlab.unittest.plugins.XMLPlugin

suite = TestSuite.fromClass(?ExampleTest);
runner = TestRunner.withNoPlugins;

xmlFile =  'myTestResults.xml';
p = XMLPlugin.producingJUnitFormat(xmlFile);

runner.addPlugin(p)
results = runner.run(suite);
table(results)
