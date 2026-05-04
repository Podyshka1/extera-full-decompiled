.class public final synthetic Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/Utilities$Callback;

.field public final synthetic f$1:Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/Utilities$Callback;Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    iput-object p2, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$$ExternalSyntheticLambda1;->f$1:Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    iget-object v1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$$ExternalSyntheticLambda1;->f$1:Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;

    invoke-static {v0, v1}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->$r8$lambda$S8VvpzrFUa6ad2yt5u0XF0dokNo(Lorg/telegram/messenger/Utilities$Callback;Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;)V

    return-void
.end method
