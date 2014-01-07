<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="Azure_TailspinSpyWorks" generation="1" functional="0" release="0" Id="39353ca9-f94e-460b-a672-bf0e2865dba3" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
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
        <aCS name="Tailspin:Microsoft.WindowsAzure.Plugins.Caching.ClientDiagnosticLevel" defaultValue="">
          <maps>
            <mapMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/MapTailspin:Microsoft.WindowsAzure.Plugins.Caching.ClientDiagnosticLevel" />
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
        <map name="MapTailspin:Microsoft.WindowsAzure.Plugins.Caching.ClientDiagnosticLevel" kind="Identity">
          <setting>
            <aCSMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/Tailspin/Microsoft.WindowsAzure.Plugins.Caching.ClientDiagnosticLevel" />
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
          <role name="Tailspin" generation="1" functional="0" release="0" software="C:\Users\ansharma\Documents\GitHub\TaleSpin\c#\Azure-TailspinSpyWorks\csx\Debug\roles\Tailspin" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="768" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
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
              <aCS name="Microsoft.WindowsAzure.Plugins.Caching.ClientDiagnosticLevel" defaultValue="" />
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
            <sCSPolicyUpdateDomainMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/TailspinUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/TailspinFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="TailspinUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="TailspinFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="TailspinInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="3a82402e-22fe-4b25-83dd-77a23b2cc653" ref="Microsoft.RedDog.Contract\ServiceContract\Azure_TailspinSpyWorksContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="6f528aee-40a0-4051-b9d2-5f728b88ada9" ref="Microsoft.RedDog.Contract\Interface\Tailspin:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/Tailspin:Endpoint1" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="633d1ae9-9ecd-4bdd-a90b-fa6a96d72c6f" ref="Microsoft.RedDog.Contract\Interface\Tailspin:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/Azure_TailspinSpyWorks/Azure_TailspinSpyWorksGroup/Tailspin:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>