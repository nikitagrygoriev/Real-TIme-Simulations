#ifndef __OCARINA_GENERATED_ACTIVITY_H_
#define __OCARINA_GENERATED_ACTIVITY_H_ 
#include <request.h>
/*****************************************************/

/*  This file was automatically generated by Ocarina */

/*  Do NOT hand-modify this file, as your            */

/*  changes will be lost when you re-run Ocarina     */

/*****************************************************/

void producer_deliver 
    (__po_hi_request_t* request);

void* producer_job (void);

void computer_deliver 
    (__po_hi_request_t* request);

void* computer_job (void);

void consumer_deliver 
    (__po_hi_request_t* request);

void* consumer_job (void);

void __po_hi_main_deliver 
    (__po_hi_request_t* request);

#endif
