/*
 *  File:   stack.c
 *  Author: Brett Heithold
 *  Description: This is the implementation file for the stack class.
 */

#include "stack.h"
#include "dll.h"
#include <stdlib.h>
#include <assert.h>

#define TOP 0

/*
 *  Type:   STACK
 *  Description: The basis of the STACK class.
 */
struct STACK {
    DLL *store;
    int size;

    void (*display)(void *, FILE *);
    void (*free)(void *);
};

/*
 *  Constructor:    newSTACK
 *  Usage:  STACK *s = newSTACK(displayINTEGER, freeINTEGER);
 *  Description: The constructor is passed functions that knows how to display
 *  and free the generic values stored in the queue. 
 */
STACK *newSTACK(void (*d)(void *, FILE *), void (*f)(void *)) {
    STACK *s = malloc(sizeof(STACK));
    assert(s != 0);
    s->store = newDLL(d, f);
    s->size = 0;
    s->display = d;
    s->free = f;
    return s;
}

/*
 *  Method: push
 *  Usage:  push(items, value);
 *  Description: The push method runs in constant or amortized constant time. 
 *  The value to be pushed is stored in the underlying data structure. 
 */
void push(STACK *items, void *value) {
    assert(items != 0);
    insertDLL(items->store, TOP, value);
    items->size++;
}

/*
 *  Method: displaySTACK
 *  Usage:  displaySTACK(items, stdout);
 *  Example Output: |1,9,2,6,5| where 1 is on the top of the stack
 */
void displaySTACK(STACK *items, FILE *fp) {
    assert(items != 0);
    fprintf(fp, "|");
    for (int i = 0; i < sizeDLL(items->store); i++) {
        items->display(getDLL(items->store, i), fp);
        if (i < sizeDLL(items->store) - 1) {
            fprintf(fp, ",");
        }
    }
    fprintf(fp, "|");
}
