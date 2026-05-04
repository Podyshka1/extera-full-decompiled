.class public final synthetic Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/AccountInstance;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_updateSentPhoneCode;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;Lorg/telegram/tgnet/TLRPC$TL_updateSentPhoneCode;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/messenger/AccountInstance;

    iput-object p2, p0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;

    iput-object p3, p0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda10;->f$2:Lorg/telegram/tgnet/TLRPC$TL_updateSentPhoneCode;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/messenger/AccountInstance;

    iget-object v1, p0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;

    iget-object v2, p0, Lorg/telegram/messenger/BillingController$$ExternalSyntheticLambda10;->f$2:Lorg/telegram/tgnet/TLRPC$TL_updateSentPhoneCode;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/BillingController;->$r8$lambda$v5QobDfEEYNa2L6o7ywh4nBrG5w(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;Lorg/telegram/tgnet/TLRPC$TL_updateSentPhoneCode;)V

    return-void
.end method
