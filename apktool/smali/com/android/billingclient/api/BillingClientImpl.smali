.class Lcom/android/billingclient/api/BillingClientImpl;
.super Lcom/android/billingclient/api/BillingClient;
.source "SourceFile"


# instance fields
.field private zzA:Z

.field private zzB:Lcom/android/billingclient/api/PendingPurchasesParams;

.field private zzC:Z

.field private zzD:Ljava/util/concurrent/ExecutorService;

.field private volatile zzE:Lcom/google/android/gms/internal/play_billing/zzev;

.field private final zzF:Ljava/lang/Long;

.field private final zza:Ljava/lang/Object;

.field private volatile zzb:I

.field private final zzc:Ljava/lang/String;

.field private final zzd:Landroid/os/Handler;

.field private volatile zze:Lcom/android/billingclient/api/zzn;

.field private zzf:Landroid/content/Context;

.field private zzg:Lcom/android/billingclient/api/zzch;

.field private volatile zzh:Lcom/google/android/gms/internal/play_billing/zzan;

.field private volatile zzi:Lcom/android/billingclient/api/zzba;

.field private zzj:Z

.field private zzk:Z

.field private zzl:I

.field private zzm:Z

.field private zzn:Z

.field private zzo:Z

.field private zzp:Z

.field private zzq:Z

.field private zzr:Z

.field private zzs:Z

.field private zzt:Z

.field private zzu:Z

.field private zzv:Z

.field private zzw:Z

.field private zzx:Z

.field private zzy:Z

.field private zzz:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/billingclient/api/zzch;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Landroid/os/Handler;

    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzl:I

    new-instance p1, Ljava/util/Random;

    .line 9
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzF:Ljava/lang/Long;

    .line 10
    invoke-static {}, Lcom/android/billingclient/api/BillingClientImpl;->zzaC()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    .line 11
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzku;->zzc()Lcom/google/android/gms/internal/play_billing/zzks;

    move-result-object p2

    .line 13
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/zzks;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzks;

    iget-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 14
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/zzks;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzks;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzks;->zzm(J)Lcom/google/android/gms/internal/play_billing/zzks;

    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 16
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzku;

    .line 17
    new-instance p3, Lcom/android/billingclient/api/zzcl;

    invoke-direct {p3, p1, p2}, Lcom/android/billingclient/api/zzcl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzku;)V

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Lcom/android/billingclient/api/zzch;

    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzb;Lcom/android/billingclient/api/zzch;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 32
    invoke-static {}, Lcom/android/billingclient/api/BillingClientImpl;->zzaC()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    new-instance p5, Landroid/os/Handler;

    .line 33
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p7

    invoke-direct {p5, p7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Landroid/os/Handler;

    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzl:I

    new-instance p1, Ljava/util/Random;

    .line 34
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzF:Ljava/lang/Long;

    iput-object p6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    const/4 p7, 0x0

    const/4 p5, 0x0

    move-object p1, p4

    move-object p4, p2

    move-object p2, p3

    move-object p3, p1

    move-object p1, p0

    .line 35
    invoke-direct/range {p1 .. p7}, Lcom/android/billingclient/api/BillingClientImpl;->initialize(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/PendingPurchasesParams;Lcom/android/billingclient/api/zzb;Ljava/lang/String;Lcom/android/billingclient/api/zzch;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/zzco;Lcom/android/billingclient/api/zzch;Ljava/util/concurrent/ExecutorService;)V
    .locals 7

    .line 19
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    invoke-direct {p4, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Landroid/os/Handler;

    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzl:I

    new-instance p1, Ljava/util/Random;

    .line 20
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzF:Ljava/lang/Long;

    .line 21
    invoke-static {}, Lcom/android/billingclient/api/BillingClientImpl;->zzaC()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    .line 22
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzku;->zzc()Lcom/google/android/gms/internal/play_billing/zzks;

    move-result-object p3

    .line 24
    invoke-static {}, Lcom/android/billingclient/api/BillingClientImpl;->zzaC()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/play_billing/zzks;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzks;

    iget-object p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 25
    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/play_billing/zzks;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzks;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/google/android/gms/internal/play_billing/zzks;->zzm(J)Lcom/google/android/gms/internal/play_billing/zzks;

    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 27
    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/play_billing/zzku;

    .line 28
    new-instance p4, Lcom/android/billingclient/api/zzcl;

    invoke-direct {p4, p1, p3}, Lcom/android/billingclient/api/zzcl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzku;)V

    iput-object p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Lcom/android/billingclient/api/zzch;

    const-string p1, "BillingClient"

    const-string p3, "Billing client should have a valid listener but the provided is null."

    .line 29
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/billingclient/api/zzn;

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Lcom/android/billingclient/api/zzch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 30
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/zzn;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzco;Lcom/android/billingclient/api/zzb;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/zzch;)V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zze:Lcom/android/billingclient/api/zzn;

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzB:Lcom/android/billingclient/api/PendingPurchasesParams;

    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method private initialize(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/PendingPurchasesParams;Lcom/android/billingclient/api/zzb;Ljava/lang/String;Lcom/android/billingclient/api/zzch;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzku;->zzc()Lcom/google/android/gms/internal/play_billing/zzks;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zzks;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzks;

    iget-object p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 4
    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zzks;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzks;

    iget-object p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzF:Ljava/lang/Long;

    .line 5
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzks;->zzm(J)Lcom/google/android/gms/internal/play_billing/zzks;

    if-eqz p6, :cond_0

    iput-object p6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Lcom/android/billingclient/api/zzch;

    goto :goto_0

    .line 10
    :cond_0
    iget-object p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzku;

    .line 7
    new-instance p6, Lcom/android/billingclient/api/zzcl;

    invoke-direct {p6, p5, p1}, Lcom/android/billingclient/api/zzcl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzku;)V

    iput-object p6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Lcom/android/billingclient/api/zzch;

    :goto_0
    if-nez p2, :cond_1

    .line 5
    const-string p1, "BillingClient"

    const-string p5, "Billing client should have a valid listener but the provided is null."

    .line 8
    invoke-static {p1, p5}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/android/billingclient/api/zzn;

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Lcom/android/billingclient/api/zzch;

    const/4 v3, 0x0

    move-object v2, p2

    move-object v4, p4

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/zzn;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzco;Lcom/android/billingclient/api/zzb;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/zzch;)V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zze:Lcom/android/billingclient/api/zzn;

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzB:Lcom/android/billingclient/api/PendingPurchasesParams;

    if-eqz v4, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzC:Z

    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method static synthetic zzD(Lcom/android/billingclient/api/BillingClientImpl;Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;
    .locals 1

    move-object p3, p0

    move-object p0, p1

    const-wide/16 p1, 0x7530

    .line 1
    invoke-direct {p3}, Lcom/android/billingclient/api/BillingClientImpl;->zzaD()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    move-object v0, p5

    move-object p5, p3

    move-object p3, p4

    move-object p4, v0

    .line 2
    invoke-static/range {p0 .. p5}, Lcom/android/billingclient/api/BillingClientImpl;->zzE(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method static zzE(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p5, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double p1, p1

    new-instance p5, Lcom/android/billingclient/api/zzaf;

    invoke-direct {p5, p0, p3}, Lcom/android/billingclient/api/zzaf;-><init>(Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    const-wide v0, 0x3fee666666666666L    # 0.95

    mul-double/2addr p1, v0

    double-to-long p1, p1

    .line 3
    invoke-virtual {p4, p5, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "BillingClient"

    const-string p2, "Async task throws exception!"

    .line 2
    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic zzF(Lcom/android/billingclient/api/BillingClientImpl;I)V
    .locals 0

    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzl:I

    return-void
.end method

.method static bridge synthetic zzG(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzp:Z

    return-void
.end method

.method static bridge synthetic zzH(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzq:Z

    return-void
.end method

.method static bridge synthetic zzI(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzr:Z

    return-void
.end method

.method static bridge synthetic zzJ(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzs:Z

    return-void
.end method

.method static bridge synthetic zzK(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzt:Z

    return-void
.end method

.method static bridge synthetic zzL(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzu:Z

    return-void
.end method

.method static bridge synthetic zzM(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzv:Z

    return-void
.end method

.method static bridge synthetic zzN(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzw:Z

    return-void
.end method

.method static bridge synthetic zzO(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzx:Z

    return-void
.end method

.method static bridge synthetic zzP(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzy:Z

    return-void
.end method

.method static bridge synthetic zzQ(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzz:Z

    return-void
.end method

.method static bridge synthetic zzR(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzA:Z

    return-void
.end method

.method static bridge synthetic zzS(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:Z

    return-void
.end method

.method static bridge synthetic zzT(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzn:Z

    return-void
.end method

.method static bridge synthetic zzU(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzo:Z

    return-void
.end method

.method static bridge synthetic zzV(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzan;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/google/android/gms/internal/play_billing/zzan;

    return-void
.end method

.method static bridge synthetic zzW(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzk:Z

    return-void
.end method

.method static bridge synthetic zzX(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzj:Z

    return-void
.end method

.method static bridge synthetic zzZ(Lcom/android/billingclient/api/BillingClientImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzaJ(I)V

    return-void
.end method

.method static bridge synthetic zza(Lcom/android/billingclient/api/BillingClientImpl;)I
    .locals 0

    iget p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    return p0
.end method

.method private final zzaA()Lcom/android/billingclient/api/BillingResult;
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v2

    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    :try_start_0
    aget v3, v0, v1

    .line 1
    iget v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    if-ne v4, v3, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    sget-object v0, Lcom/android/billingclient/api/zzcj;->zzm:Lcom/android/billingclient/api/BillingResult;

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    sget-object v0, Lcom/android/billingclient/api/zzcj;->zzk:Lcom/android/billingclient/api/BillingResult;

    return-object v0

    .line 4
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private final zzaB(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;
    .locals 1

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static zzaC()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "com.android.billingclient.ktx.BuildConfig"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "VERSION_NAME"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "7.1.1"

    return-object v0
.end method

.method private final declared-synchronized zzaD()Ljava/util/concurrent/ExecutorService;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzD:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/play_billing/zze;->zza:I

    new-instance v1, Lcom/android/billingclient/api/zzas;

    invoke-direct {v1, p0}, Lcom/android/billingclient/api/zzas;-><init>(Lcom/android/billingclient/api/BillingClientImpl;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzD:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzD:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final zzaE(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string p1, "BillingClient"

    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Consuming purchase with token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 4
    :try_start_2
    sget-object v4, Lcom/android/billingclient/api/zzcj;->zzm:Lcom/android/billingclient/api/BillingResult;

    const-string v6, "Service has been reset to null."
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v7, 0x0

    const/16 v5, 0x77

    move-object v1, p0

    move-object v2, p2

    :try_start_3
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzaW(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    move-object v7, p1

    goto/16 :goto_6

    :catch_1
    move-exception v0

    :goto_1
    move-object p1, v0

    move-object v7, p1

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move-object v1, p0

    :goto_2
    move-object v2, p2

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v1, p0

    :goto_3
    move-object v2, p2

    goto :goto_1

    :cond_0
    move-object v1, p0

    move-object v2, p2

    iget-boolean p1, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzo:Z

    if-eqz p1, :cond_2

    iget-object p1, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzo:Z

    iget-object v4, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzF:Ljava/lang/Long;

    .line 6
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    new-instance v7, Landroid/os/Bundle;

    .line 7
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_1

    .line 8
    invoke-static {v7, v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zze;->zzc(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    :cond_1
    const/16 p2, 0x9

    .line 9
    invoke-interface {v0, p2, p1, v3, v7}, Lcom/google/android/gms/internal/play_billing/zzan;->zze(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "RESPONSE_CODE"

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "BillingClient"

    .line 11
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzh(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 15
    :cond_2
    iget-object p1, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    .line 13
    invoke-interface {v0, p2, p1, v3}, Lcom/google/android/gms/internal/play_billing/zzan;->zza(ILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const-string p1, ""

    .line 14
    :goto_4
    invoke-static {p2, p1}, Lcom/android/billingclient/api/zzcj;->zza(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v4

    if-nez p2, :cond_3

    const-string p1, "BillingClient"

    const-string p2, "Successfully consumed purchase."

    .line 16
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-interface {v2, v4, v3}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error consuming purchase with token. Response code: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v5, 0x17

    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzaW(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catchall_0
    move-exception v0

    move-object v2, p2

    :goto_5
    move-object p2, v0

    .line 3
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p2
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_3

    .line 19
    :goto_6
    const-string v6, "Error consuming purchase!"

    .line 18
    sget-object v4, Lcom/android/billingclient/api/zzcj;->zzk:Lcom/android/billingclient/api/BillingResult;

    const/16 v5, 0x1d

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzaW(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 13
    :goto_7
    const-string v6, "Error consuming purchase!"

    .line 19
    sget-object v4, Lcom/android/billingclient/api/zzcj;->zzm:Lcom/android/billingclient/api/BillingResult;

    const/16 v5, 0x1d

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzaW(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private final zzaF(Lcom/google/android/gms/internal/play_billing/zzjz;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Lcom/android/billingclient/api/zzch;

    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzl:I

    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/zzch;->zzb(Lcom/google/android/gms/internal/play_billing/zzjz;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "BillingClient"

    const-string v1, "Unable to log."

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzaG(Lcom/google/android/gms/internal/play_billing/zzkd;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Lcom/android/billingclient/api/zzch;

    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzl:I

    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/zzch;->zzd(Lcom/google/android/gms/internal/play_billing/zzkd;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "BillingClient"

    const-string v1, "Unable to log."

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzaI(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v0

    const/16 v1, 0x9

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/billingclient/api/zzcj;->zzm:Lcom/android/billingclient/api/BillingResult;

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzco;->zzl()Lcom/google/android/gms/internal/play_billing/zzco;

    move-result-object v0

    .line 4
    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Please provide a valid product type."

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object p1, Lcom/android/billingclient/api/zzcj;->zzh:Lcom/android/billingclient/api/BillingResult;

    const/16 v0, 0x32

    invoke-direct {p0, v0, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzco;->zzl()Lcom/google/android/gms/internal/play_billing/zzco;

    move-result-object v0

    .line 9
    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_1
    new-instance v2, Lcom/android/billingclient/api/zzat;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/billingclient/api/zzat;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    new-instance v5, Lcom/android/billingclient/api/zzac;

    invoke-direct {v5, p0, p2}, Lcom/android/billingclient/api/zzac;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 10
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzax()Landroid/os/Handler;

    move-result-object v6

    .line 11
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaD()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    const-wide/16 v3, 0x7530

    .line 12
    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzE(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_2

    .line 13
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaA()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    const/16 v0, 0x19

    .line 14
    invoke-direct {p0, v0, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzco;->zzl()Lcom/google/android/gms/internal/play_billing/zzco;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private final zzaJ(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const-string v1, "BillingClient"

    iget v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    invoke-static {v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzaN(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzaN(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting clientState from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    .line 4
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final zzaL()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/android/billingclient/api/zzba;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/android/billingclient/api/zzba;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/google/android/gms/internal/play_billing/zzan;

    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/android/billingclient/api/zzba;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    .line 4
    :try_start_3
    const-string v3, "BillingClient"

    const-string v4, "There was an exception while unbinding service!"

    .line 2
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/google/android/gms/internal/play_billing/zzan;

    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/android/billingclient/api/zzba;

    goto :goto_0

    :catchall_2
    move-exception v2

    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/google/android/gms/internal/play_billing/zzan;

    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/android/billingclient/api/zzba;

    .line 3
    throw v2

    .line 4
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private final zzaM()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzB:Lcom/android/billingclient/api/PendingPurchasesParams;

    invoke-virtual {v0}, Lcom/android/billingclient/api/PendingPurchasesParams;->isEnabledForPrepaidPlans()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static final zzaN(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "CLOSED"

    return-object p0

    :cond_0
    const-string p0, "CONNECTED"

    return-object p0

    :cond_1
    const-string p0, "CONNECTING"

    return-object p0

    :cond_2
    const-string p0, "DISCONNECTED"

    return-object p0
.end method

.method private final zzaO(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzbj;
    .locals 1

    .line 1
    const-string v0, "BillingClient"

    invoke-static {v0, p3, p4}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p3, 0x7

    .line 2
    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    .line 3
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/android/billingclient/api/BillingClientImpl;->zzbf(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    new-instance p2, Lcom/android/billingclient/api/zzbj;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p3

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p2, p3, p1, p4}, Lcom/android/billingclient/api/zzbj;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object p2
.end method

.method private final zzaQ(ILcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcv;
    .locals 1

    const/16 p1, 0x9

    .line 1
    invoke-static {p5}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbf(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    const-string p1, "BillingClient"

    .line 2
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/android/billingclient/api/zzcv;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/android/billingclient/api/zzcv;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1
.end method

.method private final zzaR(Ljava/lang/String;I)Lcom/android/billingclient/api/zzcv;
    .locals 16

    move-object/from16 v1, p0

    .line 1
    const-string v0, "Querying owned items, item type: "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BillingClient"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzo:Z

    iget-boolean v3, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzw:Z

    iget-object v4, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzB:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 3
    invoke-virtual {v4}, Lcom/android/billingclient/api/PendingPurchasesParams;->isEnabledForOneTimeProducts()Z

    move-result v4

    iget-object v5, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzB:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 4
    invoke-virtual {v5}, Lcom/android/billingclient/api/PendingPurchasesParams;->isEnabledForPrepaidPlans()Z

    move-result v5

    iget-object v6, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzF:Ljava/lang/Long;

    move-object v7, v6

    iget-object v6, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    .line 5
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 6
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/play_billing/zze;->zzd(ZZZZLjava/lang/String;J)Landroid/os/Bundle;

    move-result-object v14

    const/4 v2, 0x0

    move-object v13, v2

    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v9, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 7
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_1

    .line 30
    :try_start_2
    sget-object v3, Lcom/android/billingclient/api/zzcj;->zzm:Lcom/android/billingclient/api/BillingResult;

    const-string v5, "Service has been reset to null"

    const/4 v6, 0x0

    const/16 v2, 0x9

    const/16 v4, 0x77

    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzaQ(ILcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcv;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    move-object v6, v0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v6, v0

    goto/16 :goto_4

    :cond_1
    iget-boolean v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzo:Z

    const/16 v3, 0x9

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzw:Z

    if-eq v4, v2, :cond_2

    move v10, v3

    goto :goto_0

    :cond_2
    const/16 v2, 0x13

    move v10, v2

    :goto_0
    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, p1

    .line 9
    invoke-interface/range {v9 .. v14}, Lcom/google/android/gms/internal/play_billing/zzan;->zzj(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v12, p1

    goto :goto_1

    .line 29
    :cond_3
    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 10
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    move-object/from16 v12, p1

    .line 11
    invoke-interface {v9, v5, v2, v12, v13}, Lcom/google/android/gms/internal/play_billing/zzan;->zzi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 9
    :goto_1
    const-string v5, "BillingClient"

    const-string v6, "getPurchase()"

    .line 12
    invoke-static {v2, v5, v6}, Lcom/android/billingclient/api/zzcy;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/zzcx;

    move-result-object v5

    move v6, v3

    invoke-virtual {v5}, Lcom/android/billingclient/api/zzcx;->zza()Lcom/android/billingclient/api/BillingResult;

    move-result-object v3

    .line 13
    sget-object v7, Lcom/android/billingclient/api/zzcj;->zzl:Lcom/android/billingclient/api/BillingResult;

    if-eq v3, v7, :cond_4

    invoke-virtual {v5}, Lcom/android/billingclient/api/zzcx;->zzb()I

    move-result v4

    const-string v5, "Purchase bundle invalid"

    const/4 v6, 0x0

    const/16 v2, 0x9

    .line 33
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzaQ(ILcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcv;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v1, "INAPP_PURCHASE_ITEM_LIST"

    .line 14
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v3, "INAPP_PURCHASE_DATA_LIST"

    .line 15
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v5, "INAPP_DATA_SIGNATURE_LIST"

    .line 16
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    move v8, v7

    .line 17
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_6

    .line 18
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 19
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 20
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "Sku is owned: "

    const-string v15, "BillingClient"

    invoke-virtual {v13, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 21
    invoke-static {v15, v11}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    new-instance v11, Lcom/android/billingclient/api/Purchase;

    .line 22
    invoke-direct {v11, v9, v10}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 23
    invoke-virtual {v11}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v8, "BillingClient"

    const-string v9, "BUG: empty/null token!"

    .line 24
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v4

    .line 25
    :cond_5
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v6, v0

    .line 7
    const-string v5, "Got an exception trying to decode the purchase!"

    sget-object v3, Lcom/android/billingclient/api/zzcj;->zzk:Lcom/android/billingclient/api/BillingResult;

    const/16 v4, 0x33

    const/16 v2, 0x9

    move-object/from16 v1, p0

    .line 34
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzaQ(ILcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcv;

    move-result-object v0

    return-object v0

    :cond_6
    move-object/from16 v1, p0

    if-eqz v8, :cond_7

    const/16 v3, 0x1a

    .line 25
    sget-object v4, Lcom/android/billingclient/api/zzcj;->zzk:Lcom/android/billingclient/api/BillingResult;

    .line 26
    invoke-direct {v1, v3, v6, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    :cond_7
    const-string v3, "INAPP_CONTINUATION_TOKEN"

    .line 27
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Continuation token: "

    const-string v4, "BillingClient"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/billingclient/api/zzcv;

    sget-object v3, Lcom/android/billingclient/api/zzcj;->zzl:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v2, v3, v0}, Lcom/android/billingclient/api/zzcv;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object v2

    :catchall_0
    move-exception v0

    .line 7
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 32
    :goto_3
    const-string v5, "Got exception trying to get purchases try to reconnect"

    .line 31
    sget-object v3, Lcom/android/billingclient/api/zzcj;->zzk:Lcom/android/billingclient/api/BillingResult;

    const/16 v4, 0x34

    const/16 v2, 0x9

    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzaQ(ILcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcv;

    move-result-object v0

    return-object v0

    .line 11
    :goto_4
    const-string v5, "Got exception trying to get purchases try to reconnect"

    .line 32
    sget-object v3, Lcom/android/billingclient/api/zzcj;->zzm:Lcom/android/billingclient/api/BillingResult;

    const/16 v4, 0x34

    const/16 v2, 0x9

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzaQ(ILcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcv;

    move-result-object v0

    return-object v0
.end method

.method private final zzaW(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    const-string v0, "BillingClient"

    invoke-static {v0, p5, p6}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p5, 0x4

    .line 2
    invoke-static {p6}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p6

    .line 3
    invoke-direct {p0, p4, p5, p3, p6}, Lcom/android/billingclient/api/BillingClientImpl;->zzbf(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1, p3, p2}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic zzaa(Lcom/android/billingclient/api/BillingClientImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaL()V

    return-void
.end method

.method static bridge synthetic zzap(Lcom/android/billingclient/api/BillingClientImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzy:Z

    return p0
.end method

.method static bridge synthetic zzaq(Lcom/android/billingclient/api/BillingClientImpl;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static bridge synthetic zzar(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;I)Lcom/android/billingclient/api/zzcv;
    .locals 0

    const/16 p2, 0x9

    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzaR(Ljava/lang/String;I)Lcom/android/billingclient/api/zzcv;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzau(Lcom/android/billingclient/api/BillingClientImpl;IILcom/android/billingclient/api/BillingResult;)V
    .locals 0

    const/4 p2, 0x6

    invoke-direct {p0, p1, p2, p3}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method static bridge synthetic zzav(Lcom/android/billingclient/api/BillingClientImpl;IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 0

    const/4 p2, 0x6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/billingclient/api/BillingClientImpl;->zzbf(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic zzaw(Lcom/android/billingclient/api/BillingClientImpl;I)V
    .locals 0

    const/4 p1, 0x6

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbg(I)V

    return-void
.end method

.method private final zzax()Landroid/os/Handler;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Landroid/os/Handler;

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method private final zzaz()Lcom/android/billingclient/api/BillingResult;
    .locals 3

    .line 1
    const-string v0, "BillingClient"

    const-string v1, "Service connection is valid. No need to re-initialize."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkd;->zzc()Lcom/google/android/gms/internal/play_billing/zzkb;

    move-result-object v0

    const/4 v1, 0x6

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzkb;->zzn(I)Lcom/google/android/gms/internal/play_billing/zzkb;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzlx;->zzc()Lcom/google/android/gms/internal/play_billing/zzlv;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzlv;->zza(Z)Lcom/google/android/gms/internal/play_billing/zzlv;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzkb;->zzm(Lcom/google/android/gms/internal/play_billing/zzlv;)Lcom/google/android/gms/internal/play_billing/zzkb;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzkd;

    .line 7
    invoke-direct {p0, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaG(Lcom/google/android/gms/internal/play_billing/zzkd;)V

    .line 8
    sget-object v0, Lcom/android/billingclient/api/zzcj;->zzl:Lcom/android/billingclient/api/BillingResult;

    return-object v0
.end method

.method static bridge synthetic zzb(Lcom/android/billingclient/api/BillingClientImpl;)I
    .locals 0

    iget p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzl:I

    return p0
.end method

.method private zzbe(IILcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/billingclient/api/zzcg;->zzb(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzjz;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzaF(Lcom/google/android/gms/internal/play_billing/zzjz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "BillingClient"

    const-string p3, "Unable to log."

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzbf(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/billingclient/api/zzcg;->zzc(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjz;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzaF(Lcom/google/android/gms/internal/play_billing/zzjz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "BillingClient"

    const-string p3, "Unable to log."

    .line 3
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private zzbg(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/android/billingclient/api/zzcg;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzkd;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzaG(Lcom/google/android/gms/internal/play_billing/zzkd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "BillingClient"

    const-string v1, "Unable to log."

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic zzc(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/os/Handler;
    .locals 0

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzax()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzn;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zze:Lcom/android/billingclient/api/zzn;

    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzch;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Lcom/android/billingclient/api/zzch;

    return-object p0
.end method

.method static bridge synthetic zzl(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/BillingResult;
    .locals 0

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaA()Lcom/android/billingclient/api/BillingResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzo(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/google/android/gms/internal/play_billing/zzan;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/google/android/gms/internal/play_billing/zzan;

    return-object p0
.end method

.method static bridge synthetic zzq(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzF:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic zzr(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic zzw(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/billingclient/api/zzcj;->zzm:Lcom/android/billingclient/api/BillingResult;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-interface {p2, v0, p1}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Lcom/android/billingclient/api/zzag;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/billingclient/api/zzag;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    new-instance v5, Lcom/android/billingclient/api/zzah;

    invoke-direct {v5, p0, p2, p1}, Lcom/android/billingclient/api/zzah;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)V

    .line 5
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzax()Landroid/os/Handler;

    move-result-object v6

    .line 6
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaD()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    const-wide/16 v3, 0x7530

    .line 7
    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzE(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaA()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    const/16 v2, 0x19

    .line 9
    invoke-direct {p0, v2, v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    .line 10
    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final isReady()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/google/android/gms/internal/play_billing/zzan;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/android/billingclient/api/zzba;

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return v3

    .line 2
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;
    .locals 28

    move-object/from16 v1, p0

    .line 1
    const-string v8, "BUY_INTENT"

    const-string/jumbo v0, "proxyPackageVersion"

    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zze:Lcom/android/billingclient/api/zzn;

    const/4 v9, 0x2

    if-eqz v2, :cond_36

    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zze:Lcom/android/billingclient/api/zzn;

    invoke-virtual {v2}, Lcom/android/billingclient/api/zzn;->zzd()Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 3
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    sget-object v0, Lcom/android/billingclient/api/zzcj;->zzm:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v1, v9, v9, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    .line 5
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzm(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v0

    .line 6
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzg()Ljava/util/ArrayList;

    move-result-object v2

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzh()Ljava/util/List;

    move-result-object v3

    const/4 v10, 0x0

    .line 8
    invoke-static {v2, v10}, Lcom/google/android/gms/internal/play_billing/zzcx;->zza(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 9
    invoke-static {v3, v10}, Lcom/google/android/gms/internal/play_billing/zzcx;->zza(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 12
    invoke-virtual {v4}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {v4}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v6

    .line 11
    const-string/jumbo v11, "subs"

    .line 14
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/16 v12, 0x9

    const-string v13, "BillingClient"

    if-eqz v11, :cond_2

    iget-boolean v11, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzj:Z

    if-eqz v11, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    const-string v0, "Current client doesn\'t support subscriptions."

    .line 196
    invoke-static {v13, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object v0, Lcom/android/billingclient/api/zzcj;->zzo:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v1, v12, v9, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    .line 198
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzm(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v0

    .line 15
    :cond_2
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzq()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-boolean v11, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzm:Z

    if-eqz v11, :cond_3

    goto :goto_1

    .line 192
    :cond_3
    const-string v0, "Current client doesn\'t support extra params for buy intent."

    .line 193
    invoke-static {v13, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-object v0, Lcom/android/billingclient/api/zzcj;->zzi:Lcom/android/billingclient/api/BillingResult;

    const/16 v2, 0x12

    invoke-direct {v1, v2, v9, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    .line 195
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzm(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v0

    .line 16
    :cond_4
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v14, 0x1

    if-le v11, v14, :cond_6

    iget-boolean v11, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzt:Z

    if-eqz v11, :cond_5

    goto :goto_2

    .line 189
    :cond_5
    const-string v0, "Current client doesn\'t support multi-item purchases."

    .line 190
    invoke-static {v13, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    sget-object v0, Lcom/android/billingclient/api/zzcj;->zzt:Lcom/android/billingclient/api/BillingResult;

    const/16 v2, 0x13

    invoke-direct {v1, v2, v9, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    .line 192
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzm(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v0

    .line 17
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    iget-boolean v11, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzu:Z

    if-eqz v11, :cond_7

    goto :goto_3

    .line 158
    :cond_7
    const-string v0, "Current client doesn\'t support purchases with ProductDetails."

    .line 187
    invoke-static {v13, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/android/billingclient/api/zzcj;->zzv:Lcom/android/billingclient/api/BillingResult;

    const/16 v2, 0x14

    invoke-direct {v1, v2, v9, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    .line 189
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzm(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v0

    .line 18
    :cond_8
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzb()Lcom/android/billingclient/api/BillingResult;

    move-result-object v11

    .line 19
    sget-object v15, Lcom/android/billingclient/api/zzcj;->zzl:Lcom/android/billingclient/api/BillingResult;

    if-eq v11, v15, :cond_9

    const/16 v0, 0x78

    .line 20
    invoke-direct {v1, v0, v9, v11}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    .line 21
    invoke-virtual {v1, v11}, Lcom/android/billingclient/api/BillingClientImpl;->zzm(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v11

    :cond_9
    iget-boolean v11, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzm:Z

    if-eqz v11, :cond_2e

    iget-boolean v11, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzo:Z

    iget-boolean v15, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzw:Z

    iget-object v12, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzB:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 22
    invoke-virtual {v12}, Lcom/android/billingclient/api/PendingPurchasesParams;->isEnabledForOneTimeProducts()Z

    move-result v12

    iget-object v9, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzB:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 23
    invoke-virtual {v9}, Lcom/android/billingclient/api/PendingPurchasesParams;->isEnabledForPrepaidPlans()Z

    move-result v9

    move-object/from16 v16, v10

    iget-boolean v10, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzC:Z

    iget-object v14, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    move-object/from16 v17, v4

    iget-object v4, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzF:Ljava/lang/Long;

    move-object/from16 v18, v5

    .line 24
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v19, v6

    iget-object v6, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 25
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move/from16 v20, v9

    .line 26
    new-instance v9, Landroid/os/Bundle;

    .line 27
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 28
    invoke-static {v9, v14, v4, v5}, Lcom/google/android/gms/internal/play_billing/zze;->zzc(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    .line 29
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zza()I

    move-result v4

    if-eqz v4, :cond_a

    .line 30
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zza()I

    move-result v4

    const-string/jumbo v5, "prorationMode"

    .line 31
    invoke-virtual {v9, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 32
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzc()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 33
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzc()Ljava/lang/String;

    move-result-object v4

    const-string v5, "accountId"

    .line 34
    invoke-virtual {v9, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 36
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzd()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "obfuscatedProfileId"

    .line 37
    invoke-virtual {v9, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzp()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string/jumbo v4, "isOfferPersonalizedByDeveloper"

    const/4 v5, 0x1

    .line 39
    invoke-virtual {v9, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    :cond_d
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    new-instance v4, Ljava/util/ArrayList;

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v5, "skusToReplace"

    .line 42
    invoke-virtual {v9, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 43
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zze()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 44
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zze()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "oldSkuPurchaseToken"

    .line 45
    invoke-virtual {v9, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_f
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string/jumbo v4, "oldSkuPurchaseId"

    move-object/from16 v5, v16

    .line 47
    invoke-virtual {v9, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    move-object/from16 v5, v16

    .line 48
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzf()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 49
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzf()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v14, "originalExternalTransactionId"

    .line 50
    invoke-virtual {v9, v14, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_11
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string/jumbo v4, "paymentsPurchaseParams"

    .line 52
    invoke-virtual {v9, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    if-eqz v11, :cond_13

    if-eqz v12, :cond_13

    const-string v4, "enablePendingPurchases"

    const/4 v5, 0x1

    .line 53
    invoke-virtual {v9, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_5

    :cond_13
    const/4 v5, 0x1

    :goto_5
    if-eqz v15, :cond_14

    if-eqz v20, :cond_14

    const-string v4, "enablePendingPurchaseForSubscriptions"

    .line 54
    invoke-virtual {v9, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_14
    if-eqz v10, :cond_15

    const-string v4, "enableAlternativeBilling"

    .line 55
    invoke-virtual {v9, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    :cond_15
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzh()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/play_billing/zza;

    invoke-direct {v5}, Lcom/google/android/gms/internal/play_billing/zza;-><init>()V

    .line 57
    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 58
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfn;->zza()Lcom/google/android/gms/internal/play_billing/zzfm;

    move-result-object v4

    .line 59
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzh()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v5

    new-instance v10, Lcom/google/android/gms/internal/play_billing/zzb;

    invoke-direct {v10}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>()V

    .line 60
    invoke-interface {v5, v10}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v5

    new-instance v10, Lcom/google/android/gms/internal/play_billing/zzc;

    invoke-direct {v10, v6}, Lcom/google/android/gms/internal/play_billing/zzc;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-interface {v5, v10}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v5

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzco;->zzo()Lj$/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 63
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfm;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 64
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzfn;

    .line 65
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfv;->zzh()[B

    move-result-object v4

    const-string/jumbo v5, "subscriptionProductReplacementParamsList"

    .line 66
    invoke-virtual {v9, v5, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 67
    :cond_16
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const-string v5, "SKU_OFFER_ID_TOKEN_LIST"

    const-string v6, "additionalSkuTypes"

    const-string v10, "additionalSkus"

    const-string/jumbo v11, "skuDetailsTokens"

    if-nez v4, :cond_1b

    new-instance v4, Ljava/util/ArrayList;

    .line 101
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    .line 102
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    .line 103
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    .line 104
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    .line 105
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_1a

    .line 120
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_17

    .line 121
    invoke-virtual {v9, v11, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 126
    :cond_17
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v11, 0x1

    if-le v4, v11, :cond_19

    new-instance v4, Ljava/util/ArrayList;

    .line 127
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v14, Ljava/util/ArrayList;

    .line 128
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-lt v11, v15, :cond_18

    .line 132
    invoke-virtual {v9, v10, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 133
    invoke-virtual {v9, v6, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_6
    move-object/from16 v22, v0

    move-object/from16 v21, v8

    goto/16 :goto_9

    .line 130
    :cond_18
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/16 v16, 0x0

    throw v16

    :cond_19
    const/16 v16, 0x0

    goto :goto_6

    :cond_1a
    const/16 v16, 0x0

    .line 106
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 107
    throw v16

    .line 156
    :cond_1b
    new-instance v2, Ljava/util/ArrayList;

    .line 68
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    .line 69
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v14, Ljava/util/ArrayList;

    .line 70
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    .line 71
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    .line 72
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v8

    new-instance v8, Ljava/util/ArrayList;

    .line 73
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v0

    const/4 v7, 0x0

    .line 74
    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_21

    .line 75
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 76
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v23

    .line 77
    invoke-virtual/range {v23 .. v23}, Lcom/android/billingclient/api/ProductDetails;->zzb()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_1c

    move-object/from16 v24, v0

    .line 78
    invoke-virtual/range {v23 .. v23}, Lcom/android/billingclient/api/ProductDetails;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1c
    move-object/from16 v24, v0

    .line 79
    :goto_8
    invoke-virtual/range {v24 .. v24}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual/range {v23 .. v23}, Lcom/android/billingclient/api/ProductDetails;->zzc()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual/range {v23 .. v23}, Lcom/android/billingclient/api/ProductDetails;->zzd()Ljava/util/List;

    move-result-object v24

    if-eqz v24, :cond_1e

    .line 82
    invoke-virtual/range {v23 .. v23}, Lcom/android/billingclient/api/ProductDetails;->zzd()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_1e

    .line 83
    invoke-virtual/range {v23 .. v23}, Lcom/android/billingclient/api/ProductDetails;->zzd()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_1d
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 84
    invoke-virtual/range {v24 .. v24}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->zzc()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_1d

    .line 85
    invoke-virtual/range {v24 .. v24}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->zzc()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_1e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1f

    .line 87
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    if-lez v7, :cond_20

    .line 88
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    .line 92
    :cond_21
    invoke-virtual {v9, v5, v15}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "AUTO_PAY_BALANCE_THRESHOLD_LIST"

    .line 93
    invoke-virtual {v9, v0, v8}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 94
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 95
    invoke-virtual {v9, v11, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 96
    :cond_22
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "SKU_SERIALIZED_DOCID_LIST"

    .line 97
    invoke-virtual {v9, v0, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 98
    :cond_23
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 99
    invoke-virtual {v9, v10, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 100
    invoke-virtual {v9, v6, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 134
    :cond_24
    :goto_9
    invoke-virtual {v9, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-boolean v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzr:Z

    if-eqz v0, :cond_25

    goto :goto_a

    .line 138
    :cond_25
    sget-object v0, Lcom/android/billingclient/api/zzcj;->zzu:Lcom/android/billingclient/api/BillingResult;

    const/16 v2, 0x15

    const/4 v3, 0x2

    .line 155
    invoke-direct {v1, v2, v3, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    .line 156
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzm(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v0

    :cond_26
    :goto_a
    if-eqz v17, :cond_27

    .line 150
    invoke-virtual/range {v17 .. v17}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual/range {v17 .. v17}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->zza()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "skuPackageName"

    .line 138
    invoke-virtual {v9, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    :goto_b
    const/4 v7, 0x0

    goto :goto_c

    :cond_27
    const/4 v5, 0x0

    goto :goto_b

    .line 141
    :goto_c
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "accountName"

    .line 142
    invoke-virtual {v9, v0, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_29

    const-string v0, "Activity\'s intent is null."

    .line 144
    invoke-static {v13, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 145
    :cond_29
    const-string v2, "PROXY_PACKAGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 146
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "proxyPackage"

    .line 147
    invoke-virtual {v9, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 148
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    .line 149
    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v2, v22

    .line 150
    :try_start_1
    invoke-virtual {v9, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :catch_0
    move-object/from16 v2, v22

    .line 170
    :catch_1
    const-string/jumbo v0, "package not found"

    .line 151
    invoke-virtual {v9, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_2a
    :goto_d
    iget-boolean v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzu:Z

    if-eqz v0, :cond_2b

    .line 152
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    const/16 v12, 0x11

    :goto_e
    move v2, v12

    goto :goto_f

    .line 178
    :cond_2b
    iget-boolean v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzs:Z

    if-eqz v0, :cond_2c

    if-eqz v5, :cond_2c

    const/16 v12, 0xf

    goto :goto_e

    :cond_2c
    iget-boolean v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzo:Z

    if-eqz v0, :cond_2d

    const/16 v2, 0x9

    goto :goto_f

    :cond_2d
    const/4 v12, 0x6

    goto :goto_e

    .line 152
    :goto_f
    new-instance v0, Lcom/android/billingclient/api/zzar;

    move-object/from16 v5, p2

    move-object v6, v9

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/zzar;-><init>(Lcom/android/billingclient/api/BillingClientImpl;ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingFlowParams;Landroid/os/Bundle;)V

    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Landroid/os/Handler;

    .line 153
    invoke-direct {v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzaD()Ljava/util/concurrent/ExecutorService;

    move-result-object v27

    const-wide/16 v23, 0x1388

    const/16 v25, 0x0

    move-object/from16 v22, v0

    move-object/from16 v26, v2

    .line 154
    invoke-static/range {v22 .. v27}, Lcom/android/billingclient/api/BillingClientImpl;->zzE(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_10

    :cond_2e
    move-object v3, v5

    move-object v4, v6

    move-object/from16 v21, v8

    move-object v7, v10

    .line 100
    new-instance v0, Lcom/android/billingclient/api/zzq;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/billingclient/api/zzq;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Landroid/os/Handler;

    .line 157
    invoke-direct {v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzaD()Ljava/util/concurrent/ExecutorService;

    move-result-object v27

    const-wide/16 v23, 0x1388

    const/16 v25, 0x0

    move-object/from16 v22, v0

    move-object/from16 v26, v2

    .line 158
    invoke-static/range {v22 .. v27}, Lcom/android/billingclient/api/BillingClientImpl;->zzE(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_10
    if-nez v0, :cond_2f

    .line 154
    :try_start_2
    sget-object v0, Lcom/android/billingclient/api/zzcj;->zzd:Lcom/android/billingclient/api/BillingResult;

    const/16 v2, 0x19

    const/4 v3, 0x2

    .line 159
    invoke-direct {v1, v2, v3, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    .line 160
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzm(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v0

    :catch_2
    move-exception v0

    goto/16 :goto_18

    :catch_3
    move-exception v0

    goto/16 :goto_19

    :catch_4
    move-exception v0

    goto/16 :goto_19

    :cond_2f
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1388

    .line 161
    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Bundle;

    .line 162
    invoke-static {v2, v13}, Lcom/google/android/gms/internal/play_billing/zze;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    .line 163
    invoke-static {v2, v13}, Lcom/google/android/gms/internal/play_billing/zze;->zzh(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_35

    new-instance v4, Ljava/lang/StringBuilder;

    .line 164
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to buy item, Error response code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {v0, v3}, Lcom/android/billingclient/api/zzcj;->zza(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v3
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v2, :cond_30

    :goto_11
    const/4 v5, 0x1

    :goto_12
    const/4 v11, 0x1

    goto :goto_14

    .line 171
    :cond_30
    :try_start_3
    const-string v0, "LOG_REASON"

    .line 166
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_31

    goto :goto_11

    .line 167
    :cond_31
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_32

    .line 168
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzkg;->zza(I)I

    move-result v5

    goto :goto_12

    :catchall_0
    move-exception v0

    goto :goto_13

    :cond_32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected type for bundle log reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_11

    .line 170
    :goto_13
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Failed to get log reason from bundle: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_11

    :goto_14
    if-ne v5, v11, :cond_33

    const/16 v5, 0x17

    :cond_33
    if-nez v2, :cond_34

    :goto_15
    move-object v10, v7

    :goto_16
    const/4 v2, 0x2

    goto :goto_17

    .line 174
    :cond_34
    :try_start_5
    const-string v0, "ADDITIONAL_LOG_DETAILS"

    .line 171
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_16

    :catchall_1
    move-exception v0

    .line 172
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to get additional log details from bundle: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 173
    :goto_17
    invoke-direct {v1, v5, v2, v3, v10}, Lcom/android/billingclient/api/BillingClientImpl;->zzbf(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzm(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v3

    .line 169
    :cond_35
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/billingclient/api/ProxyBillingActivity;

    move-object/from16 v7, p1

    .line 175
    invoke-direct {v0, v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v3, v21

    .line 176
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 177
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 178
    invoke-virtual {v7, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    sget-object v0, Lcom/android/billingclient/api/zzcj;->zzl:Lcom/android/billingclient/api/BillingResult;

    return-object v0

    .line 186
    :goto_18
    const-string v2, "Exception while launching billing flow. Try to reconnect"

    .line 179
    invoke-static {v13, v2, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Lcom/android/billingclient/api/zzcj;->zzm:Lcom/android/billingclient/api/BillingResult;

    .line 180
    invoke-static {v0}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x5

    const/4 v4, 0x2

    .line 181
    invoke-direct {v1, v3, v4, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbf(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzm(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v2

    .line 2
    :goto_19
    const-string v2, "Time out while launching billing flow. Try to reconnect"

    .line 183
    invoke-static {v13, v2, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Lcom/android/billingclient/api/zzcj;->zzn:Lcom/android/billingclient/api/BillingResult;

    .line 184
    invoke-static {v0}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    const/4 v4, 0x2

    .line 185
    invoke-direct {v1, v3, v4, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbf(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzm(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v2

    :cond_36
    move v4, v9

    .line 2
    sget-object v0, Lcom/android/billingclient/api/zzcj;->zzF:Lcom/android/billingclient/api/BillingResult;

    const/16 v2, 0xc

    invoke-direct {v1, v2, v4, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    return-object v0
.end method

.method public queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v0

    const/4 v1, 0x7

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/billingclient/api/zzcj;->zzm:Lcom/android/billingclient/api/BillingResult;

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzu:Z

    if-nez v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Querying product details is not supported."

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/android/billingclient/api/zzcj;->zzv:Lcom/android/billingclient/api/BillingResult;

    const/16 v0, 0x14

    invoke-direct {p0, v0, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_1
    new-instance v2, Lcom/android/billingclient/api/zzam;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/billingclient/api/zzam;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    new-instance v5, Lcom/android/billingclient/api/zzan;

    invoke-direct {v5, p0, p2}, Lcom/android/billingclient/api/zzan;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    .line 7
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzax()Landroid/os/Handler;

    move-result-object v6

    .line 8
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaD()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    const-wide/16 v3, 0x7530

    .line 9
    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzE(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaA()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    const/16 v0, 0x19

    .line 11
    invoke-direct {p0, v0, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public final queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryPurchasesParams;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzaI(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method public startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaz()Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    monitor-exit v0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 40
    :cond_0
    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const-string v1, "BillingClient"

    const-string v3, "Client is already in the process of connecting to billing service."

    .line 4
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/android/billingclient/api/zzcj;->zze:Lcom/android/billingclient/api/BillingResult;

    const/16 v3, 0x25

    invoke-direct {p0, v3, v2, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    .line 6
    monitor-exit v0

    goto/16 :goto_2

    :cond_1
    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    const-string v1, "BillingClient"

    const-string v3, "Client was already closed and can\'t be reused. Please create another instance."

    .line 7
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v1, Lcom/android/billingclient/api/zzcj;->zzm:Lcom/android/billingclient/api/BillingResult;

    const/16 v3, 0x26

    invoke-direct {p0, v3, v2, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    .line 9
    monitor-exit v0

    goto/16 :goto_2

    .line 10
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzaJ(I)V

    .line 11
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaL()V

    const-string v1, "BillingClient"

    const-string v4, "Starting in-app billing setup."

    .line 12
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/billingclient/api/zzba;

    const/4 v4, 0x0

    invoke-direct {v1, p0, p1, v4}, Lcom/android/billingclient/api/zzba;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;Lcom/android/billingclient/api/zzbl;)V

    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/android/billingclient/api/zzba;

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    .line 14
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const/16 v6, 0x29

    if-eqz v1, :cond_8

    .line 17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 18
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 19
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/16 v6, 0x28

    if-eqz v1, :cond_7

    .line 20
    iget-object v7, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 21
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v8, "com.android.vending"

    .line 22
    invoke-static {v7, v8}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v1, :cond_6

    new-instance v6, Landroid/content/ComponentName;

    .line 24
    invoke-direct {v6, v7, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    .line 25
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 26
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    const-string/jumbo v6, "playBillingLibraryVersion"

    .line 27
    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 28
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaz()Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    if-eq v6, v3, :cond_4

    const-string v1, "BillingClient"

    const-string v3, "Client state no longer CONNECTING, returning service disconnected."

    .line 29
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-object v1, Lcom/android/billingclient/api/zzcj;->zzm:Lcom/android/billingclient/api/BillingResult;

    const/16 v3, 0x75

    invoke-direct {p0, v3, v2, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    .line 31
    monitor-exit v0

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/android/billingclient/api/zzba;

    .line 32
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 33
    invoke-virtual {v0, v1, v6, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "BillingClient"

    const-string v1, "Service was bonded successfully."

    .line 34
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_2

    :cond_5
    const-string v0, "BillingClient"

    const-string v1, "Connection to Billing service is blocked."

    .line 35
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x27

    goto :goto_1

    .line 32
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 39
    :cond_6
    const-string v0, "BillingClient"

    const-string v1, "The device doesn\'t have valid Play Store."

    .line 23
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v0, "BillingClient"

    const-string v1, "The device doesn\'t have valid Play Store."

    .line 36
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_8
    :goto_1
    invoke-direct {p0, v5}, Lcom/android/billingclient/api/BillingClientImpl;->zzaJ(I)V

    const-string v0, "BillingClient"

    const-string v1, "Billing service unavailable on device."

    .line 38
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v1, Lcom/android/billingclient/api/zzcj;->zzc:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, v6, v2, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    :goto_2
    if-eqz v1, :cond_9

    .line 40
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    :cond_9
    return-void

    .line 13
    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method final synthetic zzac(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zze:Lcom/android/billingclient/api/zzn;

    invoke-virtual {v0}, Lcom/android/billingclient/api/zzn;->zzd()Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zze:Lcom/android/billingclient/api/zzn;

    .line 2
    invoke-virtual {v0}, Lcom/android/billingclient/api/zzn;->zzd()Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_0
    const-string p1, "BillingClient"

    const-string v0, "No valid listener is set in BroadcastManager"

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzad(Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzcj;->zzn:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0x18

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    .line 2
    invoke-virtual {p2}, Lcom/android/billingclient/api/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-interface {p1, v0, p2}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzaj(Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzcj;->zzn:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0x18

    const/4 v2, 0x7

    invoke-direct {p0, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0, v1}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method final synthetic zzal(Lcom/android/billingclient/api/PurchasesResponseListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzcj;->zzn:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0x18

    const/16 v2, 0x9

    invoke-direct {p0, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(IILcom/android/billingclient/api/BillingResult;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzco;->zzl()Lcom/google/android/gms/internal/play_billing/zzco;

    move-result-object v1

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/android/billingclient/api/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method final synthetic zzd(ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingFlowParams;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    const/4 p4, 0x5

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/google/android/gms/internal/play_billing/zzan;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 2
    :try_start_2
    sget-object p1, Lcom/android/billingclient/api/zzcj;->zzm:Lcom/android/billingclient/api/BillingResult;

    const/16 p2, 0x77

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zze;->zzn(Lcom/android/billingclient/api/BillingResult;I)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p5

    .line 4
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/play_billing/zzan;->zzg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 5
    :goto_0
    sget-object p2, Lcom/android/billingclient/api/zzcj;->zzk:Lcom/android/billingclient/api/BillingResult;

    .line 6
    invoke-static {p1}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p2, p4, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzo(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 7
    :goto_1
    sget-object p2, Lcom/android/billingclient/api/zzcj;->zzm:Lcom/android/billingclient/api/BillingResult;

    .line 8
    invoke-static {p1}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p2, p4, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzo(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zze(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9

    const/4 v1, 0x5

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/google/android/gms/internal/play_billing/zzan;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    .line 2
    :try_start_2
    sget-object p1, Lcom/android/billingclient/api/zzcj;->zzm:Lcom/android/billingclient/api/BillingResult;

    const/16 p2, 0x77

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zze;->zzn(Lcom/android/billingclient/api/BillingResult;I)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v4, 0x3

    move-object v6, p1

    move-object v7, p2

    .line 4
    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/play_billing/zzan;->zzf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 5
    :goto_0
    sget-object p2, Lcom/android/billingclient/api/zzcj;->zzk:Lcom/android/billingclient/api/BillingResult;

    .line 6
    invoke-static {p1}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p2, v1, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzo(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 7
    :goto_1
    sget-object p2, Lcom/android/billingclient/api/zzcj;->zzm:Lcom/android/billingclient/api/BillingResult;

    .line 8
    invoke-static {p1}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p2, v1, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzo(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method final zzh(Lcom/android/billingclient/api/QueryProductDetailsParams;)Lcom/android/billingclient/api/zzbj;
    .locals 22

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/QueryProductDetailsParams;->zzb()Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/QueryProductDetailsParams;->zza()Lcom/google/android/gms/internal/play_billing/zzco;

    move-result-object v8

    .line 4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v9, :cond_f

    add-int/lit8 v11, v2, 0x14

    if-le v11, v9, :cond_0

    move v3, v9

    goto :goto_1

    :cond_0
    move v3, v11

    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    .line 5
    invoke-interface {v8, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 7
    check-cast v7, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    .line 8
    invoke-virtual {v7}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->zza()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    new-instance v6, Landroid/os/Bundle;

    .line 9
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ITEM_ID_LIST"

    .line 10
    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    const-string/jumbo v3, "playBillingLibraryVersion"

    .line 11
    invoke-virtual {v6, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    :try_start_1
    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/google/android/gms/internal/play_billing/zzan;

    .line 12
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v13, 0x0

    if-nez v2, :cond_2

    .line 48
    :try_start_2
    sget-object v0, Lcom/android/billingclient/api/zzcj;->zzm:Lcom/android/billingclient/api/BillingResult;

    const-string v2, "Service has been reset to null."

    const/16 v3, 0x77

    invoke-direct {v1, v0, v3, v2, v13}, Lcom/android/billingclient/api/BillingClientImpl;->zzaO(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzbj;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    const/16 v4, 0x2b

    goto/16 :goto_7

    :cond_2
    iget-boolean v3, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzx:Z

    const/4 v7, 0x1

    if-eq v7, v3, :cond_3

    const/16 v3, 0x11

    goto :goto_3

    :cond_3
    const/16 v3, 0x14

    :goto_3
    iget-object v14, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 13
    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 14
    invoke-direct {v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzaM()Z

    move-result v15

    iget-object v10, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    .line 15
    invoke-direct/range {p0 .. p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzaB(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;

    .line 16
    invoke-direct/range {p0 .. p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzaB(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;

    .line 17
    invoke-direct/range {p0 .. p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzaB(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;

    .line 18
    invoke-direct/range {p0 .. p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzaB(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;

    iget-object v12, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzF:Ljava/lang/Long;

    move-object/from16 v16, v14

    .line 19
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 20
    new-instance v12, Landroid/os/Bundle;

    .line 21
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 22
    invoke-static {v12, v10, v13, v14}, Lcom/google/android/gms/internal/play_billing/zze;->zzc(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    const-string v10, "enablePendingPurchases"

    .line 23
    invoke-virtual {v12, v10, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "SKU_DETAILS_RESPONSE_FORMAT"

    const-string v13, "PRODUCT_DETAILS"

    .line 24
    invoke-virtual {v12, v10, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v15, :cond_4

    const-string v10, "enablePendingPurchaseForSubscriptions"

    .line 25
    invoke-virtual {v12, v10, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    new-instance v10, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_4
    if-ge v15, v14, :cond_6

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .line 29
    check-cast v19, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move/from16 v20, v7

    const/4 v7, 0x0

    .line 30
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    xor-int/lit8 v7, v21, 0x1

    or-int v17, v17, v7

    .line 32
    invoke-virtual/range {v19 .. v19}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->zzb()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v19, v2

    const-string v2, "first_party"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "Serialized DocId is required for constructing ExtraParams to query ProductDetails for all first party products."

    const/4 v7, 0x0

    .line 33
    invoke-static {v7, v2}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v18, v20

    :cond_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v19

    move/from16 v7, v20

    goto :goto_4

    :cond_6
    move-object/from16 v19, v2

    if-eqz v17, :cond_7

    const-string v2, "SKU_OFFER_ID_TOKEN_LIST"

    .line 35
    invoke-virtual {v12, v2, v10}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 36
    :cond_7
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "SKU_SERIALIZED_DOCID_LIST"

    .line 37
    invoke-virtual {v12, v2, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_8
    if-eqz v18, :cond_9

    const/4 v7, 0x0

    .line 38
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "accountName"

    .line 39
    invoke-virtual {v12, v2, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object v7, v12

    move-object/from16 v4, v16

    move-object/from16 v2, v19

    .line 40
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/play_billing/zzan;->zzl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v2, :cond_a

    const-string/jumbo v0, "queryProductDetailsAsync got empty product details response."

    .line 51
    sget-object v2, Lcom/android/billingclient/api/zzcj;->zzC:Lcom/android/billingclient/api/BillingResult;

    const/16 v3, 0x2c

    const/4 v7, 0x0

    invoke-direct {v1, v2, v3, v0, v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzaO(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzbj;

    move-result-object v0

    return-object v0

    :cond_a
    const-string v3, "DETAILS_LIST"

    .line 41
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x6

    if-nez v3, :cond_c

    const-string v0, "BillingClient"

    .line 52
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    const-string v3, "BillingClient"

    .line 53
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zze;->zzh(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_b

    .line 54
    invoke-static {v0, v2}, Lcom/android/billingclient/api/zzcj;->zza(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSkuDetails() failed for queryProductDetailsAsync. Response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x17

    const/4 v7, 0x0

    .line 55
    invoke-direct {v1, v2, v3, v0, v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzaO(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzbj;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v7, 0x0

    .line 56
    invoke-static {v4, v2}, Lcom/android/billingclient/api/zzcj;->zza(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    const/16 v2, 0x2d

    const-string v3, "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync."

    .line 57
    invoke-direct {v1, v0, v2, v3, v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzaO(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzbj;

    move-result-object v0

    return-object v0

    :cond_c
    const-string v3, "DETAILS_LIST"

    .line 42
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_e

    const/4 v3, 0x0

    .line 43
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_d

    .line 44
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :try_start_3
    new-instance v7, Lcom/android/billingclient/api/ProductDetails;

    .line 45
    invoke-direct {v7, v6}, Lcom/android/billingclient/api/ProductDetails;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 46
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "Got product details: "

    invoke-virtual {v10, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "BillingClient"

    invoke-static {v10, v6}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :catch_2
    move-exception v0

    .line 12
    const-string v2, "Error trying to decode SkuDetails."

    .line 58
    invoke-static {v4, v2}, Lcom/android/billingclient/api/zzcj;->zza(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    const/16 v3, 0x2f

    const-string v4, "Got a JSON exception trying to decode ProductDetails. \n Exception: "

    .line 59
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaO(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzbj;

    move-result-object v0

    return-object v0

    :cond_d
    move v2, v11

    goto/16 :goto_0

    .line 47
    :cond_e
    const-string/jumbo v0, "queryProductDetailsAsync got null response list"

    .line 60
    sget-object v2, Lcom/android/billingclient/api/zzcj;->zzC:Lcom/android/billingclient/api/BillingResult;

    const/16 v3, 0x2e

    const/4 v7, 0x0

    invoke-direct {v1, v2, v3, v0, v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzaO(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzbj;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 12
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 50
    :goto_6
    const-string/jumbo v2, "queryProductDetailsAsync got a remote exception (try to reconnect)."

    .line 49
    sget-object v3, Lcom/android/billingclient/api/zzcj;->zzk:Lcom/android/billingclient/api/BillingResult;

    const/16 v4, 0x2b

    invoke-direct {v1, v3, v4, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaO(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzbj;

    move-result-object v0

    return-object v0

    .line 60
    :goto_7
    const-string/jumbo v2, "queryProductDetailsAsync got a remote exception (try to reconnect)."

    .line 50
    sget-object v3, Lcom/android/billingclient/api/zzcj;->zzm:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v1, v3, v4, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaO(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzbj;

    move-result-object v0

    return-object v0

    .line 60
    :cond_f
    const-string v2, ""

    new-instance v3, Lcom/android/billingclient/api/zzbj;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2, v0}, Lcom/android/billingclient/api/zzbj;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v3
.end method

.method final zzk()Lcom/android/billingclient/api/zzch;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Lcom/android/billingclient/api/zzch;

    return-object v0
.end method

.method final zzm(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Landroid/os/Handler;

    new-instance v1, Lcom/android/billingclient/api/zzp;

    invoke-direct {v1, p0, p1}, Lcom/android/billingclient/api/zzp;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingResult;)V

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p1
.end method

.method final declared-synchronized zzp()Lcom/google/android/gms/internal/play_billing/zzev;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzE:Lcom/google/android/gms/internal/play_billing/zzev;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaD()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfb;->zza(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzE:Lcom/google/android/gms/internal/play_billing/zzev;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzE:Lcom/google/android/gms/internal/play_billing/zzev;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final synthetic zzt(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzaE(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    const/4 p1, 0x0

    return-object p1
.end method
