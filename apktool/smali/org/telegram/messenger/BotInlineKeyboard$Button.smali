.class public abstract Lorg/telegram/messenger/BotInlineKeyboard$Button;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/BotInlineKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Button"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()Lorg/telegram/messenger/BotInlineKeyboard$BackgroundColor;
    .locals 1

    .line 24
    sget-object v0, Lorg/telegram/messenger/BotInlineKeyboard$BackgroundColor;->NONE:Lorg/telegram/messenger/BotInlineKeyboard$BackgroundColor;

    return-object v0
.end method

.method public getIconEmoji()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getIconRes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getText()Ljava/lang/String;
.end method
