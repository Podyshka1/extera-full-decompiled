.class public Lcom/exteragram/messenger/translators/TelegramTranslator;
.super Lcom/exteragram/messenger/translators/BaseTranslator;
.source "SourceFile"


# static fields
.field private static instance:Lcom/exteragram/messenger/translators/TelegramTranslator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/exteragram/messenger/translators/BaseTranslator;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/exteragram/messenger/translators/TelegramTranslator;
    .locals 1

    .line 26
    sget-object v0, Lcom/exteragram/messenger/translators/TelegramTranslator;->instance:Lcom/exteragram/messenger/translators/TelegramTranslator;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/exteragram/messenger/translators/TelegramTranslator;

    invoke-direct {v0}, Lcom/exteragram/messenger/translators/TelegramTranslator;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/translators/TelegramTranslator;->instance:Lcom/exteragram/messenger/translators/TelegramTranslator;

    .line 29
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/translators/TelegramTranslator;->instance:Lcom/exteragram/messenger/translators/TelegramTranslator;

    return-object v0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 34
    const-string v0, "Telegram"

    return-object v0
.end method

.method public getSupportedLanguages()Ljava/util/Set;
    .locals 1

    .line 39
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p1

    move-object v3, p3

    move-object v5, p4

    .line 44
    invoke-static/range {v0 .. v5}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->translateWithDefault(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/String;Ljava/util/ArrayList;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    return-void
.end method
