.class public Lcom/google/android/gms/cast/MediaSeekOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaSeekOptions$Builder;
    }
.end annotation


# instance fields
.field private final zza:J

.field private final zzb:I

.field private final zzc:Z

.field private final zzd:Lorg/json/JSONObject;


# direct methods
.method synthetic constructor <init>(JIZLorg/json/JSONObject;Lcom/google/android/gms/cast/zzcl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zza:J

    iput p3, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzb:I

    iput-boolean p4, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzc:Z

    iput-object p5, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzd:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaSeekOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaSeekOptions;

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zza:J

    .line 2
    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaSeekOptions;->zza:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzb:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaSeekOptions;->zzb:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzc:Z

    iget-boolean v3, p1, Lcom/google/android/gms/cast/MediaSeekOptions;->zzc:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzd:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/google/android/gms/cast/MediaSeekOptions;->zzd:Lorg/json/JSONObject;

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzd:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zza:J

    return-wide v0
.end method

.method public getResumeState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzb:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zza:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzc:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzd:Lorg/json/JSONObject;

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

.method public isSeekToInfinite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzc:Z

    return v0
.end method
