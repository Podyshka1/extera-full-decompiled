.class public abstract synthetic Lorg/telegram/messenger/BotInlineKeyboard$Source$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$isEmpty(Lorg/telegram/messenger/BotInlineKeyboard$Source;)Z
    .locals 0

    .line 107
    invoke-interface {p0}, Lorg/telegram/messenger/BotInlineKeyboard$Source;->getRowsCount()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
