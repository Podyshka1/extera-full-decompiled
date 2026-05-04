.class public abstract Lcom/google/android/gms/cast/CastMediaControlIntent;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static categoryForCast(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/zzu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/zzu;-><init>(Lcom/google/android/gms/cast/zzt;)V

    .line 2
    invoke-static {v0, p0}, Lcom/google/android/gms/cast/zzu;->zza(Lcom/google/android/gms/cast/zzu;Ljava/lang/String;)Lcom/google/android/gms/cast/zzu;

    invoke-static {v0}, Lcom/google/android/gms/cast/zzu;->zzd(Lcom/google/android/gms/cast/zzu;)Lcom/google/android/gms/cast/zzw;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/cast/zzw;->zza(Lcom/google/android/gms/cast/zzw;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "applicationId cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static categoryForCast(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Lcom/google/android/gms/cast/zzu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/zzu;-><init>(Lcom/google/android/gms/cast/zzt;)V

    .line 6
    invoke-static {v0, p0}, Lcom/google/android/gms/cast/zzu;->zza(Lcom/google/android/gms/cast/zzu;Ljava/lang/String;)Lcom/google/android/gms/cast/zzu;

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/cast/zzu;->zzc(Lcom/google/android/gms/cast/zzu;Ljava/util/Collection;)Lcom/google/android/gms/cast/zzu;

    invoke-static {v0}, Lcom/google/android/gms/cast/zzu;->zzd(Lcom/google/android/gms/cast/zzu;)Lcom/google/android/gms/cast/zzw;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/cast/zzw;->zza(Lcom/google/android/gms/cast/zzw;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "namespaces cannot be null"

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "applicationId cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
