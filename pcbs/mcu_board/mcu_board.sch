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
<library name="STM32F411RET6">
<packages>
<package name="QFP50P1200X1200X160-64N">
<wire x1="-4.6" y1="4.6" x2="4.6" y2="4.6" width="0.127" layer="21"/>
<wire x1="4.6" y1="4.6" x2="4.6" y2="-4.6" width="0.127" layer="21"/>
<wire x1="4.6" y1="-4.6" x2="-4.6" y2="-4.6" width="0.127" layer="21"/>
<wire x1="-4.6" y1="-4.6" x2="-4.6" y2="4.6" width="0.127" layer="21"/>
<wire x1="-6.7" y1="6.7" x2="6.7" y2="6.7" width="0.127" layer="39"/>
<wire x1="6.7" y1="6.7" x2="6.7" y2="-6.7" width="0.127" layer="39"/>
<wire x1="6.7" y1="-6.7" x2="-6.7" y2="-6.7" width="0.127" layer="39"/>
<wire x1="-6.7" y1="-6.7" x2="-6.7" y2="6.7" width="0.127" layer="39"/>
<circle x="-3.3" y="3.2" radius="0.58309375" width="0.127" layer="21"/>
<circle x="-3.3" y="3.2" radius="0.565684375" width="0.127" layer="21"/>
<circle x="-3.3" y="3.2" radius="0.5" width="0.127" layer="21"/>
<circle x="-3.3" y="3.2" radius="0.4242625" width="0.127" layer="21"/>
<circle x="-3.3" y="3.2" radius="0.282840625" width="0.127" layer="21"/>
<circle x="-3.3" y="3.2" radius="0.360553125" width="0.127" layer="21"/>
<circle x="-3.3" y="3.2" radius="0.14141875" width="0.127" layer="21"/>
<circle x="-3.3" y="3.2" radius="0.22360625" width="0.127" layer="21"/>
<circle x="-3.4" y="3.2" radius="0.1" width="0.127" layer="21"/>
<circle x="-5.8" y="4.6" radius="0.282840625" width="0.127" layer="21"/>
<circle x="-5.8" y="4.6" radius="0.22360625" width="0.127" layer="21"/>
<circle x="-5.8" y="4.6" radius="0.14141875" width="0.127" layer="21"/>
<circle x="-5.8" y="4.6" radius="0.1" width="0.127" layer="21"/>
<circle x="-5.8" y="4.6" radius="0.14141875" width="0.127" layer="21"/>
<circle x="-5.9" y="4.6" radius="0.1" width="0.127" layer="21"/>
<text x="-5.203590625" y="6.70461875" size="1.27088125" layer="25">&gt;NAME</text>
<text x="-5.50006875" y="-8.0001" size="1.27001875" layer="27">&gt;VALUE</text>
<smd name="1" x="-5.7" y="3.75" dx="1.5" dy="0.3" layer="1"/>
<smd name="2" x="-5.7" y="3.25" dx="1.5" dy="0.3" layer="1"/>
<smd name="3" x="-5.7" y="2.75" dx="1.5" dy="0.3" layer="1"/>
<smd name="4" x="-5.7" y="2.25" dx="1.5" dy="0.3" layer="1"/>
<smd name="5" x="-5.7" y="1.75" dx="1.5" dy="0.3" layer="1"/>
<smd name="6" x="-5.7" y="1.25" dx="1.5" dy="0.3" layer="1"/>
<smd name="7" x="-5.7" y="0.75" dx="1.5" dy="0.3" layer="1"/>
<smd name="8" x="-5.7" y="0.25" dx="1.5" dy="0.3" layer="1"/>
<smd name="9" x="-5.7" y="-0.25" dx="1.5" dy="0.3" layer="1"/>
<smd name="10" x="-5.7" y="-0.75" dx="1.5" dy="0.3" layer="1"/>
<smd name="11" x="-5.7" y="-1.25" dx="1.5" dy="0.3" layer="1"/>
<smd name="12" x="-5.7" y="-1.75" dx="1.5" dy="0.3" layer="1"/>
<smd name="13" x="-5.7" y="-2.25" dx="1.5" dy="0.3" layer="1"/>
<smd name="14" x="-5.7" y="-2.75" dx="1.5" dy="0.3" layer="1"/>
<smd name="15" x="-5.7" y="-3.25" dx="1.5" dy="0.3" layer="1"/>
<smd name="16" x="-5.7" y="-3.75" dx="1.5" dy="0.3" layer="1"/>
<smd name="17" x="-3.75" y="-5.7" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="18" x="-3.25" y="-5.7" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="19" x="-2.75" y="-5.7" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="20" x="-2.25" y="-5.7" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="21" x="-1.75" y="-5.7" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="22" x="-1.25" y="-5.7" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="23" x="-0.75" y="-5.7" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="24" x="-0.25" y="-5.7" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="25" x="0.25" y="-5.7" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="26" x="0.75" y="-5.7" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="27" x="1.25" y="-5.7" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="28" x="1.75" y="-5.7" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="29" x="2.25" y="-5.7" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="30" x="2.75" y="-5.7" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="31" x="3.25" y="-5.7" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="32" x="3.75" y="-5.7" dx="1.5" dy="0.3" layer="1" rot="R90"/>
<smd name="33" x="5.7" y="-3.75" dx="1.5" dy="0.3" layer="1" rot="R180"/>
<smd name="34" x="5.7" y="-3.25" dx="1.5" dy="0.3" layer="1" rot="R180"/>
<smd name="35" x="5.7" y="-2.75" dx="1.5" dy="0.3" layer="1" rot="R180"/>
<smd name="36" x="5.7" y="-2.25" dx="1.5" dy="0.3" layer="1" rot="R180"/>
<smd name="37" x="5.7" y="-1.75" dx="1.5" dy="0.3" layer="1" rot="R180"/>
<smd name="38" x="5.7" y="-1.25" dx="1.5" dy="0.3" layer="1" rot="R180"/>
<smd name="39" x="5.7" y="-0.75" dx="1.5" dy="0.3" layer="1" rot="R180"/>
<smd name="40" x="5.7" y="-0.25" dx="1.5" dy="0.3" layer="1" rot="R180"/>
<smd name="41" x="5.7" y="0.25" dx="1.5" dy="0.3" layer="1" rot="R180"/>
<smd name="42" x="5.7" y="0.75" dx="1.5" dy="0.3" layer="1" rot="R180"/>
<smd name="43" x="5.7" y="1.25" dx="1.5" dy="0.3" layer="1" rot="R180"/>
<smd name="44" x="5.7" y="1.75" dx="1.5" dy="0.3" layer="1" rot="R180"/>
<smd name="45" x="5.7" y="2.25" dx="1.5" dy="0.3" layer="1" rot="R180"/>
<smd name="46" x="5.7" y="2.75" dx="1.5" dy="0.3" layer="1" rot="R180"/>
<smd name="47" x="5.7" y="3.25" dx="1.5" dy="0.3" layer="1" rot="R180"/>
<smd name="48" x="5.7" y="3.75" dx="1.5" dy="0.3" layer="1" rot="R180"/>
<smd name="49" x="3.75" y="5.7" dx="1.5" dy="0.3" layer="1" rot="R270"/>
<smd name="50" x="3.25" y="5.7" dx="1.5" dy="0.3" layer="1" rot="R270"/>
<smd name="51" x="2.75" y="5.7" dx="1.5" dy="0.3" layer="1" rot="R270"/>
<smd name="52" x="2.25" y="5.7" dx="1.5" dy="0.3" layer="1" rot="R270"/>
<smd name="53" x="1.75" y="5.7" dx="1.5" dy="0.3" layer="1" rot="R270"/>
<smd name="54" x="1.25" y="5.7" dx="1.5" dy="0.3" layer="1" rot="R270"/>
<smd name="55" x="0.75" y="5.7" dx="1.5" dy="0.3" layer="1" rot="R270"/>
<smd name="56" x="0.25" y="5.7" dx="1.5" dy="0.3" layer="1" rot="R270"/>
<smd name="57" x="-0.25" y="5.7" dx="1.5" dy="0.3" layer="1" rot="R270"/>
<smd name="58" x="-0.75" y="5.7" dx="1.5" dy="0.3" layer="1" rot="R270"/>
<smd name="59" x="-1.25" y="5.7" dx="1.5" dy="0.3" layer="1" rot="R270"/>
<smd name="60" x="-1.75" y="5.7" dx="1.5" dy="0.3" layer="1" rot="R270"/>
<smd name="61" x="-2.25" y="5.7" dx="1.5" dy="0.3" layer="1" rot="R270"/>
<smd name="62" x="-2.75" y="5.7" dx="1.5" dy="0.3" layer="1" rot="R270"/>
<smd name="63" x="-3.25" y="5.7" dx="1.5" dy="0.3" layer="1" rot="R270"/>
<smd name="64" x="-3.75" y="5.7" dx="1.5" dy="0.3" layer="1" rot="R270"/>
</package>
</packages>
<symbols>
<symbol name="STM32F411RET6">
<wire x1="-17.78" y1="-73.66" x2="15.24" y2="-73.66" width="0.254" layer="94"/>
<wire x1="15.24" y1="-73.66" x2="15.24" y2="66.04" width="0.254" layer="94"/>
<wire x1="15.24" y1="66.04" x2="-17.78" y2="66.04" width="0.254" layer="94"/>
<wire x1="-17.78" y1="66.04" x2="-17.78" y2="-73.66" width="0.254" layer="94"/>
<text x="-17.8074" y="66.9048" size="1.27195" layer="95">&gt;NAME</text>
<text x="-17.5432" y="-76.0204" size="1.271240625" layer="96">&gt;VALUE</text>
<pin name="PA0" x="-22.86" y="55.88" length="middle"/>
<pin name="PA1" x="-22.86" y="53.34" length="middle"/>
<pin name="PA2" x="-22.86" y="50.8" length="middle"/>
<pin name="PA3" x="-22.86" y="48.26" length="middle"/>
<pin name="PA4" x="-22.86" y="45.72" length="middle"/>
<pin name="PA5" x="-22.86" y="43.18" length="middle"/>
<pin name="PA6" x="-22.86" y="40.64" length="middle"/>
<pin name="PA7" x="-22.86" y="38.1" length="middle"/>
<pin name="PA8" x="-22.86" y="35.56" length="middle"/>
<pin name="PA9" x="-22.86" y="33.02" length="middle"/>
<pin name="PA10" x="-22.86" y="30.48" length="middle"/>
<pin name="PA11" x="-22.86" y="27.94" length="middle"/>
<pin name="PA12" x="-22.86" y="25.4" length="middle"/>
<pin name="PA13" x="-22.86" y="22.86" length="middle"/>
<pin name="PA14" x="-22.86" y="20.32" length="middle"/>
<pin name="PA15" x="-22.86" y="17.78" length="middle"/>
<pin name="PB0" x="-22.86" y="15.24" length="middle"/>
<pin name="PB1" x="-22.86" y="12.7" length="middle"/>
<pin name="PB2" x="-22.86" y="10.16" length="middle"/>
<pin name="PB3" x="-22.86" y="7.62" length="middle"/>
<pin name="PB4" x="-22.86" y="5.08" length="middle"/>
<pin name="PB5" x="-22.86" y="2.54" length="middle"/>
<pin name="PB6" x="-22.86" y="0" length="middle"/>
<pin name="PB7" x="-22.86" y="-2.54" length="middle"/>
<pin name="PB8" x="-22.86" y="-5.08" length="middle"/>
<pin name="PB9" x="-22.86" y="-7.62" length="middle"/>
<pin name="PB10" x="-22.86" y="-10.16" length="middle"/>
<pin name="VCAP1" x="20.32" y="-53.34" length="middle" direction="pas" rot="R180"/>
<pin name="PB12" x="-22.86" y="-15.24" length="middle"/>
<pin name="PB13" x="-22.86" y="-17.78" length="middle"/>
<pin name="PB14" x="-22.86" y="-20.32" length="middle"/>
<pin name="PB15" x="-22.86" y="-22.86" length="middle"/>
<pin name="PC0" x="-22.86" y="-25.4" length="middle"/>
<pin name="PC1" x="-22.86" y="-27.94" length="middle"/>
<pin name="PC2" x="-22.86" y="-30.48" length="middle"/>
<pin name="PC3" x="-22.86" y="-33.02" length="middle"/>
<pin name="PC4" x="-22.86" y="-35.56" length="middle"/>
<pin name="PC5" x="-22.86" y="-38.1" length="middle"/>
<pin name="PC6" x="-22.86" y="-40.64" length="middle"/>
<pin name="PC7" x="-22.86" y="-43.18" length="middle"/>
<pin name="PC8" x="-22.86" y="-45.72" length="middle"/>
<pin name="PC9" x="-22.86" y="-48.26" length="middle"/>
<pin name="PC10" x="-22.86" y="-50.8" length="middle"/>
<pin name="PC11" x="-22.86" y="-53.34" length="middle"/>
<pin name="PC12" x="-22.86" y="-55.88" length="middle"/>
<pin name="PC13" x="-22.86" y="-58.42" length="middle"/>
<pin name="PC14-OSC32_IN" x="-22.86" y="-60.96" length="middle"/>
<pin name="PC15-OSC32_OUT" x="-22.86" y="-63.5" length="middle"/>
<pin name="PH0-OSC_IN" x="-22.86" y="-66.04" length="middle"/>
<pin name="PH1-OSC_OUT" x="-22.86" y="-68.58" length="middle"/>
<pin name="VBAT" x="20.32" y="50.8" length="middle" direction="pwr" rot="R180"/>
<pin name="NRST" x="-22.86" y="58.42" length="middle"/>
<pin name="VSSA/VREF-" x="20.32" y="-58.42" length="middle" direction="pwr" rot="R180"/>
<pin name="VDDA/VREF+" x="20.32" y="53.34" length="middle" direction="pwr" rot="R180"/>
<pin name="BOOT0" x="-22.86" y="63.5" length="middle" direction="in"/>
<pin name="VDD@1" x="20.32" y="63.5" length="middle" direction="pwr" rot="R180"/>
<pin name="VDD@2" x="20.32" y="60.96" length="middle" direction="pwr" rot="R180"/>
<pin name="VDD@3" x="20.32" y="58.42" length="middle" direction="pwr" rot="R180"/>
<pin name="VDD@4" x="20.32" y="55.88" length="middle" direction="pwr" rot="R180"/>
<pin name="VSS@1" x="20.32" y="-60.96" length="middle" direction="pwr" rot="R180"/>
<pin name="VSS@2" x="20.32" y="-63.5" length="middle" direction="pwr" rot="R180"/>
<pin name="VSS@3" x="20.32" y="-66.04" length="middle" direction="pwr" rot="R180"/>
<pin name="VSS@4" x="20.32" y="-68.58" length="middle" direction="pwr" rot="R180"/>
<pin name="PD2" x="-22.86" y="-71.12" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="STM32F411RET6" prefix="U">
<description>High-performance access line, ARM Cortex-M4 core with DSP and FPU, 512 Kbytes Flash, 100 MHz CPU, ART Accelerator &lt;a href="https://pricing.snapeda.com/parts/STM32F411RET6/STMicroelectronics/view-part?ref=eda"&gt;Check availability&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="STM32F411RET6" x="0" y="0"/>
</gates>
<devices>
<device name="" package="QFP50P1200X1200X160-64N">
<connects>
<connect gate="G$1" pin="BOOT0" pad="60"/>
<connect gate="G$1" pin="NRST" pad="7"/>
<connect gate="G$1" pin="PA0" pad="14"/>
<connect gate="G$1" pin="PA1" pad="15"/>
<connect gate="G$1" pin="PA10" pad="43"/>
<connect gate="G$1" pin="PA11" pad="44"/>
<connect gate="G$1" pin="PA12" pad="45"/>
<connect gate="G$1" pin="PA13" pad="46"/>
<connect gate="G$1" pin="PA14" pad="49"/>
<connect gate="G$1" pin="PA15" pad="50"/>
<connect gate="G$1" pin="PA2" pad="16"/>
<connect gate="G$1" pin="PA3" pad="17"/>
<connect gate="G$1" pin="PA4" pad="20"/>
<connect gate="G$1" pin="PA5" pad="21"/>
<connect gate="G$1" pin="PA6" pad="22"/>
<connect gate="G$1" pin="PA7" pad="23"/>
<connect gate="G$1" pin="PA8" pad="41"/>
<connect gate="G$1" pin="PA9" pad="42"/>
<connect gate="G$1" pin="PB0" pad="26"/>
<connect gate="G$1" pin="PB1" pad="27"/>
<connect gate="G$1" pin="PB10" pad="29"/>
<connect gate="G$1" pin="PB12" pad="33"/>
<connect gate="G$1" pin="PB13" pad="34"/>
<connect gate="G$1" pin="PB14" pad="35"/>
<connect gate="G$1" pin="PB15" pad="36"/>
<connect gate="G$1" pin="PB2" pad="28"/>
<connect gate="G$1" pin="PB3" pad="55"/>
<connect gate="G$1" pin="PB4" pad="56"/>
<connect gate="G$1" pin="PB5" pad="57"/>
<connect gate="G$1" pin="PB6" pad="58"/>
<connect gate="G$1" pin="PB7" pad="59"/>
<connect gate="G$1" pin="PB8" pad="61"/>
<connect gate="G$1" pin="PB9" pad="62"/>
<connect gate="G$1" pin="PC0" pad="8"/>
<connect gate="G$1" pin="PC1" pad="9"/>
<connect gate="G$1" pin="PC10" pad="51"/>
<connect gate="G$1" pin="PC11" pad="52"/>
<connect gate="G$1" pin="PC12" pad="53"/>
<connect gate="G$1" pin="PC13" pad="2"/>
<connect gate="G$1" pin="PC14-OSC32_IN" pad="3"/>
<connect gate="G$1" pin="PC15-OSC32_OUT" pad="4"/>
<connect gate="G$1" pin="PC2" pad="10"/>
<connect gate="G$1" pin="PC3" pad="11"/>
<connect gate="G$1" pin="PC4" pad="24"/>
<connect gate="G$1" pin="PC5" pad="25"/>
<connect gate="G$1" pin="PC6" pad="37"/>
<connect gate="G$1" pin="PC7" pad="38"/>
<connect gate="G$1" pin="PC8" pad="39"/>
<connect gate="G$1" pin="PC9" pad="40"/>
<connect gate="G$1" pin="PD2" pad="54"/>
<connect gate="G$1" pin="PH0-OSC_IN" pad="5"/>
<connect gate="G$1" pin="PH1-OSC_OUT" pad="6"/>
<connect gate="G$1" pin="VBAT" pad="1"/>
<connect gate="G$1" pin="VCAP1" pad="30"/>
<connect gate="G$1" pin="VDD@1" pad="32"/>
<connect gate="G$1" pin="VDD@2" pad="48"/>
<connect gate="G$1" pin="VDD@3" pad="64"/>
<connect gate="G$1" pin="VDD@4" pad="19"/>
<connect gate="G$1" pin="VDDA/VREF+" pad="13"/>
<connect gate="G$1" pin="VSS@1" pad="31"/>
<connect gate="G$1" pin="VSS@2" pad="47"/>
<connect gate="G$1" pin="VSS@3" pad="63"/>
<connect gate="G$1" pin="VSS@4" pad="18"/>
<connect gate="G$1" pin="VSSA/VREF-" pad="12"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="In Stock"/>
<attribute name="DESCRIPTION" value=" ARM® Cortex®-M4 STM32F4 Microcontroller IC 32-Bit Single-Core 100MHz 512KB (512K x 8) FLASH 64-LQFP (10x10) "/>
<attribute name="MF" value="STMicroelectronics"/>
<attribute name="MP" value="STM32F411RET6"/>
<attribute name="PACKAGE" value="LQFP-64 STMicroelectronics"/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/STM32F411RET6/?ref=eda"/>
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
<part name="U1" library="STM32F411RET6" deviceset="STM32F411RET6" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="G$1" x="0" y="0" smashed="yes">
<attribute name="NAME" x="-17.8074" y="66.9048" size="1.27195" layer="95"/>
<attribute name="VALUE" x="-17.5432" y="-76.0204" size="1.271240625" layer="96"/>
</instance>
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
