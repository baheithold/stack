
#include "integer.h"
#include "stack.h"

int main(void) {

    STACK *s = newSTACK(displayINTEGER, freeINTEGER);

    push(s, newINTEGER(5));
    push(s, newINTEGER(6));
    push(s, newINTEGER(2));
    push(s, newINTEGER(9));
    push(s, newINTEGER(1));

    displaySTACK(s, stdout);
    printf("\n");

    return 0;
}
