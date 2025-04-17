[ENABLE]
aobscanmodule(ManaAOB, Terraria.exe, 89 87 ?? ?? ?? ?? 8B 87 ?? ?? ?? ??)  
label(code)
label(return)

alloc(code, 1024, ManaAOB)

code:
  mov [edi+000002C0],#200  
  jmp return

ManaAOB:
  jmp code
  nop
return:

[DISABLE]
ManaAOB:
  db 89 87 B0 02 00 00 
dealloc(code)
