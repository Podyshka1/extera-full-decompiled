.class public final synthetic Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

.field public final synthetic f$1:Lcom/android/billingclient/api/Purchase;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Lcom/android/billingclient/api/Purchase;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    iput-object p2, p0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda14;->f$1:Lcom/android/billingclient/api/Purchase;

    iput-object p3, p0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda14;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    iget-object v1, p0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda14;->f$1:Lcom/android/billingclient/api/Purchase;

    iget-object v2, p0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda14;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/messenger/BillingController;->$r8$lambda$o5FsLnwv6_seNtIi3ZA4T6Gd_ns(Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Lcom/android/billingclient/api/Purchase;Ljava/lang/Runnable;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method
