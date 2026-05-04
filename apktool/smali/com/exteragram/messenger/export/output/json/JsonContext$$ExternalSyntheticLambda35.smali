.class public final synthetic Lcom/exteragram/messenger/export/output/json/JsonContext$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/export/output/json/JsonContext;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/export/output/json/JsonContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/export/output/json/JsonContext$$ExternalSyntheticLambda35;->f$0:Lcom/exteragram/messenger/export/output/json/JsonContext;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonContext$$ExternalSyntheticLambda35;->f$0:Lcom/exteragram/messenger/export/output/json/JsonContext;

    check-cast p1, Lcom/exteragram/messenger/export/api/ApiWrap$Poll$Answer;

    invoke-static {v0, p1}, Lcom/exteragram/messenger/export/output/json/JsonContext;->$r8$lambda$DZvvVfxINNbQgeVwZHbS0Lp0an4(Lcom/exteragram/messenger/export/output/json/JsonContext;Lcom/exteragram/messenger/export/api/ApiWrap$Poll$Answer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
