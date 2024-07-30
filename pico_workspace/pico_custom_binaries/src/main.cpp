#include "pico/stdlib.h"
#include "pico/stdio.h"
#include "hardware/pwm.h"

int main() {
    stdio_init_all();

    // todo: is it needed?
    while(true) {
        sleep_ms(100);
    }

    return 0;
}