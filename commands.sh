git clone git@github.com:nathanwang0114/lab7.git
cd lab7
junit1="javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java"
junit2="java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore ListExamplesTests"
${junit1}
${junit2}
sed -i '43 s/index1/index2/' ListExamples.java
${junit1}
${junit2}
git add ListExamples.java
git commit -m "Fixed"
git push
