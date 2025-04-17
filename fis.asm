[ENABLE]
aobscanmodule(InventoryFreezeAOB, Terraria.exe, 8B 87 ?? ?? ?? ?? 8B 87 ?? ?? ?? ??) 
label(code)
label(return)

alloc(code, 1024, InventoryFreezeAOB)

code:
  mov [edi+000002B0],#ITEM_ID  
  jmp return

InventoryFreezeAOB:
  jmp code
  nop
return:

[DISABLE]
InventoryFreezeAOB:
  db 8B 87 B0 02 00 00 
dealloc(code)
