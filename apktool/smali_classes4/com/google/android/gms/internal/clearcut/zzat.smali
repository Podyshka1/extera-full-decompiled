.class public abstract Lcom/google/android/gms/internal/clearcut/zzat;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/zzdp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract zza(Lcom/google/android/gms/internal/clearcut/zzas;)Lcom/google/android/gms/internal/clearcut/zzat;
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/clearcut/zzdo;)Lcom/google/android/gms/internal/clearcut/zzdp;
    .locals 1

    .line 0
    invoke-interface {p0}, Lcom/google/android/gms/internal/clearcut/zzdq;->zzbe()Lcom/google/android/gms/internal/clearcut/zzdo;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzas;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzat;->zza(Lcom/google/android/gms/internal/clearcut/zzas;)Lcom/google/android/gms/internal/clearcut/zzat;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
