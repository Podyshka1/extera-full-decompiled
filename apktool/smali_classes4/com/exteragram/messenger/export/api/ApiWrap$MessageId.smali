.class public Lcom/exteragram/messenger/export/api/ApiWrap$MessageId;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public didAndMsgId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    const-string v0, ""

    iput-object v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$MessageId;->didAndMsgId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 617
    instance-of v0, p1, Lcom/exteragram/messenger/export/api/ApiWrap$MessageId;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/exteragram/messenger/export/api/ApiWrap$MessageId;

    .line 618
    iget-object p1, p1, Lcom/exteragram/messenger/export/api/ApiWrap$MessageId;->didAndMsgId:Ljava/lang/String;

    iget-object v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$MessageId;->didAndMsgId:Ljava/lang/String;

    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$MessageId;->didAndMsgId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
