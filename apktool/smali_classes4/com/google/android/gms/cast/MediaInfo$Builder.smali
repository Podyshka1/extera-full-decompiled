.class public Lcom/google/android/gms/cast/MediaInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:I

.field private zzc:Ljava/lang/String;

.field private zzd:Lcom/google/android/gms/cast/MediaMetadata;

.field private zze:J

.field private zzf:Ljava/util/List;

.field private zzg:Lcom/google/android/gms/cast/TextTrackStyle;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/util/List;

.field private zzj:Ljava/util/List;

.field private zzk:Ljava/lang/String;

.field private zzl:Lcom/google/android/gms/cast/VastAdsRequest;

.field private zzm:Ljava/lang/String;

.field private zzn:Ljava/lang/String;

.field private zzo:Ljava/lang/String;

.field private zzp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzb:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zze:J

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/MediaInfo;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/google/android/gms/cast/MediaInfo;

    iget-object v2, v0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zza:Ljava/lang/String;

    iget v3, v0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzb:I

    iget-object v4, v0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzc:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzd:Lcom/google/android/gms/cast/MediaMetadata;

    iget-wide v6, v0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zze:J

    iget-object v8, v0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzf:Ljava/util/List;

    iget-object v9, v0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzg:Lcom/google/android/gms/cast/TextTrackStyle;

    iget-object v10, v0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzh:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzi:Ljava/util/List;

    iget-object v12, v0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzj:Ljava/util/List;

    iget-object v13, v0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzk:Ljava/lang/String;

    iget-object v14, v0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzl:Lcom/google/android/gms/cast/VastAdsRequest;

    iget-object v15, v0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzm:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzn:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzo:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzp:Ljava/lang/String;

    move-object/from16 v20, v1

    move-object/from16 v17, v15

    move-object/from16 v1, v16

    const-wide/16 v15, -0x1

    invoke-direct/range {v1 .. v20}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/cast/MediaMetadata;JLjava/util/List;Lcom/google/android/gms/cast/TextTrackStyle;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/cast/VastAdsRequest;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public setContentType(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public setMetadata(Lcom/google/android/gms/cast/MediaMetadata;)Lcom/google/android/gms/cast/MediaInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzd:Lcom/google/android/gms/cast/MediaMetadata;

    return-object p0
.end method

.method public setStreamType(I)Lcom/google/android/gms/cast/MediaInfo$Builder;
    .locals 1

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 1
    iput p1, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzb:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid stream type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
