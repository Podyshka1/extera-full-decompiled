.class public final synthetic Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/exteragram/messenger/plugins/PluginsController$EngineHookCaller;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda28;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda28;->f$1:I

    return-void
.end method


# virtual methods
.method public final call(Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;Ljava/lang/Object;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda28;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda28;->f$1:I

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/exteragram/messenger/plugins/PluginsController;->$r8$lambda$hg_MKD1G1oNqNF7PDGhdxwklajM(Ljava/lang/String;ILcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;Lorg/telegram/tgnet/TLRPC$Updates;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;

    move-result-object p1

    return-object p1
.end method
