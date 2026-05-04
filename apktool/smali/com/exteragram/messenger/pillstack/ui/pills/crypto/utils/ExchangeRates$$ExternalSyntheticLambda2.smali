.class public final synthetic Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$$ExternalSyntheticLambda2;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$$ExternalSyntheticLambda2;->f$1:Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$$ExternalSyntheticLambda2;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$$ExternalSyntheticLambda2;->f$1:Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;

    invoke-static {v0, v1}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->$r8$lambda$N2-ze8JRy2FQCLLaC_XD27HNkyw(Ljava/util/ArrayList;Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;)V

    return-void
.end method
