.class public abstract Lcom/exteragram/messenger/plugins/models/SettingItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public icon:Ljava/lang/String;

.field public linkAlias:Ljava/lang/String;

.field public onLongClickCallback:Lcom/chaquo/python/PyObject;

.field public type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/exteragram/messenger/plugins/models/SettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/models/SettingItem;->type:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/exteragram/messenger/plugins/models/SettingItem;->icon:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/exteragram/messenger/plugins/models/SettingItem;->onLongClickCallback:Lcom/chaquo/python/PyObject;

    .line 36
    iput-object p4, p0, Lcom/exteragram/messenger/plugins/models/SettingItem;->linkAlias:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 40
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/models/SettingItem;->linkAlias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 44
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/models/SettingItem;->linkAlias:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x531324561c0974dbL    # -2.766932012395904E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/exteragram/messenger/plugins/models/SettingItem;->linkAlias:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-wide v0, -0x531324581c0974dbL    # -2.7669290863481822E-92

    .line 45
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x531324741c0974dbL    # -2.7668881216800786E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    const-wide v2, -0x531324831c0974dbL    # -2.766866176322166E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x531324851c0974dbL    # -2.7668632502744443E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object p1, v4, v1

    const/4 p1, 0x3

    aput-object v3, v4, p1

    const/4 p1, 0x4

    aput-object p2, v4, p1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
