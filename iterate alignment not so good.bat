
setlocal EnableDelayedExpansion
SET /A COUNT=0
FOR /r %%i in (*) do (
  SET /A COUNT+=1
  ECHO !COUNT!
  set "formattedValue=00!COUNT!"
  echo !formattedValue:~-3!
  D:\Hugin\bin\align_image_stack -a !formattedValue:~-3! --gpu F:\temphiking\asdf\tl_kurvkahut-001.jpg %%i
)

