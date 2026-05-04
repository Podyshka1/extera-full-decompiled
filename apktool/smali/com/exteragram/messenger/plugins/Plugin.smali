.class public Lcom/exteragram/messenger/plugins/Plugin;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private appVersion:Ljava/lang/String;

.field private author:Ljava/lang/String;

.field public transient cachedEngine:Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

.field private description:Ljava/lang/String;

.field private engine:Ljava/lang/String;

.field private error:Ljava/lang/Throwable;

.field private final id:Ljava/lang/String;

.field private index:I

.field private isEnabled:Z

.field private isNotResponding:Z

.field private final name:Ljava/lang/String;

.field private pack:Ljava/lang/String;

.field private requirements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sdkVersion:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/exteragram/messenger/plugins/Plugin;->pack:Ljava/lang/String;

    const/4 v1, -0x1

    .line 34
    iput v1, p0, Lcom/exteragram/messenger/plugins/Plugin;->index:I

    .line 35
    iput-object v0, p0, Lcom/exteragram/messenger/plugins/Plugin;->error:Ljava/lang/Throwable;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/exteragram/messenger/plugins/Plugin;->isNotResponding:Z

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/exteragram/messenger/plugins/Plugin;->requirements:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/Plugin;->id:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/exteragram/messenger/plugins/Plugin;->name:Ljava/lang/String;

    const-wide p1, -0x531330af1c0974dbL    # -2.7623073939717845E-92

    .line 43
    invoke-static {p1, p2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/Plugin;->version:Ljava/lang/String;

    const-wide p1, -0x531330b31c0974dbL    # -2.762301541876341E-92

    .line 44
    invoke-static {p1, p2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/Plugin;->appVersion:Ljava/lang/String;

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x531330bc1c0974dbL    # -2.7622883746615935E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->SDK_VERSION:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/Plugin;->sdkVersion:Ljava/lang/String;

    .line 46
    sget p1, Lorg/telegram/messenger/R$string;->PluginNoDescription:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/Plugin;->description:Ljava/lang/String;

    .line 47
    sget p1, Lorg/telegram/messenger/R$string;->PluginNoAuthor:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/Plugin;->author:Ljava/lang/String;

    .line 48
    iput-boolean v0, p0, Lcom/exteragram/messenger/plugins/Plugin;->isEnabled:Z

    return-void
.end method

.method private static isIconValid(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-wide v0, -0x531330bf1c0974dbL    # -2.762283985590011E-92

    .line 52
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 179
    instance-of v0, p1, Lcom/exteragram/messenger/plugins/Plugin;

    if-eqz v0, :cond_0

    .line 180
    check-cast p1, Lcom/exteragram/messenger/plugins/Plugin;

    iget-object p1, p1, Lcom/exteragram/messenger/plugins/Plugin;->id:Ljava/lang/String;

    iget-object v0, p0, Lcom/exteragram/messenger/plugins/Plugin;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 182
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/Plugin;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/Plugin;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/Plugin;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEngine()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/Plugin;->engine:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/Plugin;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/Plugin;->pack:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/exteragram/messenger/plugins/Plugin;->index:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/Plugin;->pack:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x531330db1c0974dbL    # -2.7622430209219075E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/exteragram/messenger/plugins/Plugin;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/Plugin;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/exteragram/messenger/plugins/Plugin;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/Plugin;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPack()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/Plugin;->pack:Ljava/lang/String;

    return-object v0
.end method

.method public getRequirements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/Plugin;->requirements:Ljava/util/List;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/Plugin;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/Plugin;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/Plugin;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/Plugin;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/Plugin;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/exteragram/messenger/plugins/Plugin;->isEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNotResponding()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/exteragram/messenger/plugins/Plugin;->isNotResponding:Z

    return v0
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/Plugin;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/Plugin;->author:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/Plugin;->description:Ljava/lang/String;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/Plugin;->hasError()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/exteragram/messenger/plugins/Plugin;->isEnabled:Z

    return-void
.end method

.method public setEngine(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/Plugin;->engine:Ljava/lang/String;

    return-void
.end method

.method public setError(Ljava/lang/Throwable;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/Plugin;->error:Ljava/lang/Throwable;

    .line 101
    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/Plugin;->hasError()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lcom/exteragram/messenger/plugins/Plugin;->isEnabled:Z

    :cond_0
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 2

    .line 166
    invoke-static {p1}, Lcom/exteragram/messenger/plugins/Plugin;->isIconValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2f

    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .line 173
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/exteragram/messenger/plugins/Plugin;->pack:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/exteragram/messenger/plugins/Plugin;->index:I

    return-void
.end method

.method public setNotResponding(Z)V
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/exteragram/messenger/plugins/Plugin;->isNotResponding:Z

    return-void
.end method

.method public setRequirements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/Plugin;->requirements:Ljava/util/List;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/Plugin;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/Plugin;->version:Ljava/lang/String;

    return-void
.end method
