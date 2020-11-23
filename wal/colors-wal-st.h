const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0b0b1b", /* black   */
  [1] = "#544A5F", /* red     */
  [2] = "#C63547", /* green   */
  [3] = "#F75763", /* yellow  */
  [4] = "#34539B", /* blue    */
  [5] = "#E97984", /* magenta */
  [6] = "#5E97CB", /* cyan    */
  [7] = "#d1c7d5", /* white   */

  /* 8 bright colors */
  [8]  = "#928b95",  /* black   */
  [9]  = "#544A5F",  /* red     */
  [10] = "#C63547", /* green   */
  [11] = "#F75763", /* yellow  */
  [12] = "#34539B", /* blue    */
  [13] = "#E97984", /* magenta */
  [14] = "#5E97CB", /* cyan    */
  [15] = "#d1c7d5", /* white   */

  /* special colors */
  [256] = "#0b0b1b", /* background */
  [257] = "#d1c7d5", /* foreground */
  [258] = "#d1c7d5",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
