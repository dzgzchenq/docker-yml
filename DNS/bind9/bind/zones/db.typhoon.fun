$TTL 300 ; 5 minutes
$ORIGIN typhoon.fun.
@ IN SOA ns1.typhoon.fun. hostmaster.typhoon.fun. (
      20190522 ; serial (YYYYMMDDXX)
      3600     ; refresh (3600 = 1h)
      600      ; retry (600 = 10m)
      86400    ; expire (86400 = 1d)
      3600     ; negative cache TTL (3600 = 1h)
      )
;
@     IN  NS ns1.typhoon.fun.
@     IN  NS ns2.typhoon.fun.
;
@     IN  MX 10 mail.typhoon.fun.
;
@     IN   A 106.12.2.90
ns1   IN   A 127.0.0.1
ns2   IN   A 106.12.2.90
mail  IN   A 106.12.2.90
;
www   IN   A 182.61.9.160

