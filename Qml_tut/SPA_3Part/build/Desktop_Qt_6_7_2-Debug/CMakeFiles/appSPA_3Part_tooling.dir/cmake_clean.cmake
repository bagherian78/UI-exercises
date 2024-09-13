file(REMOVE_RECURSE
  "SPA_3Part/BannerItem.qml"
  "SPA_3Part/Main.qml"
  "SPA_3Part/resources.qrc"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/appSPA_3Part_tooling.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
