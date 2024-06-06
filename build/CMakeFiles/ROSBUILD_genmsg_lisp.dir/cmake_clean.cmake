FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/lynxmotion/msg"
  "../src/lynxmotion/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_lisp"
  "../msg_gen/lisp/commData.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_commData.lisp"
  "../msg_gen/lisp/motores.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_motores.lisp"
  "../msg_gen/lisp/posiciones.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_posiciones.lisp"
  "../msg_gen/lisp/angulos.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_angulos.lisp"
  "../msg_gen/lisp/aceleracion.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_aceleracion.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
