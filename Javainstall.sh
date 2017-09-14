VERSION=jdk-8u144
BASE_URL_8=http://download.oracle.com/otn-pub/java/jdk/8u144-b01/090f390dda5b47b9b721c7dfaa008135/$VERSION
JDK_VERSION=`echo $BASE_URL_8 | rev | cut -d "/" -f1 | rev`
platform="-linux-x64.rpm"
JAVAFILE="/opt/$VERSION$platform"
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" "${BASE_URL_8}${platform}" -O $JAVAFILE &>/dev/null
yum localinstall $JAVAFILE -y &>/dev/null
if [ $? -eq 0 ]; then 
	echo "Java Successfully Installed"
else
	echo "Java Install Failed"
fi

