.class public Lcom/exteragram/messenger/ai/data/Service;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private key:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/exteragram/messenger/ai/data/Service;->url:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/exteragram/messenger/ai/data/Service;->model:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/exteragram/messenger/ai/data/Service;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    check-cast p1, Lcom/exteragram/messenger/ai/data/Service;

    .line 80
    invoke-virtual {p0}, Lcom/exteragram/messenger/ai/data/Service;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/data/Service;->hashCode()I

    move-result p1

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/exteragram/messenger/ai/data/Service;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/exteragram/messenger/ai/data/Service;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getShortModel()Ljava/lang/String;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/exteragram/messenger/ai/data/Service;->model:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 51
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    const/16 v1, 0x3a

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/exteragram/messenger/ai/data/Service;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/exteragram/messenger/ai/data/Service;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/ai/data/Service;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/ai/data/Service;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 2

    .line 89
    invoke-static {}, Lcom/exteragram/messenger/ai/AiConfig;->getSelectedService()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/exteragram/messenger/ai/data/Service;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
