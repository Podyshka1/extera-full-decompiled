.class public final synthetic Lcom/exteragram/messenger/export/output/html/HtmlWriter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/export/output/html/HtmlWriter$UserpicData;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/export/output/html/HtmlWriter$UserpicData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/export/output/html/HtmlWriter$$ExternalSyntheticLambda1;->f$0:Lcom/exteragram/messenger/export/output/html/HtmlWriter$UserpicData;

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
    iget-object v0, p0, Lcom/exteragram/messenger/export/output/html/HtmlWriter$$ExternalSyntheticLambda1;->f$0:Lcom/exteragram/messenger/export/output/html/HtmlWriter$UserpicData;

    check-cast p1, Lcom/google/zxing/Dimension;

    invoke-static {v0, p1}, Lcom/exteragram/messenger/export/output/html/HtmlWriter;->$r8$lambda$LUfwZiBWR44LYKa4oSGSBHvO5Xg(Lcom/exteragram/messenger/export/output/html/HtmlWriter$UserpicData;Lcom/google/zxing/Dimension;)Lcom/google/zxing/Dimension;

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
