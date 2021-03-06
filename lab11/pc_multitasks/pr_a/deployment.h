#ifndef __OCARINA_GENERATED_DEPLOYMENT_H_
#define __OCARINA_GENERATED_DEPLOYMENT_H_ 
#include <po_hi_types.h>
/*****************************************************/

/*  This file was automatically generated by Ocarina */

/*  Do NOT hand-modify this file, as your            */

/*  changes will be lost when you re-run Ocarina     */

/*****************************************************/

#define __PO_HI_MY_NODE pr_a_k

#define __po_hi_producer_nb_ports 1

#define __po_hi_computer_nb_ports 2

#define __po_hi_consumer_nb_ports 1

/*  For each node in the distributed application add an enumerator*/

typedef enum
{
  pr_a_k = 0
} __po_hi_node_t;

typedef enum
{
  invalid_protocol = -1
} __po_hi_protocol_t;

/*  For each thread in the distributed application nodes, add an enumerator*/

typedef enum
{
  pr_a_producer_k_entity = 0,
  pr_a_computer_k_entity = 1,
  pr_a_consumer_k_entity = 2,
  invalid_entity = -1
} __po_hi_entity_t;

typedef enum
{
  pr_a_producer_k = 0,
  pr_a_computer_k = 1,
  pr_a_consumer_k = 2,
  invalid_task_id = -1
} __po_hi_task_id;

typedef enum
{
  invalid_device_id = -1
} __po_hi_device_id;

typedef enum
{
  invalid_bus_id = -1
} __po_hi_bus_id;

#define __PO_HI_NB_TASKS 3

#define __PO_HI_TASKS_STACK 0

#define __PO_HI_NB_PROTECTED 0

#define __PO_HI_NB_NODES 1

#define __PO_HI_NB_ENTITIES 3

#define __PO_HI_NB_PORTS 4

typedef enum
{
  producer_global_data_source = 0,
  computer_global_data_sink = 1,
  computer_global_data_source = 2,
  consumer_global_data_sink = 3,
  invalid_port_t = -1,
  constant_out_identifier = 5
} __po_hi_port_t;

typedef enum
{
  producer_local_data_source = 0,
  computer_local_data_sink = 0,
  computer_local_data_source = 1,
  consumer_local_data_sink = 0,
  invalid_local_port_t = -1
} __po_hi_local_port_t;

#define __PO_HI_NB_DEVICES 0

#define __PO_HI_NB_BUSES 0

#define __PO_HI_NB_PROTOCOLS 0

#define __PO_HI_PORT_TYPE_CONTENT __po_hi_producer_nb_ports, __po_hi_computer_nb_ports, __po_hi_consumer_nb_ports

#endif
