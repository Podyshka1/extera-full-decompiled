.class public final synthetic Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/exteragram/messenger/plugins/PluginsController$EngineHookCaller;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda20;->f$0:I

    return-void
.end method


# virtual methods
.method public final call(Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;Ljava/lang/Object;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;
    .locals 1

    .line 0
    iget v0, p0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda20;->f$0:I

    check-cast p2, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    invoke-static {v0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/PluginsController;->$r8$lambda$KInBKozus1HdyjPzxLY8Oh1bXFM(ILcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;

    move-result-object p1

    return-object p1
.end method
