cd lib/ext
wget https://repo1.maven.org/maven2/kg/apc/jmeter-plugins-manager/1.9/jmeter-plugins-manager-1.9.jar
cd lib
curl -O https://repo1.maven.org/maven2/kg/apc/cmdrunner/2.2.1/cmdrunner-2.2.1.jar
java  -jar cmdrunner-2.2.1.jar --tool org.jmeterplugins.repository.PluginManagerCMD install-all-except jpgc-hadoop,jpgc-oauth,ulp-jmeter-autocorrelator-plugin,ulp-jmeter-videostreaming-plugin,ulp-jmeter-gwt-plugin,tilln-iso8583
