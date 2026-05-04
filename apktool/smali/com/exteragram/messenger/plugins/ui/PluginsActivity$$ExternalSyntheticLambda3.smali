.class public final synthetic Lcom/exteragram/messenger/plugins/ui/PluginsActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$$ExternalSyntheticLambda3;->f$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    return-void
.end method


# virtual methods
.method public synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 0
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$$ExternalSyntheticLambda3;->f$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    check-cast p1, Lcom/exteragram/messenger/plugins/Plugin;

    invoke-static {v0, p1}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->$r8$lambda$0K5nZ-NNaoJcnMj0HtnaVA6wbbA(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;Lcom/exteragram/messenger/plugins/Plugin;)Z

    move-result p1

    return p1
.end method
