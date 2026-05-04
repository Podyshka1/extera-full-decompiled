.class public Lcom/android/billingclient/api/BillingFlowParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingFlowParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/util/List;

.field private zzd:Ljava/util/ArrayList;

.field private zze:Z

.field private zzf:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/zzcf;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->zza(Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzf:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/BillingFlowParams;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzd:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzc:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 32
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Details of the products must be provided."

    .line 34
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    if-eqz v0, :cond_5

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Set SkuDetails or ProductDetailsParams, not both."

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    const/4 v4, 0x0

    if-eqz v0, :cond_8

    .line 2
    iget-object v5, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzd:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 5
    iget-object v5, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzd:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v5, v1, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzd:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 8
    throw v4

    .line 4
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SKU cannot be null."

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_8
    iget-object v5, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzc:Ljava/util/List;

    .line 3
    new-instance v6, Lcom/android/billingclient/api/zzce;

    invoke-direct {v6}, Lcom/android/billingclient/api/zzce;-><init>()V

    invoke-static {v5, v6}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 19
    :goto_4
    new-instance v5, Lcom/android/billingclient/api/BillingFlowParams;

    invoke-direct {v5, v4}, Lcom/android/billingclient/api/BillingFlowParams;-><init>(Lcom/android/billingclient/api/zzcf;)V

    if-nez v0, :cond_c

    if-eqz v3, :cond_9

    .line 20
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzc:Ljava/util/List;

    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 22
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->zza()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    move v1, v2

    :goto_5
    invoke-static {v5, v1}, Lcom/android/billingclient/api/BillingFlowParams;->zzi(Lcom/android/billingclient/api/BillingFlowParams;Z)V

    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zza:Ljava/lang/String;

    .line 25
    invoke-static {v5, v0}, Lcom/android/billingclient/api/BillingFlowParams;->zzk(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzb:Ljava/lang/String;

    .line 26
    invoke-static {v5, v0}, Lcom/android/billingclient/api/BillingFlowParams;->zzl(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzf:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    .line 27
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/billingclient/api/BillingFlowParams;->zzo(Lcom/android/billingclient/api/BillingFlowParams;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)V

    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzd:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_6

    .line 31
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_6
    invoke-static {v5, v1}, Lcom/android/billingclient/api/BillingFlowParams;->zzn(Lcom/android/billingclient/api/BillingFlowParams;Ljava/util/ArrayList;)V

    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zze:Z

    .line 29
    invoke-static {v5, v0}, Lcom/android/billingclient/api/BillingFlowParams;->zzj(Lcom/android/billingclient/api/BillingFlowParams;Z)V

    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzc:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzco;->zzk(Ljava/util/Collection;)Lcom/google/android/gms/internal/play_billing/zzco;

    move-result-object v0

    goto :goto_7

    .line 31
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzco;->zzl()Lcom/google/android/gms/internal/play_billing/zzco;

    move-result-object v0

    :goto_7
    invoke-static {v5, v0}, Lcom/android/billingclient/api/BillingFlowParams;->zzm(Lcom/android/billingclient/api/BillingFlowParams;Lcom/google/android/gms/internal/play_billing/zzco;)V

    return-object v5

    .line 19
    :cond_c
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzd:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v4
.end method

.method public setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzc:Ljava/util/List;

    return-object p0
.end method

.method public setSubscriptionUpdateParams(Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;->zzb(Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzf:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    return-object p0
.end method
