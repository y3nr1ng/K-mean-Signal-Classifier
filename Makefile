CXX 		= g++
CXXFLAGS 	= -Wall -std=c++11

CXXFLAGS 	+= `pkg-config --cflags opencv`
LDFLAGS 	= -L/opt/local/lib
LDFLAGS		+= -lopencv_highgui -lopencv_imgproc -lopencv_core -lopencv_imgcodecs

TARGET = houghcirc
SOURCE = $(TARGET).cpp

TARGET:
	$(CXX) -o $(TARGET) $(SOURCE) $(CXXFLAGS) $(LDFLAGS)

.PHONY: clean
clean:
	rm -f *.o *~ $(TARGET)