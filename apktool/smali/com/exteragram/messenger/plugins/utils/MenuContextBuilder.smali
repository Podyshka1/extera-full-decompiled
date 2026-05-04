.class public Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final contextData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;->contextData:Ljava/util/Map;

    return-void
.end method

.method public static create()Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;
    .locals 1

    .line 35
    new-instance v0, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;

    invoke-direct {v0}, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;-><init>()V

    return-object v0
.end method

.method public static from(Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;
    .locals 3

    if-nez p0, :cond_0

    .line 40
    invoke-static {}, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;->create()Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;

    move-result-object p0

    return-object p0

    .line 42
    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;->create()Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;

    move-result-object v0

    const-wide v1, -0x531321bf1c0974dbL    # -2.7679019972156417E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1, p0}, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;->withCustom(Ljava/lang/String;Ljava/lang/Object;)Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;->withAccount(I)Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;->withContext(Landroid/content/Context;)Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;->contextData:Ljava/util/Map;

    return-object v0
.end method

.method public withAccount(I)Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;->contextData:Ljava/util/Map;

    const-wide v1, -0x531321c81c0974dbL    # -2.767888830000894E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withBotInfo(Lorg/telegram/tgnet/tl/TL_bots$BotInfo;)Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;
    .locals 3

    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;->contextData:Ljava/util/Map;

    const-wide v1, -0x531322101c0974dbL    # -2.7677834922829135E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public withChat(Lorg/telegram/tgnet/TLRPC$Chat;)Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;
    .locals 4

    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;->contextData:Ljava/util/Map;

    const-wide v1, -0x531321e61c0974dbL    # -2.767844939285069E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;->contextData:Ljava/util/Map;

    const-wide v1, -0x531321eb1c0974dbL    # -2.7678376241657646E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public withChatFull(Lorg/telegram/tgnet/TLRPC$ChatFull;)Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;
    .locals 3

    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;->contextData:Ljava/util/Map;

    const-wide v1, -0x531321f21c0974dbL    # -2.7678273829987387E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public withContext(Landroid/content/Context;)Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;
    .locals 3

    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;->contextData:Ljava/util/Map;

    const-wide v1, -0x531321d01c0974dbL    # -2.7678771258100074E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public withCustom(Ljava/lang/String;Ljava/lang/Object;)Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 125
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;->contextData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public withDialogId(J)Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;->contextData:Ljava/util/Map;

    const-wide v1, -0x531322181c0974dbL    # -2.7677717880920268E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;
    .locals 3

    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;->contextData:Ljava/util/Map;

    const-wide v1, -0x531321d81c0974dbL    # -2.7678654216191206E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public withGroupedMessage(Lorg/telegram/messenger/MessageObject$GroupedMessages;)Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;
    .locals 3

    if-eqz p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;->contextData:Ljava/util/Map;

    const-wide v1, -0x5313222a1c0974dbL    # -2.7677454536625316E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public withMessage(Lorg/telegram/messenger/MessageObject;)Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;
    .locals 3

    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;->contextData:Ljava/util/Map;

    const-wide v1, -0x531322221c0974dbL    # -2.7677571578534184E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public withUser(Lorg/telegram/tgnet/TLRPC$User;)Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;
    .locals 4

    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;->contextData:Ljava/util/Map;

    const-wide v1, -0x531321fb1c0974dbL    # -2.7678142157839912E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;->contextData:Ljava/util/Map;

    const-wide v1, -0x531322001c0974dbL    # -2.767806900664687E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public withUserFull(Lorg/telegram/tgnet/TLRPC$UserFull;)Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;
    .locals 3

    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;->contextData:Ljava/util/Map;

    const-wide v1, -0x531322071c0974dbL    # -2.767796659497661E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method
