.class public final synthetic Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/ai/network/GenerationCallback;

.field public final synthetic f$1:Lokhttp3/Response;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/ai/network/GenerationCallback;Lokhttp3/Response;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda3;->f$0:Lcom/exteragram/messenger/ai/network/GenerationCallback;

    iput-object p2, p0, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda3;->f$1:Lokhttp3/Response;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda3;->f$0:Lcom/exteragram/messenger/ai/network/GenerationCallback;

    iget-object v1, p0, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda3;->f$1:Lokhttp3/Response;

    invoke-static {v0, v1}, Lcom/exteragram/messenger/ai/network/Client;->$r8$lambda$3ib7nYkXsmrxVprrGF0CVKzxIi8(Lcom/exteragram/messenger/ai/network/GenerationCallback;Lokhttp3/Response;)V

    return-void
.end method
