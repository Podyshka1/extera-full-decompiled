.class public final Lcom/google/android/gms/cast/Cast$CastOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/Cast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CastOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/Cast$CastOptions$Builder;
    }
.end annotation


# instance fields
.field final zza:Lcom/google/android/gms/cast/CastDevice;

.field final zzb:Lcom/google/android/gms/cast/Cast$Listener;

.field final zzc:Landroid/os/Bundle;

.field final zzd:I

.field final zze:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;Lcom/google/android/gms/cast/zzn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p1, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->zza:Lcom/google/android/gms/cast/CastDevice;

    iput-object p2, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->zza:Lcom/google/android/gms/cast/CastDevice;

    iget-object p2, p1, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->zzb:Lcom/google/android/gms/cast/Cast$Listener;

    iput-object p2, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->zzb:Lcom/google/android/gms/cast/Cast$Listener;

    invoke-static {p1}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->zza(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->zzd:I

    invoke-static {p1}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->zzb(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->zzc:Landroid/os/Bundle;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/Cast$CastOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/Cast$CastOptions;

    iget-object v1, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->zza:Lcom/google/android/gms/cast/CastDevice;

    .line 2
    iget-object v3, p1, Lcom/google/android/gms/cast/Cast$CastOptions;->zza:Lcom/google/android/gms/cast/CastDevice;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->zzc:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/google/android/gms/cast/Cast$CastOptions;->zzc:Landroid/os/Bundle;

    .line 3
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->checkBundlesEquality(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->zzd:I

    iget v3, p1, Lcom/google/android/gms/cast/Cast$CastOptions;->zzd:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->zze:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/cast/Cast$CastOptions;->zze:Ljava/lang/String;

    .line 4
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->zza:Lcom/google/android/gms/cast/CastDevice;

    iget-object v1, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->zzc:Landroid/os/Bundle;

    iget v2, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->zzd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->zze:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
