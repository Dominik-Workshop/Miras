<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
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
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
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
<library name="KTIR0711S">
<packages>
<package name="TOP">
<wire x1="-1.35" y1="1.7" x2="-1.35" y2="-1.2" width="0.127" layer="21"/>
<wire x1="-1.35" y1="-1.2" x2="-0.85" y2="-1.7" width="0.127" layer="21"/>
<wire x1="-0.85" y1="-1.7" x2="1.35" y2="-1.7" width="0.127" layer="21"/>
<wire x1="1.35" y1="-1.7" x2="1.35" y2="1.7" width="0.127" layer="21"/>
<wire x1="1.35" y1="1.7" x2="-1.35" y2="1.7" width="0.127" layer="21"/>
<wire x1="-0.9" y1="-0.2" x2="0.9" y2="-0.2" width="0.127" layer="21"/>
<wire x1="0.9" y1="-0.2" x2="0.9" y2="-1.3" width="0.127" layer="21"/>
<wire x1="0.9" y1="-1.3" x2="-0.9" y2="-1.3" width="0.127" layer="21"/>
<wire x1="-0.9" y1="1.3" x2="0.9" y2="1.3" width="0.127" layer="21"/>
<wire x1="0.9" y1="0.2" x2="-0.9" y2="0.2" width="0.127" layer="21"/>
<wire x1="-0.9" y1="-1.3" x2="-0.9" y2="-0.2" width="0.127" layer="21"/>
<wire x1="-0.9" y1="0.2" x2="-0.9" y2="1.3" width="0.127" layer="21"/>
<wire x1="0.9" y1="1.3" x2="0.9" y2="0.2" width="0.127" layer="21"/>
<smd name="EMITER" x="-1.985" y="0.9" dx="1.27" dy="1" layer="1"/>
<smd name="ANODA" x="-1.985" y="-0.9" dx="1.27" dy="1" layer="1"/>
<smd name="KOLEKTOR" x="1.985" y="0.91" dx="1.27" dy="1" layer="1"/>
<smd name="KATODA" x="1.985" y="-0.9" dx="1.27" dy="1" layer="1"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="SYM">
<wire x1="-1.143" y1="-1.143" x2="0.254" y2="0.254" width="0.1524" layer="94"/>
<wire x1="0.254" y1="0.254" x2="-0.635" y2="-0.127" width="0.1524" layer="94"/>
<wire x1="-0.635" y1="-0.127" x2="-0.127" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="-0.127" y1="-0.635" x2="0.254" y2="0.254" width="0.1524" layer="94"/>
<wire x1="0.127" y1="1.397" x2="-0.762" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-0.762" y1="1.016" x2="-0.254" y2="0.508" width="0.1524" layer="94"/>
<wire x1="-0.254" y1="0.508" x2="0.127" y2="1.397" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0" x2="0.127" y2="1.397" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="1.27" x2="-3.175" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-1.905" y1="1.27" x2="-3.175" y2="1.27" width="0.254" layer="94"/>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-3.175" y1="1.27" x2="-4.445" y2="1.27" width="0.254" layer="94"/>
<wire x1="-5.715" y1="5.08" x2="5.715" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-5.715" y1="-5.08" x2="5.715" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-3.175" y1="2.54" x2="-3.175" y2="1.27" width="0.1524" layer="94"/>
<wire x1="-5.715" y1="5.08" x2="-5.715" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-3.175" y1="-1.27" x2="-3.175" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="5.715" y1="5.08" x2="5.715" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-3.175" y1="2.54" x2="-6.35" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-3.175" y1="-2.54" x2="-6.35" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="3.81" y1="-2.54" x2="1.27" y2="0" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0" x2="3.556" y2="2.286" width="0.1524" layer="94"/>
<wire x1="3.048" y1="1.016" x2="3.556" y2="2.286" width="0.1524" layer="94"/>
<wire x1="3.556" y1="2.286" x2="3.81" y2="2.54" width="0.1524" layer="94"/>
<wire x1="3.556" y1="2.286" x2="2.286" y2="1.778" width="0.1524" layer="94"/>
<wire x1="2.286" y1="1.778" x2="3.048" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="3.81" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="5.08" y1="2.54" x2="3.81" y2="2.54" width="0.1524" layer="94"/>
<text x="-5.715" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.715" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="0.889" y1="-2.54" x2="1.651" y2="2.54" layer="94"/>
<pin name="KOLEKTOR" x="7.62" y="-2.54" visible="off" length="short" rot="R180"/>
<pin name="KATODA" x="-7.62" y="-2.54" visible="off" length="short" direction="pas"/>
<pin name="ANODA" x="-7.62" y="2.54" visible="off" length="short" direction="pas"/>
<pin name="EMITER" x="7.62" y="2.54" visible="off" length="short" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="KTIR0711S" prefix="CZ">
<gates>
<gate name="G$1" symbol="SYM" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TOP">
<connects>
<connect gate="G$1" pin="ANODA" pad="ANODA"/>
<connect gate="G$1" pin="EMITER" pad="EMITER"/>
<connect gate="G$1" pin="KATODA" pad="KATODA"/>
<connect gate="G$1" pin="KOLEKTOR" pad="KOLEKTOR"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="wirepad" urn="urn:adsk.eagle:library:412">
<description>&lt;b&gt;Single Pads&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1,6/0,9" urn="urn:adsk.eagle:footprint:30812/1" library_version="2">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="-0.508" y1="0.762" x2="-0.762" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="0.762" x2="-0.762" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-0.508" x2="-0.762" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-0.762" x2="-0.508" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.508" y1="-0.762" x2="0.762" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-0.762" x2="0.762" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0.508" x2="0.762" y2="0.762" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0.762" x2="0.508" y2="0.762" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.635" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="0.9144" diameter="1.6002" shape="octagon"/>
<text x="-0.762" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0.6" size="0.0254" layer="27">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="1,6/0,9" urn="urn:adsk.eagle:package:30840/1" type="box" library_version="2">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="1,6/0,9"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PAD" urn="urn:adsk.eagle:symbol:30808/1" library_version="2">
<wire x1="-1.016" y1="1.016" x2="1.016" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-1.016" x2="1.016" y2="1.016" width="0.254" layer="94"/>
<text x="-1.143" y="1.8542" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.143" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="1,6/0,9" urn="urn:adsk.eagle:component:30858/2" prefix="PAD" uservalue="yes" library_version="2">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="PAD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1,6/0,9">
<connects>
<connect gate="1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30840/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="7" constant="no"/>
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
<part name="CZ1" library="KTIR0711S" deviceset="KTIR0711S" device=""/>
<part name="LSP1" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="1,6/0,9" device="" package3d_urn="urn:adsk.eagle:package:30840/1"/>
<part name="LSP2" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="1,6/0,9" device="" package3d_urn="urn:adsk.eagle:package:30840/1"/>
<part name="LSP3" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="1,6/0,9" device="" package3d_urn="urn:adsk.eagle:package:30840/1"/>
<part name="LSP4" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="1,6/0,9" device="" package3d_urn="urn:adsk.eagle:package:30840/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="CZ1" gate="G$1" x="53.34" y="50.8" smashed="yes" rot="R180">
<attribute name="NAME" x="59.055" y="45.085" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="59.055" y="58.42" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LSP1" gate="1" x="38.1" y="53.34" smashed="yes">
<attribute name="NAME" x="36.83" y="56.261" size="1.778" layer="95"/>
</instance>
<instance part="LSP2" gate="1" x="38.1" y="48.26" smashed="yes">
<attribute name="NAME" x="36.83" y="43.561" size="1.778" layer="95"/>
</instance>
<instance part="LSP3" gate="1" x="68.58" y="53.34" smashed="yes" rot="R180">
<attribute name="NAME" x="72.39" y="58.039" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="LSP4" gate="1" x="68.58" y="48.26" smashed="yes" rot="R180">
<attribute name="NAME" x="72.39" y="45.339" size="1.778" layer="95" rot="R180"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="CZ1" gate="G$1" pin="KOLEKTOR"/>
<pinref part="LSP1" gate="1" pin="P"/>
<wire x1="45.72" y1="53.34" x2="40.64" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="CZ1" gate="G$1" pin="EMITER"/>
<pinref part="LSP2" gate="1" pin="P"/>
<wire x1="45.72" y1="48.26" x2="40.64" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="CZ1" gate="G$1" pin="KATODA"/>
<pinref part="LSP3" gate="1" pin="P"/>
<wire x1="60.96" y1="53.34" x2="66.04" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="LSP4" gate="1" pin="P"/>
<pinref part="CZ1" gate="G$1" pin="ANODA"/>
<wire x1="66.04" y1="48.26" x2="60.96" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
