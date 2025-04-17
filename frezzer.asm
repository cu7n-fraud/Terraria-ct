[ENABLE]
aobscanmodule(BuffFreezerAOB, Terraria.exe, 8B 87 ?? ?? ?? ?? 8B 87 ?? ?? ?? ??) 
label(code)
label(return)

alloc(code, 1024, BuffFreezerAOB)

code:
  mov [edi+000002B0],#0  
  jmp return

BuffFreezerAOB:
  jmp code
  nop
return:

[DISABLE]
BuffFreezerAOB:
  db 8B 87 B0 02 00 00 
dealloc(code)
