.class public Lorg/telegram/tgnet/TLRPC$TL_messageActionBotAllowed;
.super Lorg/telegram/tgnet/TLRPC$MessageAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageActionBotAllowed"
.end annotation


# instance fields
.field public app:Lorg/telegram/tgnet/TLRPC$BotApp;

.field public attach_menu:Z

.field public domain:Ljava/lang/String;

.field public from_request:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26755
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageAction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 26764
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 26765
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionBotAllowed;->attach_menu:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move v2, v3

    .line 26766
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionBotAllowed;->from_request:Z

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 26768
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionBotAllowed;->domain:Ljava/lang/String;

    .line 26770
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 26771
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$BotApp;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$BotApp;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionBotAllowed;->app:Lorg/telegram/tgnet/TLRPC$BotApp;

    :cond_3
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x3ae92987

    .line 26776
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 26777
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionBotAllowed;->attach_menu:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    .line 26778
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionBotAllowed;->from_request:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x9

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    .line 26779
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 26780
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 26781
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionBotAllowed;->domain:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 26783
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 26784
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionBotAllowed;->app:Lorg/telegram/tgnet/TLRPC$BotApp;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_3
    return-void
.end method
