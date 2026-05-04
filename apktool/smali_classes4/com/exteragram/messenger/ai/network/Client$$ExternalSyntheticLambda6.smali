.class public final synthetic Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/ai/network/Client;

.field public final synthetic f$1:Lcom/exteragram/messenger/ai/network/GenerationCallback;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/ai/network/Client;Lcom/exteragram/messenger/ai/network/GenerationCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda6;->f$0:Lcom/exteragram/messenger/ai/network/Client;

    iput-object p2, p0, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda6;->f$1:Lcom/exteragram/messenger/ai/network/GenerationCallback;

    iput-object p3, p0, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda6;->f$0:Lcom/exteragram/messenger/ai/network/Client;

    iget-object v1, p0, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda6;->f$1:Lcom/exteragram/messenger/ai/network/GenerationCallback;

    iget-object v2, p0, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/exteragram/messenger/ai/network/Client;->$r8$lambda$uvYeVq12U0uCxA35-7PMPdPnszU(Lcom/exteragram/messenger/ai/network/Client;Lcom/exteragram/messenger/ai/network/GenerationCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
