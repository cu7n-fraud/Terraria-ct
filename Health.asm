[ENABLE]
aobscanmodule(HealthAOB, Terraria.exe, 89 87 ?? ?? ?? ?? 8B 87 ?? ?? ?? ??) 
label(code)
label(return)

alloc(code, 1024, HealthAOB)

code:
  mov [edi+000002B0],#500  
  jmp return

HealthAOB:
  jmp code
  nop
return:

[DISABLE]
HealthAOB:
  db 89 87 B0 02 00 00 
dealloc(code)