.class public Lcom/exteragram/messenger/adblock/data/BlockResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final exception:Ljava/lang/String;

.field private final filter:Ljava/lang/String;

.field private final important:Z

.field private final matched:Z

.field private final redirect:Ljava/lang/String;

.field private final rewrittenUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/exteragram/messenger/adblock/data/BlockResult;->matched:Z

    .line 14
    iput-boolean p2, p0, Lcom/exteragram/messenger/adblock/data/BlockResult;->important:Z

    .line 15
    iput-object p3, p0, Lcom/exteragram/messenger/adblock/data/BlockResult;->redirect:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/exteragram/messenger/adblock/data/BlockResult;->rewrittenUrl:Ljava/lang/String;

    .line 17
    iput-object p5, p0, Lcom/exteragram/messenger/adblock/data/BlockResult;->exception:Ljava/lang/String;

    .line 18
    iput-object p6, p0, Lcom/exteragram/messenger/adblock/data/BlockResult;->filter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/exteragram/messenger/adblock/data/BlockResult;->exception:Ljava/lang/String;

    return-object v0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/exteragram/messenger/adblock/data/BlockResult;->filter:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirect()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/exteragram/messenger/adblock/data/BlockResult;->redirect:Ljava/lang/String;

    return-object v0
.end method

.method public getRewrittenUrl()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/exteragram/messenger/adblock/data/BlockResult;->rewrittenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isImportant()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/exteragram/messenger/adblock/data/BlockResult;->important:Z

    return v0
.end method

.method public isMatched()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/exteragram/messenger/adblock/data/BlockResult;->matched:Z

    return v0
.end method
