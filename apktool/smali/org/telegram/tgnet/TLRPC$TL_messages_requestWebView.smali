.class public Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_requestWebView"
.end annotation


# instance fields
.field public bot:Lorg/telegram/tgnet/TLRPC$InputUser;

.field public compact:Z

.field public flags:I

.field public from_bot_menu:Z

.field public fullscreen:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public platform:Ljava/lang/String;

.field public reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

.field public send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public silent:Z

.field public start_param:Ljava/lang/String;

.field public theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x269dc2c1

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->from_bot_menu:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    and-int/lit8 v0, v0, -0x11

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->silent:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x20

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x21

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->compact:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x80

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, -0x81

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->fullscreen:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x100

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x101

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->start_param:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_6
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->platform:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_8
    return-void
.end method
