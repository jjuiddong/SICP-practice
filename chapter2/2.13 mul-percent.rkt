
;problem 2.13
;http://community.schemewiki.org/?sicp-ex-2.13

;  a = [Ca*(1 - Ta), Ca*(1 + Ta)]
;  b = [Cb*(1 - Tb), Cb*(1 + Tb)]

;  a*b = [Ca*Cb*(1 - (Ta + Tb) + Ta*Tb),
;         Ca*Cb*(1 + (Ta + Tb) + Ta*Tb)]

; Ta*Tb will be a wee number, so it can be ignored. 
; So, it appears that for small tolerances, the tolerance of
; the product will be approximately the sum of the component tolerances.

