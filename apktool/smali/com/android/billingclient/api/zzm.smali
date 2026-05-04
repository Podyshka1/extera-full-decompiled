.class final Lcom/android/billingclient/api/zzm;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/android/billingclient/api/zzn;

.field private zzb:Z

.field private final zzc:Z


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/zzn;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/zzm;->zza:Lcom/android/billingclient/api/zzn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-boolean p2, p0, Lcom/android/billingclient/api/zzm;->zzc:Z

    return-void
.end method

.method private final zzd(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;I)V
    .locals 2

    .line 1
    const-string v0, "FAILURE_LOGGING_PAYLOAD"

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p2, p0, Lcom/android/billingclient/api/zzm;->zza:Lcom/android/billingclient/api/zzn;

    invoke-static {p2}, Lcom/android/billingclient/api/zzn;->zzb(Lcom/android/billingclient/api/zzn;)Lcom/android/billingclient/api/zzch;

    move-result-object p2

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgw;->zza()Lcom/google/android/gms/internal/play_billing/zzgw;

    move-result-object p3

    .line 4
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzjz;->zzC([BLcom/google/android/gms/internal/play_billing/zzgw;)Lcom/google/android/gms/internal/play_billing/zzjz;

    move-result-object p1

    .line 5
    invoke-interface {p2, p1}, Lcom/android/billingclient/api/zzch;->zza(Lcom/google/android/gms/internal/play_billing/zzjz;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/billingclient/api/zzm;->zza:Lcom/android/billingclient/api/zzn;

    invoke-static {p1}, Lcom/android/billingclient/api/zzn;->zzb(Lcom/android/billingclient/api/zzn;)Lcom/android/billingclient/api/zzch;

    move-result-object p1

    const/16 v0, 0x17

    .line 6
    invoke-static {v0, p3, p2}, Lcom/android/billingclient/api/zzcg;->zzb(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzjz;

    move-result-object p2

    .line 7
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/zzch;->zza(Lcom/google/android/gms/internal/play_billing/zzjz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const-string p1, "BillingBroadcastManager"

    const-string p2, "Failed parsing Api failure."

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "BillingBroadcastManager"

    if-nez p1, :cond_0

    const-string p1, "Bundle is null."

    .line 2
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzm;->zza:Lcom/android/billingclient/api/zzn;

    invoke-static {p1}, Lcom/android/billingclient/api/zzn;->zzb(Lcom/android/billingclient/api/zzn;)Lcom/android/billingclient/api/zzch;

    move-result-object p1

    .line 3
    sget-object p2, Lcom/android/billingclient/api/zzcj;->zzk:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0xb

    .line 4
    invoke-static {v1, v0, p2}, Lcom/android/billingclient/api/zzcg;->zzb(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzjz;

    move-result-object v0

    .line 3
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/zzch;->zza(Lcom/google/android/gms/internal/play_billing/zzjz;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzm;->zza:Lcom/android/billingclient/api/zzn;

    invoke-static {p1}, Lcom/android/billingclient/api/zzn;->zzc(Lcom/android/billingclient/api/zzn;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/android/billingclient/api/zzn;->zzc(Lcom/android/billingclient/api/zzn;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, p2, v0}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    .line 6
    :cond_0
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzf(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v3, "INTENT_SOURCE"

    .line 8
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LAUNCH_BILLING_FLOW"

    .line 9
    invoke-static {v3, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    const-string v3, "com.android.vending.billing.PURCHASES_UPDATED"

    .line 10
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    .line 11
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    const-string v3, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 16
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    if-eqz p2, :cond_3

    .line 17
    invoke-direct {p0, p1, v2, v0}, Lcom/android/billingclient/api/zzm;->zzd(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;I)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzm;->zza:Lcom/android/billingclient/api/zzn;

    invoke-static {p1}, Lcom/android/billingclient/api/zzn;->zzc(Lcom/android/billingclient/api/zzn;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object p1

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzco;->zzl()Lcom/google/android/gms/internal/play_billing/zzco;

    move-result-object p2

    .line 19
    invoke-interface {p1, v2, p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/billingclient/api/zzm;->zza:Lcom/android/billingclient/api/zzn;

    invoke-static {p1}, Lcom/android/billingclient/api/zzn;->zza(Lcom/android/billingclient/api/zzn;)Lcom/android/billingclient/api/zzb;

    invoke-static {p1}, Lcom/android/billingclient/api/zzn;->zze(Lcom/android/billingclient/api/zzn;)Lcom/android/billingclient/api/UserChoiceBillingListener;

    .line 41
    const-string p1, "AlternativeBillingListener and UserChoiceBillingListener is null."

    .line 42
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzm;->zza:Lcom/android/billingclient/api/zzn;

    invoke-static {p1}, Lcom/android/billingclient/api/zzn;->zzb(Lcom/android/billingclient/api/zzn;)Lcom/android/billingclient/api/zzch;

    move-result-object p1

    .line 43
    sget-object p2, Lcom/android/billingclient/api/zzcj;->zzk:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0x4d

    .line 44
    invoke-static {v1, v0, p2}, Lcom/android/billingclient/api/zzcg;->zzb(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzjz;

    move-result-object v0

    .line 43
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/zzch;->zza(Lcom/google/android/gms/internal/play_billing/zzjz;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzm;->zza:Lcom/android/billingclient/api/zzn;

    invoke-static {p1}, Lcom/android/billingclient/api/zzn;->zzc(Lcom/android/billingclient/api/zzn;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object p1

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzco;->zzl()Lcom/google/android/gms/internal/play_billing/zzco;

    move-result-object v0

    .line 46
    invoke-interface {p1, p2, v0}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_4
    return-void

    .line 12
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzj(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_6

    iget-object p1, p0, Lcom/android/billingclient/api/zzm;->zza:Lcom/android/billingclient/api/zzn;

    invoke-static {p1}, Lcom/android/billingclient/api/zzn;->zzb(Lcom/android/billingclient/api/zzn;)Lcom/android/billingclient/api/zzch;

    move-result-object p1

    .line 13
    invoke-static {v0}, Lcom/android/billingclient/api/zzcg;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzkd;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/zzch;->zzc(Lcom/google/android/gms/internal/play_billing/zzkd;)V

    goto :goto_2

    .line 14
    :cond_6
    invoke-direct {p0, p1, v2, v0}, Lcom/android/billingclient/api/zzm;->zzd(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;I)V

    .line 13
    :goto_2
    iget-object p1, p0, Lcom/android/billingclient/api/zzm;->zza:Lcom/android/billingclient/api/zzn;

    invoke-static {p1}, Lcom/android/billingclient/api/zzn;->zzc(Lcom/android/billingclient/api/zzn;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object p1

    .line 15
    invoke-interface {p1, v2, p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public final declared-synchronized zza(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/zzm;->zzb:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/billingclient/api/zzm;->zzc:Z

    if-eq v2, v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1, p0, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 2
    :cond_2
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1
    :goto_1
    iput-boolean v2, p0, Lcom/android/billingclient/api/zzm;->zzb:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzb(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean p3, p0, Lcom/android/billingclient/api/zzm;->zzb:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST"

    const/16 v0, 0x21

    const/4 v6, 0x1

    if-lt p3, v0, :cond_2

    iget-boolean p3, p0, Lcom/android/billingclient/api/zzm;->zzc:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v6, p3, :cond_1

    const/4 p3, 0x4

    :goto_0
    move v5, p3

    goto :goto_1

    :cond_1
    const/4 p3, 0x2

    goto :goto_0

    :goto_1
    const/4 v4, 0x0

    move-object v1, p0

    move-object v0, p1

    move-object v2, p2

    :try_start_2
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_2
    move-object p1, v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, p0

    goto :goto_2

    :cond_2
    move-object v1, p0

    move-object v0, p1

    move-object v2, p2

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p0, v2, v3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1
    :goto_3
    iput-boolean v6, v1, Lcom/android/billingclient/api/zzm;->zzb:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
