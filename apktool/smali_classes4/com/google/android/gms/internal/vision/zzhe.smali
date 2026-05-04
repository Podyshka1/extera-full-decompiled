.class public abstract Lcom/google/android/gms/internal/vision/zzhe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzkn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract zza(Lcom/google/android/gms/internal/vision/zzhf;)Lcom/google/android/gms/internal/vision/zzhe;
.end method

.method public abstract zza([BIILcom/google/android/gms/internal/vision/zzio;)Lcom/google/android/gms/internal/vision/zzhe;
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/vision/zzkk;)Lcom/google/android/gms/internal/vision/zzkn;
    .locals 1

    .line 15
    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/zzkm;->zzr()Lcom/google/android/gms/internal/vision/zzkk;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    check-cast p1, Lcom/google/android/gms/internal/vision/zzhf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzhe;->zza(Lcom/google/android/gms/internal/vision/zzhf;)Lcom/google/android/gms/internal/vision/zzhe;

    move-result-object p1

    return-object p1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
