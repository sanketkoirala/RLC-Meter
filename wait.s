
    .def waitMicrosecond


.thumb
.text

waitMicrosecond:
WMS_LOOP0:   MOV  R1, #6          ; 1
WMS_LOOP1:   SUB  R1, R1, #1      ; 6
             CBZ  R1, WMS_DONE1   ; 5+1*3
             NOP                  ; 5
             NOP                  ; 5
             B    WMS_LOOP1       ; 5*2
WMS_DONE1:   SUB  R0, R0, #1      ; 1
             CBZ  R0, WMS_DONE0   ; 1
             NOP                  ; 1
             B    WMS_LOOP0       ; 1*2
WMS_DONE0:   BX   LR              ; ---
                                  ; 40 clocks/us
