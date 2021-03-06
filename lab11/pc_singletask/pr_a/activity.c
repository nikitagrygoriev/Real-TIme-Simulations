#include "subprograms.h"
#include <po_hi_task.h>
#include <po_hi_main.h>
/*****************************************************/
/*  This file was automatically generated by Ocarina */
/*  Do NOT hand-modify this file, as your            */
/*  changes will be lost when you re-run Ocarina     */
/*****************************************************/

/*!
 * \fn void* thetask_job (void)
 * \brief Function executed by the task thetask
 *
 * This function is executed as soon as the task  is created. It performs the 
 * following operations:  Receive incoming data,  Execute tasks subprograms,  
 * Send output data.
 */
/*  Periodic task : thetask*/
void* thetask_job (void)
{

  
/*!
 * Waiting for other tasks initialization
 */
  __po_hi_wait_initialization ();
  __po_hi_compute_next_period (pr_a_thetask_k);
  
/*!
 * Waiting for the first dispatch instant
 */
  __po_hi_wait_for_next_period (pr_a_thetask_k);
  
/*!
 * Task body
 */
  while (1)
  {
    /*  Call implementation*/
    tasksync__singletask_spg ();
    __po_hi_wait_for_next_period (pr_a_thetask_k);
  }
}


