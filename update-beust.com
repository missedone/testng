v=5.8
ev=5.8.0.1

set -x

scp testng-${v}.zip testng-eclipse-${ev}.zip ${U}@beust.com:w/testng
scp -r javadocs doc/*.html doc/*.css src/main/testng-1.0.dtd src/testng-1.0.dtd.html ${U}@beust.com:w/testng
scp doc/*.html doc/*.css ${U}@beust.com:w/testng/doc
scp -r javadocs ${U}@beust.com:w/testng
(cd ~/java/beust.com; scp -r . ${U}@beust.com:w/eclipse)

