.class public final Lcom/google/android/gms/cast/framework/CastOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/CastOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/util/List;

.field private zzc:Z

.field private zzd:Lcom/google/android/gms/cast/LaunchOptions;

.field private zze:Z

.field private zzf:Lcom/google/android/gms/internal/cast/zzev;

.field private zzg:Z

.field private zzh:D

.field private zzi:Z

.field private final zzj:Ljava/util/List;

.field private zzk:Z

.field private final zzl:Lcom/google/android/gms/internal/cast/zzev;

.field private final zzm:Lcom/google/android/gms/internal/cast/zzev;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzb:Ljava/util/List;

    .line 2
    new-instance v0, Lcom/google/android/gms/cast/LaunchOptions;

    invoke-direct {v0}, Lcom/google/android/gms/cast/LaunchOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzd:Lcom/google/android/gms/cast/LaunchOptions;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zze:Z

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzev;->zzb()Lcom/google/android/gms/internal/cast/zzev;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzf:Lcom/google/android/gms/internal/cast/zzev;

    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzg:Z

    const-wide v1, 0x3fa99999a0000000L    # 0.05000000074505806

    iput-wide v1, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzh:D

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzi:Z

    new-instance v1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzj:Ljava/util/List;

    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzk:Z

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzev;->zzb()Lcom/google/android/gms/internal/cast/zzev;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzl:Lcom/google/android/gms/internal/cast/zzev;

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzev;->zzb()Lcom/google/android/gms/internal/cast/zzev;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzm:Lcom/google/android/gms/internal/cast/zzev;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/framework/CastOptions;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzf:Lcom/google/android/gms/internal/cast/zzev;

    sget-object v2, Lcom/google/android/gms/cast/framework/CastOptions;->zzc:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zzev;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/cast/framework/CastOptions;->zza:Lcom/google/android/gms/cast/framework/zzj;

    .line 2
    const-string/jumbo v3, "use Optional.orNull() instead of Optional.or(null)"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/zzez;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/google/android/gms/cast/framework/CastOptions;->zzb:Lcom/google/android/gms/cast/framework/zzl;

    .line 3
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/cast/zzez;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v2

    new-instance v2, Lcom/google/android/gms/cast/framework/CastOptions;

    iget-object v3, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zza:Ljava/lang/String;

    move-object/from16 v20, v4

    iget-object v4, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzb:Ljava/util/List;

    iget-boolean v5, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzc:Z

    iget-object v6, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzd:Lcom/google/android/gms/cast/LaunchOptions;

    iget-boolean v7, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zze:Z

    iget-boolean v9, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzg:Z

    iget-wide v10, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzh:D

    iget-boolean v14, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzi:Z

    iget-boolean v8, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzk:Z

    .line 1
    check-cast v1, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    iget-object v15, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzj:Ljava/util/List;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v16, v8

    move-object v8, v1

    .line 4
    invoke-direct/range {v2 .. v20}, Lcom/google/android/gms/cast/framework/CastOptions;-><init>(Ljava/lang/String;Ljava/util/List;ZLcom/google/android/gms/cast/LaunchOptions;ZLcom/google/android/gms/cast/framework/media/CastMediaOptions;ZDZZZLjava/util/List;ZIZLcom/google/android/gms/cast/framework/zzj;Lcom/google/android/gms/cast/framework/zzl;)V

    return-object v2
.end method

.method public setReceiverApplicationId(Ljava/lang/String;)Lcom/google/android/gms/cast/framework/CastOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zza:Ljava/lang/String;

    return-object p0
.end method
