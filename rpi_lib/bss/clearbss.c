void clearBss(void){
	extern void *_bss_start;
	extern void *_bss_end;

	unsigned int *p;
	unsigned int *start = (unsigned int *)&_bss_start;
	unsigned int *end = (unsigned int *)&_bss_end;

	for(p = start;p < end; p++){
		*p = 0x00;
	}
}
