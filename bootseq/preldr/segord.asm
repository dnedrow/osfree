;
; segord.asm
; Segments ordering and definition
;

.386p

extrn    _text16_begin :word
extrn    _text16_end   :word

public   preldr0_end
public   bss_end

include  fsd.inc

BASE1     equ STAGE0_BASE - 10000h
BASE      equ BASE1 + 19fh ; 189h; + (offset _TEXT16:_text16_end - offset _TEXT16:_text16_begin)

_TEXT16  segment dword public 'CODE'  use16
org 0h
_TEXT16  ends
_TEXT    segment dword public 'CODE'  use32
org BASE
DGROUP_begin:
_TEXT    ends
_DATA    segment dword public 'DATA'  use32
_DATA    ends
CONST    segment dword public 'DATA'  use32
CONST    ends
CONST2   segment dword public 'DATA'  use32
CONST2   ends
_end1    segment dword public 'DATA'  use32
preldr0_end:
_end1    ends
_BSS     segment dword public 'BSS'   use32
_BSS     ends
_end2    segment dword public 'BSS'   use32
bss_end:
_end2    ends

DGROUP   group _TEXT,_DATA,CONST,CONST2,_end1,_BSS,_end2

         end