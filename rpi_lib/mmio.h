/* mmio.h - access to MMIO registers */
 
#ifndef MMIO_H
#define MMIO_H
 
#include <stdint.h>
#include <rpi_type.h>
 
// write to MMIO register
//static inline void mmio_write(uint32_t reg, uint32_t data) {
//    uint32_t *ptr = (uint32_t*)reg;
static inline void mmio_write(vu32_t reg, uint32_t data) {
    vu32_t *ptr = (vu32_t*)reg;
    asm volatile("str %[data], [%[reg]]"
	     : : [reg]"r"(ptr), [data]"r"(data));
}
 
// read from MMIO register
//static inline uint32_t mmio_read(uint32_t reg) {
//    uint32_t *ptr = (uint32_t*)reg;
static inline uint32_t mmio_read(vu32_t reg) {
    vu32_t *ptr = (vu32_t*)reg;
    uint32_t data;
    asm volatile("ldr %[data], [%[reg]]"
		 : [data]"=r"(data) : [reg]"r"(ptr));
    return data;
}
 
#endif // #ifndef MMIO_H
