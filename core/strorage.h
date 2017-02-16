#ifndef __STORAGE__H
#define __STORAGE__H
uchar write_byte( uchar *p, uchar byte);
uchar write_page( uchar *p, uchar *data);
uchar read_byte( uchar *p, uchar *data);
uchar read_cur( uchar *data);
uchar read_sequ(uchar *p, uchar *data, uint size);
#endif
