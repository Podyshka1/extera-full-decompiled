.class public final synthetic Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/ai/network/GenerationCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/ai/network/GenerationCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda4;->f$0:Lcom/exteragram/messenger/ai/network/GenerationCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda4;->f$0:Lcom/exteragram/messenger/ai/network/GenerationCallback;

    invoke-static {v0}, Lcom/exteragram/messenger/ai/network/Client;->$r8$lambda$ZAip9f_JL-AYRVjLJBBdmGazW6E(Lcom/exteragram/messenger/ai/network/GenerationCallback;)V

    return-void
.end method
