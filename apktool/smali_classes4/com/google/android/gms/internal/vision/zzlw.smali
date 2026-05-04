.class final Lcom/google/android/gms/internal/vision/zzlw;
.super Lcom/google/android/gms/internal/vision/zzlu;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzlu;-><init>()V

    return-void
.end method

.method private static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzlx;)V
    .locals 0

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/vision/zzjb;

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzjb;->zzb:Lcom/google/android/gms/internal/vision/zzlx;

    return-void
.end method


# virtual methods
.method final synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzlx;->zzb()Lcom/google/android/gms/internal/vision/zzlx;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zza(Ljava/lang/Object;IJ)V
    .locals 0

    .line 64
    check-cast p1, Lcom/google/android/gms/internal/vision/zzlx;

    shl-int/lit8 p2, p2, 0x3

    .line 66
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzlx;->zza(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/zzht;)V
    .locals 0

    .line 52
    check-cast p1, Lcom/google/android/gms/internal/vision/zzlx;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    .line 54
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzlx;->zza(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/google/android/gms/internal/vision/zzlx;

    .line 24
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/zzlx;->zzb(Lcom/google/android/gms/internal/vision/zzmr;)V

    return-void
.end method

.method final bridge synthetic zza(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Lcom/google/android/gms/internal/vision/zzlx;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzlw;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzlx;)V

    return-void
.end method

.method final synthetic zzb(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjb;

    iget-object p1, p1, Lcom/google/android/gms/internal/vision/zzjb;->zzb:Lcom/google/android/gms/internal/vision/zzlx;

    return-object p1
.end method

.method final synthetic zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/google/android/gms/internal/vision/zzlx;

    .line 21
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/zzlx;->zza(Lcom/google/android/gms/internal/vision/zzmr;)V

    return-void
.end method

.method final synthetic zzb(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/google/android/gms/internal/vision/zzlx;

    .line 27
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzlw;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzlx;)V

    return-void
.end method

.method final synthetic zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 15
    check-cast p1, Lcom/google/android/gms/internal/vision/zzlx;

    check-cast p2, Lcom/google/android/gms/internal/vision/zzlx;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzlx;->zza()Lcom/google/android/gms/internal/vision/zzlx;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/vision/zzlx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 18
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzlx;->zza(Lcom/google/android/gms/internal/vision/zzlx;Lcom/google/android/gms/internal/vision/zzlx;)Lcom/google/android/gms/internal/vision/zzlx;

    move-result-object p1

    return-object p1
.end method

.method final zzd(Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjb;

    iget-object p1, p1, Lcom/google/android/gms/internal/vision/zzjb;->zzb:Lcom/google/android/gms/internal/vision/zzlx;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzlx;->zzc()V

    return-void
.end method

.method final synthetic zze(Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/vision/zzlx;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzlx;->zzd()I

    move-result p1

    return p1
.end method

.method final synthetic zzf(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/vision/zzlx;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzlx;->zze()I

    move-result p1

    return p1
.end method
