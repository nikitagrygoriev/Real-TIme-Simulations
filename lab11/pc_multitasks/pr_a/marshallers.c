#include <types.h>
#include <po_hi_types.h>
#include <po_hi_marshallers.h>
/*****************************************************/
/*  This file was automatically generated by Ocarina */
/*  Do NOT hand-modify this file, as your            */
/*  changes will be lost when you re-run Ocarina     */
/*****************************************************/
void __po_hi_marshall_type_alpha_type 
    (tasksync__alpha_type value,
    __po_hi_msg_t* message,
    __po_hi_uint32_t* offset)
{

  __po_hi_marshall_int (value, message, offset);
}

void __po_hi_unmarshall_type_alpha_type 
    (tasksync__alpha_type* value,
    __po_hi_msg_t* message,
    __po_hi_uint32_t* offset)
{

  __po_hi_unmarshall_int (value, message, offset);
}

void __po_hi_marshall_request_producer_data_source 
    (__po_hi_request_t* request,
    __po_hi_msg_t* message,
    __po_hi_uint32_t* offset)
{

  __po_hi_marshall_type_alpha_type (request->vars.producer_global_data_source.producer_global_data_source, message, offset);
}

void __po_hi_unmarshall_request_producer_data_source 
    (__po_hi_request_t* request,
    __po_hi_msg_t* message,
    __po_hi_uint32_t* offset)
{

  __po_hi_unmarshall_type_alpha_type (&(request->vars.producer_global_data_source.producer_global_data_source), message, offset);
}

void __po_hi_marshall_request_computer_data_sink 
    (__po_hi_request_t* request,
    __po_hi_msg_t* message,
    __po_hi_uint32_t* offset)
{

  __po_hi_marshall_type_alpha_type (request->vars.computer_global_data_sink.computer_global_data_sink, message, offset);
}

void __po_hi_unmarshall_request_computer_data_sink 
    (__po_hi_request_t* request,
    __po_hi_msg_t* message,
    __po_hi_uint32_t* offset)
{

  __po_hi_unmarshall_type_alpha_type (&(request->vars.computer_global_data_sink.computer_global_data_sink), message, offset);
}

void __po_hi_marshall_request_computer_data_source 
    (__po_hi_request_t* request,
    __po_hi_msg_t* message,
    __po_hi_uint32_t* offset)
{

  __po_hi_marshall_type_alpha_type (request->vars.computer_global_data_source.computer_global_data_source, message, offset);
}

void __po_hi_unmarshall_request_computer_data_source 
    (__po_hi_request_t* request,
    __po_hi_msg_t* message,
    __po_hi_uint32_t* offset)
{

  __po_hi_unmarshall_type_alpha_type (&(request->vars.computer_global_data_source.computer_global_data_source), message, offset);
}

void __po_hi_marshall_request_consumer_data_sink 
    (__po_hi_request_t* request,
    __po_hi_msg_t* message,
    __po_hi_uint32_t* offset)
{

  __po_hi_marshall_type_alpha_type (request->vars.consumer_global_data_sink.consumer_global_data_sink, message, offset);
}

void __po_hi_unmarshall_request_consumer_data_sink 
    (__po_hi_request_t* request,
    __po_hi_msg_t* message,
    __po_hi_uint32_t* offset)
{

  __po_hi_unmarshall_type_alpha_type (&(request->vars.consumer_global_data_sink.consumer_global_data_sink), message, offset);
}

void __po_hi_marshall_request 
    (__po_hi_request_t* request,
    __po_hi_msg_t* message)
{
  __po_hi_uint32_t offset;

  offset = 0;
  __po_hi_marshall_port (request->port, message);
  switch (request->port)
  {
    case producer_global_data_source:
    {
      __po_hi_marshall_request_producer_data_source (request, message, &(offset));

      break;
    }
    case computer_global_data_sink:
    {
      __po_hi_marshall_request_computer_data_sink (request, message, &(offset));

      break;
    }
    case computer_global_data_source:
    {
      __po_hi_marshall_request_computer_data_source (request, message, &(offset));

      break;
    }
    case consumer_global_data_sink:
    {
      __po_hi_marshall_request_consumer_data_sink (request, message, &(offset));

      break;
    }
    default:
    {
      break;
    }
  }
}

void __po_hi_unmarshall_request 
    (__po_hi_request_t* request,
    __po_hi_msg_t* message)
{
  __po_hi_uint32_t offset;

  offset = 0;
  __po_hi_unmarshall_port (&(request->port), message);
  switch (request->port)
  {
    case producer_global_data_source:
    {
      __po_hi_unmarshall_request_producer_data_source (request, message, &(offset));

      break;
    }
    case computer_global_data_sink:
    {
      __po_hi_unmarshall_request_computer_data_sink (request, message, &(offset));

      break;
    }
    case computer_global_data_source:
    {
      __po_hi_unmarshall_request_computer_data_source (request, message, &(offset));

      break;
    }
    case consumer_global_data_sink:
    {
      __po_hi_unmarshall_request_consumer_data_sink (request, message, &(offset));

      break;
    }
    default:
    {
      break;
    }
  }
}


