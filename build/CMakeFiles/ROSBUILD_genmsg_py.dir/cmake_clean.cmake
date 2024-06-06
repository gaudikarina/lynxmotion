FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/lynxmotion/msg"
  "../src/lynxmotion/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/lynxmotion/msg/__init__.py"
  "../src/lynxmotion/msg/_commData.py"
  "../src/lynxmotion/msg/_motores.py"
  "../src/lynxmotion/msg/_posiciones.py"
  "../src/lynxmotion/msg/_angulos.py"
  "../src/lynxmotion/msg/_aceleracion.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
