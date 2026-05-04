.class public Lcom/exteragram/messenger/ai/data/Role;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# instance fields
.field private isSuggestion:Z

.field private name:Ljava/lang/String;

.field private prompt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/exteragram/messenger/ai/data/Role;->name:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/exteragram/messenger/ai/data/Role;->prompt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/exteragram/messenger/ai/data/Role;)I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/exteragram/messenger/ai/data/Role;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/data/Role;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 21
    check-cast p1, Lcom/exteragram/messenger/ai/data/Role;

    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/ai/data/Role;->compareTo(Lcom/exteragram/messenger/ai/data/Role;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 45
    :cond_1
    check-cast p1, Lcom/exteragram/messenger/ai/data/Role;

    .line 47
    iget-object v0, p0, Lcom/exteragram/messenger/ai/data/Role;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/exteragram/messenger/ai/data/Role;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/exteragram/messenger/ai/data/Role;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/exteragram/messenger/ai/data/Role;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 2

    .line 76
    invoke-static {}, Lcom/exteragram/messenger/ai/AiConfig;->getSelectedRole()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/ai/data/Role;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSuggestion()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/exteragram/messenger/ai/data/Role;->isSuggestion:Z

    return v0
.end method

.method public setSuggestion(Z)Lcom/exteragram/messenger/ai/data/Role;
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/exteragram/messenger/ai/data/Role;->isSuggestion:Z

    return-object p0
.end method
