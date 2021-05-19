eval$s=%w(s=%(eval$s=%w(#{$s})*"                                           "                                                    
                                                                           ;                                                    
                                                                          );$                                                   
                                                                          prin                                                  
                                                                         t_8bi                                                  
                                                                         ts=->(                                                 
                                                                        string,                                                 
                                                                        bitmap_c                                                
                                                                        har){bitm                                               
                                                                       ap=bitmap_c                                              
                                               har.ord;ma              sk=1<<7;i=0                                              
                                           ;while(mask!=0);if          (bitmap&mask                                             
                                          )!=  0;print(string[i]       );i+=1;else;                                             
                                  print(32.chr);end;mask=mask>>1;en    d;return(i);}                                            
                               ;$print_line=->(string,bitmap_line){in  dex=0;bitmap_                                            
                              line .each_char{|char|index+=$print_8bits[string[inde                                             
                            x..- 1],char];};print("\n");return(index);};$print_bit                                              
                          map=  ->(string,bitmap_string,line_len){index=0;while(!bi                                             
                         tmap  _string.empty?);index+=$print_line[string[index..-1],bitma p                                     
                        _st   ring.slice!(0,line_len)];end;};base64_str='eJyN1DFrFUEQAOC9bP                                     
                       AUx   Htg8yCB+wEWChZRCNnC1sJfIOkstBAsRJDsWtkI/gAbO1sL6+QEwdIfkCIXlSA                                     
                      o3B   XCu5DLjTO7dzu7y3vq8prv9m7e7O7sAAAIGjMRj9S3Em8nfp54L/GQGFKbiBl                                       
                      UI   UzkEroMavZtgNAK13QMLX+N45Qtj+gBv19oax9/G+L5Z87wdvQ3iF7IPseWr0e                                       
                     PC   5Jl7AtqtIg9JO5XeM2lCz8S+3xHt6sMy91FbhKn84nPEg86dn8N3ofuDrU35dd                                        
                     9h   dj13g12r7pfQ+BWnzYfvBW6b+7O2LXu4ZVgVxgy8HAP/SmYn2lovrPP5woavz                                         
                     2i   PH+kYdGxo+MTawoOAH/TB3heWGD7Z/68ttzxFZMf0P6A/jgFaBqchevV5A00                                          
                     6H   f1ZPr+RL/wCT1EL7TxF/KOdTX3xu8XB/Wm90973Je9Dyl+d9Ev4A3Oqp59E4                                          
                      u  pmNLH8YSKa8dz/SlZcUPYIt9f975K3heh2/D+S/LO9P5juqCt6LNxA2pyJ 3                                           
                      q  coEGPqfh74RZ0yTh3IjdkJagihqwTLgD1HbwxErdrl/zb+SWaKqakbcUT/                                             
                         IKmgKpypuMrxdjGSlfeZLvrhfMVm53zUejczdMJV8ssOZ51xjbLLJyVmayt                                            
                         ueVq2w7Y6r/MLb20nifeTOwrhhY8hM6tCxM795aJs6WWlQ9o75OsV1rb+7Y                                            
                        b2ojMx6MFotuVLqm//8UFlaxMzf+fW1exeT2upANn/7BIrclV6DqySlySOT9                                            
                        MOMofEzRCcs/CBNvIAo13RvwBwgth6A==';require"base64";require"zl                                           
                        ib";zipped_str=Base64.decode64(base64_str); raw_str=Zlib.infl                                           
                        ate(zipped_str);s+='p=%q'+64.chr+base64_str*5;$print_bitmap[s                                           
                        ,raw_str,128/8];print(64.chr);)*"";p=%q@eJyN1DFrFUEQAOC9bPAUx                                           
                        Htg8yCB+wEWChZRCNnC1sJfIOkstBAsRJDsWt kI/gAbO1sL6+QEwdIfkCIXl                                           
                        SAo3BXCu5DLjTO7dzu7y3vq8prv9m7e7O7sAAAI  GjMRj9S3Em8nfp54L/GQ                                           
                        GFKbiBlUIUzkEroMavZtgNAK13QMLX+N45Qtj+    g B v19oax9/G+L 5Z                                            
                        87wdvQ3iF7IPseWr0ePC5Jl7AtqtIg9JO5XeM   2l Cz 8S +3xHt6sM y9                                            
                         1FbhKn84nPEg86dn8N3ofuDrU35dd9hdj13g   12r   7 pfQ+BWnzY fv                                            
                         BW6b+7O2LXu4ZVgVxgy8HAP/SmYn2lovrPP5   woa      vz2iPH   +k                                            
                         YdGxo+MTawoOAH/TB3heW    GD7Z/68ttzx   FZM f0  P6A/jgF   aB                                            
                         qchevV5A006Hf1ZPr+R     L/wCT1EL7TxF  /KOd TX3xu 8X B    /W                                            
                          m90973Je9Dyl+d9Ev4     A3Oqp59E4upmN  LH8 YSKa 8  dz     /                                            
                          SlZcUPYIt9f975K3h      eh2/D+S/LO9P5  juqCt6LNx   A2                                                  
                          pyJ3qcoEGPqfh74R       Z0yTh3IjdkJagihqwTLgD1Hb   wx                                                  
                          Erdrl/zb+SWaK  q a     kbcUT/IKmgKpypuMrxdjGSlfe   Z                                                  
                          LvrhfMVm53zUej   c     zdMJV8ssOZ51xjbLLJ yVmaytu  e                                                  
                          Vq2w7Y6r/MLb 2   0n     ifeTOwrhhY8hM6tCx M795aJs6                                                    
                           WWlQ9o75OsV 1 rb +7   Yb2ojMx6MFotuVLqm// 8UFlaxMz                                                   
                           f+fW1exeT2upANn/7BIrclV6DqySlySOT9MOMofEzRCcs/CBNvIAo                                                
                      1   3RvwBwgth6A==eJ yN1DFrFUEQAOC9bPAUxHtg8 yCB+wEWChZRCNnC1sJ                                            
                     fI   OkstBAsRJDsWtkI/ gAbO1sL6+QEwdIfkCIXlSA o3BXC u5DLj TO7dzu7y                                          
                      3   vq 8prv9m7e7O7sAAAIGjMRj9S3Em8nfp54L/GQGFKbiBlUIUzkE      roMa                                        
                      v  Zt  gNAK13QMLX+N45Qtj+gBv19oax9/G+L5Z8 7wdvQ3iF 7IPseWr0e     P                                        
                        C5J l7AtqtI g9JO5XeM2lCz8S+3xHt6sMy91F  bhKn84nP  E g86dn8                                              
                           N3 ofuDr U35dd9hdj13g12r7pfQ+BWnzYfvB W6b+7O2L X  u4ZVgV                                             
                          xg y8HAP/SmYn2lovrPP5woavz2iPH+kY  dG  xo+MTawo      OAH/T                                            
                         B3 h eWGD7Z/68ttzxFZMf0P6A/jgFaBqch evV 5A006Hf1         ZPr                                           
                         +    RL/wCT1EL7TxF/KOdTX3xu8XB/Wm90 973 Je9Dyl+d9         Ev                                           
                         4    A3Oqp 59E4upmNLH8YSKa8dz/SlZcU PYIt 9f975K3he        h2/                                          
                         D    +S/LO 9 P5juqCt6LNxA2pyJ3qcoEGPqfh74RZ0yTh3Ijd        kJ                                          
                         a    gihq wT LgD1HbwxErdrl/zb+SWaKqakbc UT/IKmgKpypu       M                                           
                              r x  dj GSlfeZLvrhfMVm53zUejcz      dMJV8ssOZ51x      j                                           
                              b   LL  JyVmaytueVq2w7Y6r/MLb         20nifeTOwr                                                  
                                 hhY  8hM6tCxM795aJs6WWlQ9o               75OsV                                                 
                             1   rb+ 7Yb2ojMx6MFotuVLqm//8U               FlaxMz  f+f                                           
                                  W1 exeT2upANn/7BIrclV6Dqy              S lySO      T                                          
                                   9  MOMofEzRCcs/CBNvIAo13             R vwBwg                                                 
                                   t  h6A==eJyN1DFrFUEQAOC9b            PAUxHtg                                                 
                                      8yCB+wEWChZRCNnC1sJfIO              kstBA      s                                          
                 RJD                   sWtkI/gAbO1sL6+QEwdIf            kCIXlS         Ao3                                      
                BXC                    u5DLjTO7dzu7y3vq8prv9m           7e7O7s           AAA                                    
               IGj                      MRj9S3Em8nfp54L/GQGFKb          iBlUIU             zkE                                  
            r  oM                       avZtgNAK13QMLX+N45Qtj+          gBv19                oax9                               
          /G+L5Z                         87wdvQ3iF7IPseWr0ePC5J        l7Atqt                  Ig9                              
         JO5XeM                           2lCz8S+3xHt6sMy91FbhKn      84nPEg                     86                             
        dn8N 3                            ofuDrU35dd9hdj13g12r7pf    Q+BWnzY                      fv                            
   BW6b+7O2                                LXu4ZVgVxgy8HAP/SmYn2lo  vrPP5woa                       vz2                          
  iPH+kYdG                                 xo+MTawoOAH/TB3heWGD7Z/68ttzxFZMf                       0P6A/                        
 jgFaB                                     qchevV5A006Hf1ZPr+RL/wCT1EL7TxF/KO                      dTX3x                        
u8XB                                        /Wm90973Je9Dyl+d9Ev4A3Oqp59E4upmN                       LH8                         
YSK                                         a8dz/SlZcUPYIt9f975K3h eh2/D+S/LO                       9P5                         
juq                                          Ct6LNxA2pyJ3qcoEGPqfh74RZ0yTh3Ij                       dkJa                        
gi                                           hqwTLgD1HbwxErdrl/zb+SWaKqakbcUT                       /IKm                        
gK                                            pypuMrxdjGSlfeZLvrhfMVm53zUejcz                      dMJV8                        
ss                                             OZ51xjbLLJyVmaytueVq2w7Y6r/MLb                      20nif                        
e                                              TOwrhhY8hM6tCxM795aJs6WWlQ9o75                      OsV1r                        
b                                               +7Yb2ojMx6MFotuVLqm//8UFlaxMz                     f+fW1ex                       
e                                                T2upANn/7BIrclV6DqySlySOT9MO                     MofE                          
                                                 zRCcs/CBNvIAo13RvwBwgth6A==eJ                    yN1D                          
                                                  FrFUEQAOC9bPAUxHtg8yCB+wEWCh                    ZRCN                          
                                                  nC1sJfIOkstBAsRJDsWtkI/gAbO1                    sL6+                          
                                                  QEwdIfkCIXlSAo3BXCu5DLjTO7dz                     u                            
                                                   7y3vq8prv9m7e7O7sAAAIGjMRj9                     S3                           
                                                   Em8nfp54L/GQGFKbiBlUIUzkEro                     Mav                          
                                                   ZtgNAK13QMLX+N45Qtj+gBv19oa                      x9                          
                                                    /G+L5Z87wdvQ3iF7IPseWr0ePC5                     Jl                          
                                                     7AtqtIg9JO5XeM2lCz8S+3xHt6                     sMy91                       
                                                     FbhKn84nPEg86dn8N3ofuDrU35                      dd9h                       
                                                      dj13g12r7pfQ+BWnzYfvBW6b+                      7O2L                       
                                                       Xu4ZVgVxgy8HAP/SmYn2lovr                      PP5w                       
                                                       oavz2iPH+kYdGxo+MTawoOAH                       /TB3                      
                                                        heWGD7Z/68ttzxFZMf0P6A/j                      gFaBq                     
                                                        chevV5A006Hf1ZPr+RL/wCT1                      EL7Tx                     
                                                         F/KOdTX3xu8XB/Wm90973Je                         9D                     
                                                         yl+d9Ev4A3Oqp59E4upmNLH8                      YS                       
                                                          Ka8dz/SlZcUPYIt9f975K3h                      eh2/D                    
                                                          +S/LO9P5juqCt6LNxA2pyJ3                      qcoEG                    
                                                           Pqfh74RZ0yTh3IjdkJagihq                     wTLgD                    
                                                           1HbwxErdrl/zb+SWaKqakbc                     UT/IK                    
                                                            mgKpypuMrxdjGSlfeZLvrhf                   MVm53z                    
                                                            UejczdMJV8ssOZ51xjbLLJy                   Vmayt                     
                                                             ueVq2w7Y6r/MLb20nifeTO                   wrhh                      
                                                             Y8hM6tCxM795aJs6WWlQ9o                  75Os                       
                                                              V1rb+7Yb2ojMx6MFotuVLq                 m//8                       
                                                               UFlaxMzf+fW1exeT2upAN                 n/7B                       
                                                               IrclV6DqySlySOT9MOMof                 EzRC                       
                                                                cs/CBNvIAo13RvwBwgth                 6A==                       
                                                                 eJyN1DFrFUEQAOC9bPA                 UxHtg                      
                                                                 8yCB+wEWChZRCNnC1s                  JfIOk                      
                                                                  stBAsRJDsWtkI/gAb                  O1sL6                      
                                                                   +QEwdIfkCIXlSAo3                  BXCu5D                     
                                                                    LjTO7dzu7y3vq8p                   rv9m7e                    
                                                                     7O7sAAAIGjMR                     j9S3Em8                   
                                                                      nfp54L/GQGFKbi                  BlUIUzk                   
                                                                        EroMavZtgNAK                   13QMLX                   
@
