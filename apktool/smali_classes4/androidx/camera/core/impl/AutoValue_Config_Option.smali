.class final Landroidx/camera/core/impl/AutoValue_Config_Option;
.super Landroidx/camera/core/impl/Config$Option;
.source "SourceFile"


# instance fields
.field private final id:Ljava/lang/String;

.field private final token:Ljava/lang/Object;

.field private final valueClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/camera/core/impl/Config$Option;-><init>()V

    if-eqz p1, :cond_1

    .line 24
    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->id:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 28
    iput-object p2, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->valueClass:Ljava/lang/Class;

    .line 29
    iput-object p3, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->token:Ljava/lang/Object;

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null valueClass"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null id"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 61
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/impl/Config$Option;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 62
    check-cast p1, Landroidx/camera/core/impl/Config$Option;

    .line 63
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/camera/core/impl/Config$Option;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->valueClass:Ljava/lang/Class;

    .line 64
    invoke-virtual {p1}, Landroidx/camera/core/impl/Config$Option;->getValueClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->token:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 65
    invoke-virtual {p1}, Landroidx/camera/core/impl/Config$Option;->getToken()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/camera/core/impl/Config$Option;->getToken()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/Object;
    .locals 1

    .line 44
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->token:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueClass()Ljava/lang/Class;
    .locals 1

    .line 39
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->valueClass:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 74
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 76
    iget-object v2, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->valueClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 78
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->token:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Option{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", valueClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->valueClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->token:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
