#include "dg.h"
#include <stdlib.h>


 struct queue_item
 {
    int data;
    struct queue_item *next_el;
 };

    struct queue_item *head;
    struct queue_item *tail;

void init(void)
{
    head = tail = NULL;
}

void show(void)
{
    if(tail==NULL)
    {
        printf("queue is empty\n");
    }

    else
        {
            for(struct queue_item *p = head; p != NULL; p = p->next_el)
            {
                 printf("%d\t", p->data);
            }
            printf("\n");
        }

}



void push(int v)
{
    struct queue_item *new_struct = malloc(sizeof(struct queue_item));

    new_struct -> data = v;
    new_struct -> next_el = NULL;
    if ( tail == NULL)
    {
        tail = head = new_struct;
    }
    else
    {
        tail -> next_el = new_struct;
        tail = new_struct;
    }

}

int pop()
{
    if(head == NULL)
    {
        return(-1);
    }
    else
    {
        struct queue_item *temp;
        temp = head;
        head = head -> next_el;
        int i = temp -> data;
        free(temp);
        return i;
    }
}

