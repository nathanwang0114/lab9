git clone git@github.com:nathanwang0114/lab7.git
cd lab7
junit1="javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java"
junit2="java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore ListExamplesTests"
${junit1}
${junit2}
sed -i '43 s/index1/index2/' ListExamples.java
# nano ListExamples.java
# for i in {1..42}
# do
#   echo -en "\033[B"
# done
# for i in {1..12}
# do
#   echo -en "\033[C"
# done
# echo -en "\b"
# echo -en "\b"
# echo -n "2"
# printf "\017"
# echo -e "\n"
# printf "\x18"
${junit1}
${junit2}
git add ListExamples.java
git commit -m "Fixed"
git push