#ifndef __HELLO_JNI_H_
#define __HELLO_JNI_H_

extern int counter;
extern int counter_readonly;

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

int getPoint(struct Point *p);

#endif
