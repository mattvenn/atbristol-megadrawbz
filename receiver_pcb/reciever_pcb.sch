<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.3.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="10" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="26" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="con-molex">
<description>&lt;b&gt;Molex Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="43160-XX03">
<description>&lt;b&gt;SDA-43160 Connector&lt;/b&gt;&lt;p&gt;
Source: http://www.molex.com/pdm_docs/sd/431601306_sd.pdf</description>
<wire x1="-14.19" y1="-1.325" x2="14.19" y2="-1.325" width="0.2032" layer="21"/>
<wire x1="-14.19" y1="-15.885" x2="-14.19" y2="-1.325" width="0.2032" layer="21"/>
<wire x1="-14.19" y1="-15.885" x2="14.19" y2="-15.885" width="0.2032" layer="21"/>
<wire x1="14.19" y1="-1.325" x2="14.19" y2="-15.885" width="0.2032" layer="21"/>
<wire x1="-1.4" y1="-15.8" x2="-1.4" y2="-12.325" width="0.2032" layer="21"/>
<wire x1="-1.4" y1="-12.325" x2="1.4" y2="-12.325" width="0.2032" layer="21"/>
<wire x1="1.4" y1="-12.325" x2="1.4" y2="-15.85" width="0.2032" layer="21"/>
<wire x1="-7.49" y1="3.745" x2="-7.49" y2="-1.1" width="0.6" layer="51"/>
<wire x1="0" y1="3.745" x2="0" y2="-1.1" width="0.6" layer="51"/>
<wire x1="7.49" y1="3.745" x2="7.49" y2="-1.1" width="0.6" layer="51"/>
<pad name="1@1" x="-7.49" y="0" drill="1.8" diameter="3"/>
<pad name="2@1" x="0" y="0" drill="1.8" diameter="3"/>
<pad name="3@1" x="7.49" y="0" drill="1.8" diameter="3"/>
<pad name="1@2" x="-7.49" y="3.18" drill="1.8" diameter="3"/>
<pad name="2@2" x="0" y="3.18" drill="1.8" diameter="3"/>
<pad name="3@2" x="7.49" y="3.18" drill="1.8" diameter="3"/>
<pad name="M1" x="-12.24" y="-13.13" drill="3" diameter="3.4"/>
<pad name="M2" x="12.24" y="-13.13" drill="3" diameter="3.4"/>
<text x="-11.135" y="-17.605" size="1.27" layer="25">&gt;NAME</text>
<text x="-11.235" y="-7.49" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="MV2">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<text x="-0.762" y="1.397" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S@2" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="S@1" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="M2">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<pin name="S@2" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="S@1" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="43160-*03" prefix="X">
<description>&lt;b&gt;SDA-43160 Connector&lt;/b&gt;&lt;p&gt;
Source: http://www.molex.com/pdm_docs/sd/431601306_sd.pdf</description>
<gates>
<gate name="-1" symbol="MV2" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M2" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="M2" x="0" y="-5.08" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="43160-XX03">
<connects>
<connect gate="-1" pin="S@1" pad="1@1"/>
<connect gate="-1" pin="S@2" pad="1@2"/>
<connect gate="-2" pin="S@1" pad="2@1"/>
<connect gate="-2" pin="S@2" pad="2@2"/>
<connect gate="-3" pin="S@1" pad="3@1"/>
<connect gate="-3" pin="S@2" pad="3@2"/>
</connects>
<technologies>
<technology name="11">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="12">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="13">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="43160-1303" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="92M1481" constant="no"/>
</technology>
<technology name="14">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="31">
<attribute name="MF" value="WALDOM/MOLEX" constant="no"/>
<attribute name="MPN" value="43160-3103" constant="no"/>
<attribute name="OC_FARNELL" value="3293040" constant="no"/>
<attribute name="OC_NEWARK" value="54H0265" constant="no"/>
</technology>
<technology name="32">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="51">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="43160-5103" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="92M1494" constant="no"/>
</technology>
<technology name="52">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="53">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="43160-5303" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="92M1499" constant="no"/>
</technology>
<technology name="54">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="73">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="43160-7303" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="92M1508" constant="no"/>
</technology>
<technology name="74">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="X1" library="con-molex" deviceset="43160-*03" device="" technology="12"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="X1" gate="-1" x="111.76" y="71.12"/>
<instance part="X1" gate="-2" x="111.76" y="68.58"/>
<instance part="X1" gate="-3" x="111.76" y="66.04"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
