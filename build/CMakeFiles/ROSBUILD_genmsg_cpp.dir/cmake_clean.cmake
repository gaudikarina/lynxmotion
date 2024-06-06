FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/lynxmotion/msg"
  "../src/lynxmotion/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/lynxmotion/commData.h"
  "../msg_gen/cpp/include/lynxmotion/motores.h"
  "../msg_gen/cpp/include/lynxmotion/posiciones.h"
  "../msg_gen/cpp/include/lynxmotion/angulos.h"
  "../msg_gen/cpp/include/lynxmotion/aceleracion.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
