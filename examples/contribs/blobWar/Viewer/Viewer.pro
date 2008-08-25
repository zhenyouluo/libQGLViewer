# Implementation of the game of <i>BlobWar</i>.

# <i>BlobWar</i> is a strategy game for two players. The rules are available in the help menu. The
# two players can be human or computer.

# Computer player programs are expected to take two parameters: a board file name and an allowed
# time (which sign determines which player is to play). The output should be the x,y coordinates of
# the start and end positions of the move to play.

# A naive greedy computer player program is provided in the AI directory.

TEMPLATE = app
TARGET   = blobWar
CONFIG  += qt opengl warn_on release thread

HEADERS += blobWarViewer.h board.h move.h computerPlayer.h undo.h
SOURCES += main.cpp blobWarViewer.cpp board.cpp boardDraw.cpp move.cpp computerPlayer.cpp undo.cpp

QT_VERSION=$$[QT_VERSION]
contains( QT_VERSION, "^4.*" ) {
  FORMS += blobWarWindow.Qt4.ui computerPlayerInterface.Qt4.ui
} else {
  FORMS += blobWarWindow.Qt3.ui computerPlayerInterface.Qt3.ui
}

DISTFILES *= ../Boards/*.bwb

# NOT IN DISTRIBUTION BEGIN
DISTFILES *= blobWarWindow.Qt3.ui computerPlayerInterface.Qt3.ui
# NOT IN DISTRIBUTION END

include( ../../../examples.pri )
