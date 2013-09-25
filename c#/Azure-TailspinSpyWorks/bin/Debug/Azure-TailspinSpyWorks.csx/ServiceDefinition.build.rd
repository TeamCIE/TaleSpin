<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="Azure_TailspinSpyWorks" generation="1" functional="0" release="0" Id="5a6a3f38-95a6-4981-8fbb-070f00aa0e40" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="Azure_TailspinSpyWorksGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="Tailspin:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/LB:Tailspin:Endpoint1" />
          </inToChannel>
        </inPort>
        <inPort name="Tailspin:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp">
          <inToChannel>
            <lBChannelMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/LB:Tailspin:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="Certificate|Tailspin:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" defaultValue="">
          <maps>
            <mapMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/MapCertificate|Tailspin:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </maps>
        </aCS>
        <aCS name="Tailspin:?IsSimulationEnvironment?" defaultValue="">
          <maps>
            <mapMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/MapTailspin:?IsSimulationEnvironment?" />
          </maps>
        </aCS>
        <aCS name="Tailspin:?RoleHostDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/MapTailspin:?RoleHostDebugger?" />
          </maps>
        </aCS>
        <aCS name="Tailspin:?StartupTaskDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/MapTailspin:?StartupTaskDebugger?" />
          </maps>
        </aCS>
        <aCS name="Tailspin:IntelliTrace.IntelliTraceConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/MapTailspin:IntelliTrace.IntelliTraceConnectionString" />
          </maps>
        </aCS>
        <aCS name="Tailspin:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/MapTailspin:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="Tailspin:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="">
          <maps>
            <mapMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/MapTailspin:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </maps>
        </aCS>
        <aCS name="Tailspin:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="">
          <maps>
            <mapMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/MapTailspin:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </maps>
        </aCS>
        <aCS name="Tailspin:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="">
          <maps>
            <mapMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/MapTailspin:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </maps>
        </aCS>
        <aCS name="Tailspin:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/MapTailspin:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </maps>
        </aCS>
        <aCS name="Tailspin:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/MapTailspin:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </maps>
        </aCS>
        <aCS name="TailspinInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/MapTailspinInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:Tailspin:Endpoint1">
          <toPorts>
            <inPortMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/Tailspin/Endpoint1" />
          </toPorts>
        </lBChannel>
        <lBChannel name="LB:Tailspin:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput">
          <toPorts>
            <inPortMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/Tailspin/Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </toPorts>
        </lBChannel>
        <sFSwitchChannel name="SW:Tailspin:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp">
          <toPorts>
            <inPortMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/Tailspin/Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
          </toPorts>
        </sFSwitchChannel>
      </channels>
      <maps>
        <map name="MapCertificate|Tailspin:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" kind="Identity">
          <certificate>
            <certificateMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/Tailspin/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </certificate>
        </map>
        <map name="MapTailspin:?IsSimulationEnvironment?" kind="Identity">
          <setting>
            <aCSMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/Tailspin/?IsSimulationEnvironment?" />
          </setting>
        </map>
        <map name="MapTailspin:?RoleHostDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/Tailspin/?RoleHostDebugger?" />
          </setting>
        </map>
        <map name="MapTailspin:?StartupTaskDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/Tailspin/?StartupTaskDebugger?" />
          </setting>
        </map>
        <map name="MapTailspin:IntelliTrace.IntelliTraceConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/Tailspin/IntelliTrace.IntelliTraceConnectionString" />
          </setting>
        </map>
        <map name="MapTailspin:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/Tailspin/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapTailspin:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" kind="Identity">
          <setting>
            <aCSMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/Tailspin/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </setting>
        </map>
        <map name="MapTailspin:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" kind="Identity">
          <setting>
            <aCSMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/Tailspin/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </setting>
        </map>
        <map name="MapTailspin:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" kind="Identity">
          <setting>
            <aCSMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/Tailspin/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </setting>
        </map>
        <map name="MapTailspin:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/Tailspin/Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </setting>
        </map>
        <map name="MapTailspin:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/Tailspin/Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </setting>
        </map>
        <map name="MapTailspinInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/TailspinInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="Tailspin" generation="1" functional="0" release="0" software="C:\Users\Kmfaizal\Documents\Visual Studio 2010\Projects\Azure-TailspinSpyWorks\Azure-TailspinSpyWorks\bin\Debug\Azure-TailspinSpyWorks.csx\roles\Tailspin" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="768" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp" portRanges="3389" />
              <outPort name="Tailspin:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/SW:Tailspin:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
            </componentports>
            <settings>
              <aCS name="?IsSimulationEnvironment?" defaultValue="" />
              <aCS name="?RoleHostDebugger?" defaultValue="" />
              <aCS name="?StartupTaskDebugger?" defaultValue="" />
              <aCS name="IntelliTrace.IntelliTraceConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;Tailspin&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;Tailspin&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
            <storedcertificates>
              <storedCertificate name="Stored0Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" certificateStore="My" certificateLocation="System">
                <certificate>
                  <certificateMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/Tailspin/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
                </certificate>
              </storedCertificate>
            </storedcertificates>
            <certificates>
              <certificate name="Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
            </certificates>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/TailspinInstances" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyID name="TailspinInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="afe98ae5-e115-445d-814f-fc9256e9025b" ref="Microsoft.RedDog.Contract\ServiceContract\Azure_TailspinSpyWorksContract@ServiceDefinition.build">
      <interfacereferences>
        <interfaceReference Id="dae38f22-e025-4740-ae1a-f4121670ed1c" ref="Microsoft.RedDog.Contract\Interface\Tailspin:Endpoint1@ServiceDefinition.build">
          <inPort>
            <inPortMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/Tailspin:Endpoint1" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="f80c6056-1e32-4d97-b539-8ab08118af91" ref="Microsoft.RedDog.Contract\Interface\Tailspin:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput@ServiceDefinition.build">
          <inPort>
            <inPortMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/Tailspin:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>