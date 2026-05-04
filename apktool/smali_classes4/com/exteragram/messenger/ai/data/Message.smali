.class public final Lcom/exteragram/messenger/ai/data/Message;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final content:Ljava/lang/String;

.field private imageData:[B

.field private mimeType:Ljava/lang/String;

.field private final role:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/exteragram/messenger/ai/data/Message;->role:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/exteragram/messenger/ai/data/Message;->content:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/exteragram/messenger/ai/data/Message;->role:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/exteragram/messenger/ai/data/Message;->content:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/exteragram/messenger/ai/data/Message;->imageData:[B

    .line 33
    iput-object p4, p0, Lcom/exteragram/messenger/ai/data/Message;->mimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/exteragram/messenger/ai/data/Message;->content:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 41
    const-class v0, Lcom/exteragram/messenger/ai/data/Message;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 45
    :cond_1
    check-cast p1, Lcom/exteragram/messenger/ai/data/Message;

    .line 47
    iget-object v0, p0, Lcom/exteragram/messenger/ai/data/Message;->content:Ljava/lang/String;

    iget-object p1, p1, Lcom/exteragram/messenger/ai/data/Message;->content:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getImageData()[B
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/exteragram/messenger/ai/data/Message;->imageData:[B

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/exteragram/messenger/ai/data/Message;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/exteragram/messenger/ai/data/Message;->role:Ljava/lang/String;

    iget-object v1, p0, Lcom/exteragram/messenger/ai/data/Message;->content:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public role()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/exteragram/messenger/ai/data/Message;->role:Ljava/lang/String;

    return-object v0
.end method
