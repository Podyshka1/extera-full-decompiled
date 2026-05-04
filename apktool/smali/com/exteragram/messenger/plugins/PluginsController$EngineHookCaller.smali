.class interface abstract Lcom/exteragram/messenger/plugins/PluginsController$EngineHookCaller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/PluginsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "EngineHookCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract call(Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;Ljava/lang/Object;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;",
            "TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/exteragram/messenger/plugins/PluginsController$HookResult<",
            "TT;>;"
        }
    .end annotation
.end method
