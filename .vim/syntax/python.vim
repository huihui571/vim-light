" highlight Functions
"syn match cFunctions display "[a-zA-Z_0-9]\{-1,}\s\{-0,}(\{1}"ms=s,me=e-1
syn match pythonFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
syn match pythonFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi def link pythonFunctions Function
""hi cStorageClass gui=bold guifg=#0B90E1
""hi gtkType gui=italic guifg=#00F5FF
""hi gtkFunction gui=italic guifg=#EFFF00
""hi gdkType gui=italic guifg=#A0F5FF
""hi glibType gui=italic guifg=#EB90E1
