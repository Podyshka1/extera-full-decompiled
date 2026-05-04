.class public final Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/media/CastMediaOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

.field private zze:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.google.android.gms.cast.framework.media.MediaIntentReceiver"

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->zza:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->build()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->zzd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->zze:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->zzd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->zze:Z

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Lcom/google/android/gms/cast/framework/media/NotificationOptions;ZZ)V

    return-object v0
.end method

.method public setMediaSessionEnabled(Z)Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->zze:Z

    return-object p0
.end method

.method public setNotificationOptions(Lcom/google/android/gms/cast/framework/media/NotificationOptions;)Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->zzd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    return-object p0
.end method
