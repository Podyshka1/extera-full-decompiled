.class public Lorg/telegram/messenger/BotInlineKeyboard$ButtonBot;
.super Lorg/telegram/messenger/BotInlineKeyboard$Button;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/BotInlineKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonBot"
.end annotation


# instance fields
.field public final button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/telegram/messenger/BotInlineKeyboard$Button;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/telegram/messenger/BotInlineKeyboard$ButtonBot;->button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    return-void
.end method


# virtual methods
.method public getColor()Lorg/telegram/messenger/BotInlineKeyboard$BackgroundColor;
    .locals 2

    .line 52
    iget-object v0, p0, Lorg/telegram/messenger/BotInlineKeyboard$ButtonBot;->button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->style:Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonStyle;

    if-eqz v0, :cond_2

    .line 53
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonStyle;->bg_success:Z

    if-eqz v1, :cond_0

    .line 54
    sget-object v0, Lorg/telegram/messenger/BotInlineKeyboard$BackgroundColor;->SUCCESS:Lorg/telegram/messenger/BotInlineKeyboard$BackgroundColor;

    return-object v0

    .line 55
    :cond_0
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonStyle;->bg_danger:Z

    if-eqz v1, :cond_1

    .line 56
    sget-object v0, Lorg/telegram/messenger/BotInlineKeyboard$BackgroundColor;->DANGER:Lorg/telegram/messenger/BotInlineKeyboard$BackgroundColor;

    return-object v0

    .line 57
    :cond_1
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonStyle;->bg_primary:Z

    if-eqz v0, :cond_2

    .line 58
    sget-object v0, Lorg/telegram/messenger/BotInlineKeyboard$BackgroundColor;->PRIMARY:Lorg/telegram/messenger/BotInlineKeyboard$BackgroundColor;

    return-object v0

    .line 61
    :cond_2
    sget-object v0, Lorg/telegram/messenger/BotInlineKeyboard$BackgroundColor;->NONE:Lorg/telegram/messenger/BotInlineKeyboard$BackgroundColor;

    return-object v0
.end method

.method public getIconEmoji()J
    .locals 2

    .line 66
    iget-object v0, p0, Lorg/telegram/messenger/BotInlineKeyboard$ButtonBot;->button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->style:Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonStyle;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonStyle;->icon:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/telegram/messenger/BotInlineKeyboard$ButtonBot;->button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    return-object v0
.end method
