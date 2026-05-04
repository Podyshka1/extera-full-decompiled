.class public final synthetic Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda32;->f$0:Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticLambda32;->f$0:Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, p1, p2}, Lcom/exteragram/messenger/plugins/PluginsController;->$r8$lambda$C1spfK_dE_DDlAtaG7xq-AaFmko(Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
