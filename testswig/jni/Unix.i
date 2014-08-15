%module Unix
%{
#include <unistd.h>
#include "hello-jni.h"
%}

typedef unsigned int uid_t;

extern uid_t getuid();

%mutable;
extern int counter;

%immutable;
extern int counter_readonly;

%module Unix

%javaconst (1);
#define MAX_WIDTH 640

%javaconst (0);
#define MY_TEST_MAC 500
%constant int MAX_HEIGHT = 320;


/* %javaconst (1); */
/* enum { ONE = 1, TWO = 2, THREE, FOUR }; */

/* %include "enums.swg" */ 
/* enum Numbers { ONE = 1, TWO = 2, THREE, FOUR }; */


%mutable;
struct Rect {
	int x;
	int y;
	int w;
	int h;
};

struct Point {
	int x;
	int y;
	struct Rect temp;
};

extern int getPoint(struct Point *p);