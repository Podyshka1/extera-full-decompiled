.class public final synthetic Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/ai/network/GenerationCallback;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/ai/network/GenerationCallback;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda9;->f$0:Lcom/exteragram/messenger/ai/network/GenerationCallback;

    iput-object p2, p0, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda9;->f$0:Lcom/exteragram/messenger/ai/network/GenerationCallback;

    iget-object v1, p0, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/exteragram/messenger/ai/network/Client;->$r8$lambda$JlF_A-mYce5S2-35INYFhSLFbrY(Lcom/exteragram/messenger/ai/network/GenerationCallback;Ljava/lang/String;)V

    return-void
.end method
