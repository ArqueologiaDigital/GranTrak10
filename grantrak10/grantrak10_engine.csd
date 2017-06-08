<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>

sr = 44100
nchnls = 1
0dbfs = 1

FLpanel "Slider", 650, 140, 50, 50
    gkval1, gislider1 FLslider "Velocidade", 0, 127, 0, 5, -1, 580, 30, 25, 20
    gkval2, gislider2 FLslider "Comando", 0, 127, 0, 5, -1, 580, 30, 25, 80
    gkhtim, gislider3 FLslider "Aceleracao", 0.1, 1, 0, 6, -1, 30, 100, 610, 10
FLpanelEnd
FLrun

FLsetVal_i 0.1, gislider3 ;set initial time to 0.1

instr 1
	kval portk gkval2, gkhtim  ;apply portamento
	FLsetVal 1, kval, gislider1
	kEngineSpeed = kval/127
	
	aModulator vco2 1, (1/0.00742)*kEngineSpeed, 12
	aSound1 vco2 1, (1/0.013)*kEngineSpeed, 12
	aSound2 vco2 1, (1/0.00307)*kEngineSpeed, 12
	out aModulator * (aSound1 + aSound2) / 2
endin

</CsInstruments>
<CsScore>
i 1 0 600
</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>1013</x>
 <y>279</y>
 <width>563</width>
 <height>397</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="background">
  <r>160</r>
  <g>158</g>
  <b>162</b>
 </bgcolor>
 <bsbObject version="2" type="BSBConsole">
  <objectName/>
  <x>24</x>
  <y>2</y>
  <width>250</width>
  <height>158</height>
  <uuid>{1802f52a-87e1-4b4e-8d07-4995b2f04435}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>-3</midicc>
  <font>Courier</font>
  <fontsize>8</fontsize>
  <color>
   <r>0</r>
   <g>0</g>
   <b>0</b>
  </color>
  <bgcolor mode="nobackground">
   <r>255</r>
   <g>255</g>
   <b>255</b>
  </bgcolor>
 </bsbObject>
 <bsbObject version="2" type="BSBLabel">
  <objectName/>
  <x>25</x>
  <y>166</y>
  <width>249</width>
  <height>164</height>
  <uuid>{7f895e8a-7492-42e7-ac81-27023be7ff44}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>-3</midicc>
  <label>This is a widget window. In this case, the Console Output is also visible here. More information about widgets can be found in the menu: Examples-> Widgets</label>
  <alignment>left</alignment>
  <font>Lucida Grande</font>
  <fontsize>18</fontsize>
  <precision>3</precision>
  <color>
   <r>0</r>
   <g>0</g>
   <b>0</b>
  </color>
  <bgcolor mode="nobackground">
   <r>255</r>
   <g>255</g>
   <b>255</b>
  </bgcolor>
  <bordermode>noborder</bordermode>
  <borderradius>1</borderradius>
  <borderwidth>1</borderwidth>
 </bsbObject>
 <bsbObject version="2" type="BSBVSlider">
  <objectName>slider2</objectName>
  <x>160</x>
  <y>372</y>
  <width>20</width>
  <height>100</height>
  <uuid>{1aad68be-f6d0-4a89-85db-5c7f738dcb82}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <minimum>0.00000000</minimum>
  <maximum>1.00000000</maximum>
  <value>0.71000000</value>
  <mode>lin</mode>
  <mouseControl act="jump">continuous</mouseControl>
  <resolution>-1.00000000</resolution>
  <randomizable group="0">false</randomizable>
 </bsbObject>
</bsbPanel>
<bsbPresets>
</bsbPresets>
