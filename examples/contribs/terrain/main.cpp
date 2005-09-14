// TP OpenGL: Joerg Liebelt, Serigne Sow
#include "viewer.h"
#include <qapplication.h>

int main(int argc, char** argv)
{
  // Read command lines arguments.
  QApplication application(argc,argv);

  // Instantiate the viewer.
  Viewer v;

  // Make the viewer window visible on screen.
  v.show();

#if QT_VERSION < 0x040000
  // Set the viewer as the application main widget.
  application.setMainWidget(&v);
#endif

  // Run main loop.
  int res = application.exec();

  // nettoyer
  v.DrawShutdown();

  return res;

}