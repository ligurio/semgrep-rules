@@ identifier p; statement S; @@
  p = mmap(...);
- if (!p) S
+ if (p != MAP_FAILED) S
