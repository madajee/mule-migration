# mule-migration

# setup
Step 1: Use this link [https://www.oracle.com/java/technologies/downloads/] to download JDK 17 from Oracle, extract it in a folder (for eg: /Users/home/JDK), set JAVA_HOME.

export JAVA_HOME=/Users/home/JDK/jdk-17.0.16.jdk/Contents/Home

export PATH=$JAVA_HOME/bin:$PATH

java -version

% java -version
java version "17.0.16" 2025-07-15 LTS
Java(TM) SE Runtime Environment (build 17.0.16+12-LTS-247)
Java HotSpot(TM) 64-Bit Server VM (build 17.0.16+12-LTS-247, mixed mode, sharing)

Step 2: Use this link [https://github.com/mulesoft/mule-migration-assistant/tree/master] to download the Mule Migration Assistant and extract it in a folder (for eg: /Users/home/JDK/MMA)

Step 3: Use this link [https://github.com/mulesoft-labs/anypoint-examples/] to clone anypoint-examples repository of Mule 3.

# migrate hello-world from mule 3 to mule 4

java -jar mule-migration-assistant-runner-1.0.0.jar -muleVersion 4.3.0 -projectBasePath /Users/home/mulesoft/mule-migration/mule3/hello-world -destinationProjectBasePath /Users/home/mulesoft/mule-migration/mmamule4/hello-world

curl --location 'http://localhost:8081/helloWorld'


# useful-links
[https://docs.mulesoft.com/mule-runtime/latest/index-migration]

[https://docs.mulesoft.com/release-notes/mule-runtime/updating-mule-versions]

[https://docs.mulesoft.com/release-notes/mule-runtime/updating-mule-4-versions]

[https://docs.mulesoft.com/mule-runtime/latest/mule-release-notes]

[https://www.youtube.com/watch?v=tGgR38XRKqI] (Virtual Muleys 13)

[https://www.youtube.com/watch?v=7XgtK_R914Y] (Virtual Muleys 22)

[https://www.youtube.com/watch?v=eV2-kAHxes0] (Virtual Muleys 57)

[https://www.youtube.com/watch?v=vrF33A6VmZ0] (PSS - Migration to Mule)

[https://medium.com/@justmail2sourav/lets-discuss-first-why-migration-require-0d4a56a5ae82]

[https://medium.com/another-integration-blog/navigating-the-ins-and-outs-of-upgrading-from-mule-4-4-to-4-6-a-comprehensive-guide-c1f74754400b]

[https://medium.com/another-integration-blog/automating-mule-migration-from-4-4-0-to-4-6-with-jdk17-guide-for-saving-time-f0ee29730d38]

[https://github.com/mulesoft/mule-migration-assistant/tree/master]

[   tree/3.8/hello-world]