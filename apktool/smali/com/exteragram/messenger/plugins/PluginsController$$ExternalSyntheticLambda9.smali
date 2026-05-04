.class public final synthetic Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    invoke-static {v0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->$r8$lambda$fkOEc2l7S3Khbq5IvdTb1K9rydw(Ljava/lang/String;Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
