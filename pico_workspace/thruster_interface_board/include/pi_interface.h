/* Header for RS232 Parser of the thruster interface board.
SOSLAB
Author : Tony Jacob, tony.jacob@uri.edu
*/
#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/uart.h"


class PiInterface{
    public:
    uart_inst_t * uart_id;
    
    PiInterface(uart_inst_t * uart_id, int baud, int tx_pin, int rx_pin){
        stdio_init_all();
        this->uart_id = uart_id;
        uart_init(uart_id, baud);
        
        gpio_set_function(tx_pin, GPIO_FUNC_UART);
        gpio_set_function(rx_pin, GPIO_FUNC_UART);
    }

    void PutString(const char* instruction)
    {
        uart_puts(this->uart_id, instruction);
    }

    char ReadChar(){
        char data;
        if (uart_is_readable(this->uart_id)){
            data =  uart_getc(this->uart_id);
        }
        return data;
    }
};