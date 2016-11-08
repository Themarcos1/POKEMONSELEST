# Try to find the OpenGLES2 library
#  OPENGLES2_FOUND - system has OpenGL ES 2.0
#  OPENGLES2_INCLUDE_DIR - the OpenGL ES 2.0 include directory
#  OPENGLES2_LIBRARY - the OpenGL ES 2.0 library

FIND_PATH(OPENGLES2_INCLUDE_DIR NAMES GLES2/gl2.h)
FIND_LIBRARY(OPENGLES2_LIBRARY NAMES GLESv2.dll GLESv2)
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(OpenGLES2 DEFAULT_MSG OPENGLES2_LIBRARY OPENGLES2_INCLUDE_DIR)
MARK_AS_ADVANCED(OPENGLES2_LIBRARY OPENGLES2_INCLUDE_DIR)