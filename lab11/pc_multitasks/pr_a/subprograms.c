#include "subprograms.h"
#include <types.h>
/*****************************************************/
/*  This file was automatically generated by Ocarina */
/*  Do NOT hand-modify this file, as your            */
/*  changes will be lost when you re-run Ocarina     */
/*****************************************************/
void user_produceflow_spg 
    (tasksync__alpha_type* data_source);
void tasksync__produceflow_spg 
    (tasksync__alpha_type* data_source)
{

  user_produceflow_spg (data_source);
}

void user_computeflow_spg 
    (tasksync__alpha_type* data_source,
    tasksync__alpha_type data_sink);
void tasksync__computerflow_spg 
    (tasksync__alpha_type* data_source,
    tasksync__alpha_type data_sink)
{

  user_computeflow_spg (data_source, data_sink);
}

void user_consumeflow_spg 
    (tasksync__alpha_type data_sink);
void tasksync__consumeflow_spg 
    (tasksync__alpha_type data_sink)
{

  user_consumeflow_spg (data_sink);
}


