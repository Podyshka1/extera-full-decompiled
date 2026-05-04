.class public final Lcom/google/android/gms/cast/framework/media/internal/zzf;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private final zzb:Lcom/google/android/gms/cast/framework/media/internal/zzi;

.field private final zzc:Lcom/google/android/gms/cast/framework/media/internal/zzb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "FetchBitmapTask"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzf;->zza:Lcom/google/android/gms/cast/internal/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZJIIILcom/google/android/gms/cast/framework/media/internal/zzb;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    move-object/from16 p4, p10

    iput-object p4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzf;->zzc:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/cast/framework/media/internal/zze;

    const/4 p1, 0x0

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/cast/framework/media/internal/zze;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzf;Lcom/google/android/gms/cast/framework/media/internal/zzd;)V

    const/16 v9, 0x14d

    const/16 v10, 0x2710

    const/4 v5, 0x0

    const-wide/32 v6, 0x200000

    const/4 v8, 0x5

    move-object v1, p0

    move v3, p2

    move v4, p3

    .line 3
    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/cast/zzag;->zze(Landroid/content/Context;Landroid/os/AsyncTask;Lcom/google/android/gms/cast/framework/media/internal/zzk;IIZJIII)Lcom/google/android/gms/cast/framework/media/internal/zzi;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzf;->zzb:Lcom/google/android/gms/cast/framework/media/internal/zzi;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/internal/zzf;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, [Landroid/net/Uri;

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzf;->zzb:Lcom/google/android/gms/cast/framework/media/internal/zzi;

    if-nez v3, :cond_1

    return-object v1

    .line 3
    :cond_1
    :try_start_0
    invoke-interface {v3, p1}, Lcom/google/android/gms/cast/framework/media/internal/zzi;->zze(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget-object v3, Lcom/google/android/gms/cast/framework/media/internal/zzf;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-class v4, Lcom/google/android/gms/cast/framework/media/internal/zzi;

    .line 4
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "doFetch"

    aput-object v6, v5, v0

    aput-object v4, v5, v2

    const-string v0, "Unable to call %s on %s."

    .line 5
    invoke-virtual {v3, p1, v0, v5}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-object v1
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzf;->zzc:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zzb(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
