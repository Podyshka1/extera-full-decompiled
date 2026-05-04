.class final Lcom/google/android/gms/internal/cast/zzga;
.super Lcom/google/android/gms/internal/cast/zzfu;
.source "SourceFile"


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/cast/zzft;

.field private final transient zzb:Lcom/google/android/gms/internal/cast/zzfq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzft;Lcom/google/android/gms/internal/cast/zzfq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzfu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzga;->zza:Lcom/google/android/gms/internal/cast/zzft;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzga;->zzb:Lcom/google/android/gms/internal/cast/zzfq;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzga;->zza:Lcom/google/android/gms/internal/cast/zzft;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzft;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzga;->zzb:Lcom/google/android/gms/internal/cast/zzfq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzfq;->zzl(I)Lcom/google/android/gms/internal/cast/zzgh;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzga;->zza:Lcom/google/android/gms/internal/cast/zzft;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzga;->zzb:Lcom/google/android/gms/internal/cast/zzfq;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/cast/zzfm;->zza([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final zzd()Lcom/google/android/gms/internal/cast/zzfq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzga;->zzb:Lcom/google/android/gms/internal/cast/zzfq;

    return-object v0
.end method
