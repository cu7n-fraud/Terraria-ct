[ENABLE]
aobscanmodule(EnemyHealthAOB, Terraria.exe, 89 87 ?? ?? ?? ?? 8B 87 ?? ?? ?? ??) 
label(code)
label(return)

alloc(code, 1024, EnemyHealthAOB)

code:
  mov [edi+000002B0],#0  
  jmp return

EnemyHealthAOB:
  jmp code
  nop
return:

[DISABLE]
EnemyHealthAOB:
  db 89 87 B0 02 00 00 
dealloc(code)
