.class public final Lcom/google/android/gms/internal/vision/zzfi$zze;
.super Lcom/google/android/gms/internal/vision/zzjb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzkm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzfi$zze$zza;,
        Lcom/google/android/gms/internal/vision/zzfi$zze$zzb;
    }
.end annotation


# static fields
.field private static final zzl:Lcom/google/android/gms/internal/vision/zzfi$zze;

.field private static volatile zzm:Lcom/google/android/gms/internal/vision/zzkx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzkx;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Z

.field private zzf:I

.field private zzg:J

.field private zzh:J

.field private zzi:J

.field private zzj:Ljava/lang/String;

.field private zzk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/vision/zzfi$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzfi$zze;-><init>()V

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/vision/zzfi$zze;->zzl:Lcom/google/android/gms/internal/vision/zzfi$zze;

    .line 28
    const-class v1, Lcom/google/android/gms/internal/vision/zzfi$zze;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/zzjb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzjb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjb;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zze;->zzd:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zze;->zzj:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/vision/zzfi$zze;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/vision/zzfi$zze;->zzl:Lcom/google/android/gms/internal/vision/zzfi$zze;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/vision/zzfk;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 22
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/vision/zzfi$zze;->zzm:Lcom/google/android/gms/internal/vision/zzkx;

    if-nez p1, :cond_1

    .line 15
    const-class p2, Lcom/google/android/gms/internal/vision/zzfi$zze;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/vision/zzfi$zze;->zzm:Lcom/google/android/gms/internal/vision/zzkx;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/vision/zzjb$zza;

    sget-object p3, Lcom/google/android/gms/internal/vision/zzfi$zze;->zzl:Lcom/google/android/gms/internal/vision/zzfi$zze;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/vision/zzjb$zza;-><init>(Lcom/google/android/gms/internal/vision/zzjb;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/vision/zzfi$zze;->zzm:Lcom/google/android/gms/internal/vision/zzkx;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit p2

    return-object p1

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1

    .line 12
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/vision/zzfi$zze;->zzl:Lcom/google/android/gms/internal/vision/zzfi$zze;

    return-object p1

    .line 9
    :pswitch_4
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzfi$zze$zzb;->zzb()Lcom/google/android/gms/internal/vision/zzjg;

    move-result-object p1

    const/16 p2, 0xa

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "zzc"

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "zzd"

    aput-object v0, p2, p3

    const-string p3, "zze"

    const/4 v0, 0x2

    aput-object p3, p2, v0

    const-string p3, "zzf"

    const/4 v0, 0x3

    aput-object p3, p2, v0

    const/4 p3, 0x4

    aput-object p1, p2, p3

    const-string p1, "zzg"

    const/4 p3, 0x5

    aput-object p1, p2, p3

    const-string p1, "zzh"

    const/4 p3, 0x6

    aput-object p1, p2, p3

    const-string p1, "zzi"

    const/4 p3, 0x7

    aput-object p1, p2, p3

    const-string p1, "zzj"

    const/16 p3, 0x8

    aput-object p1, p2, p3

    const-string p1, "zzk"

    const/16 p3, 0x9

    aput-object p1, p2, p3

    .line 10
    const-string p1, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1007\u0001\u0003\u100c\u0002\u0004\u1002\u0003\u0005\u1002\u0004\u0006\u1002\u0005\u0007\u1008\u0006\u0008\u1007\u0007"

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/vision/zzfi$zze;->zzl:Lcom/google/android/gms/internal/vision/zzfi$zze;

    invoke-static {p3, p1, p2}, Lcom/google/android/gms/internal/vision/zzjb;->zza(Lcom/google/android/gms/internal/vision/zzkk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/vision/zzfi$zze$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/vision/zzfi$zze$zza;-><init>(Lcom/google/android/gms/internal/vision/zzfk;)V

    return-object p1

    .line 6
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/vision/zzfi$zze;

    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/zzfi$zze;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
