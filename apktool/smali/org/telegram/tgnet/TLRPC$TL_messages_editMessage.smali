.class public Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_editMessage"
.end annotation


# instance fields
.field public entities:Ljava/util/ArrayList;

.field public flags:I

.field public id:I

.field public invert_media:Z

.field public media:Lorg/telegram/tgnet/TLRPC$InputMedia;

.field public message:Ljava/lang/String;

.field public no_webpage:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public quick_reply_shortcut_id:I

.field public reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

.field public schedule_date:I

.field public schedule_repeat_period:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57857
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 57868
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->entities:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 57874
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x51e842e1

    .line 57878
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57879
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->no_webpage:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    .line 57880
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->invert_media:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    goto :goto_1

    :cond_1
    const v1, -0x10001

    and-int/2addr v0, v1

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    .line 57881
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57882
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 57883
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57884
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_2

    .line 57885
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->message:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 57887
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_3

    .line 57888
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 57890
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 57891
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 57893
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 57894
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->entities:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 57896
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 57897
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->schedule_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57899
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 57900
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->schedule_repeat_period:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57902
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 57903
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->quick_reply_shortcut_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_8
    return-void
.end method
