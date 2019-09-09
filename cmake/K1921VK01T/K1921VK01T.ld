
/* Linker script to configure memory regions. 
 * Need modifying for a specific board. 
 *   FLASH.ORIGIN: starting address of flash
 *   FLASH.LENGTH: length of flash
 *   RAM.ORIGIN: starting address of RAM bank 0
 *   RAM.LENGTH: length of RAM bank 0
 */

MEMORY
{
  FLASH (rx)        : ORIGIN = 0x00000000, LENGTH = 0x100000
  
  RAM_BRD (xrw)     : ORIGIN = 0x20000000, LENGTH = 0x000200    /* Reserved for Board Data */
  RAM_MBS (xrw)     : ORIGIN = 0x20000200, LENGTH = 0x028E00    /* Reserved for MexBIOS */
  RAM (xrw)         : ORIGIN = 0x20029000, LENGTH = 0x007000
}

/* Include linker script to place sections and symbol values */
INCLUDE "sections_flash.ld"




