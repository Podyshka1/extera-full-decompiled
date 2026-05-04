.class final Lcom/google/android/gms/cast/framework/zzr;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/cast/framework/CastSession;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/zzr;->zza:Lcom/google/android/gms/cast/framework/CastSession;

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;JIJJ)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzr;->zza:Lcom/google/android/gms/cast/framework/CastSession;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/CastSession;->zzb(Lcom/google/android/gms/cast/framework/CastSession;)Lcom/google/android/gms/cast/framework/zzs;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/CastSession;->zzb(Lcom/google/android/gms/cast/framework/CastSession;)Lcom/google/android/gms/cast/framework/zzs;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-interface/range {v2 .. v10}, Lcom/google/android/gms/cast/framework/zzs;->zzb(Ljava/lang/String;JIJJ)V

    :cond_0
    return-void
.end method
