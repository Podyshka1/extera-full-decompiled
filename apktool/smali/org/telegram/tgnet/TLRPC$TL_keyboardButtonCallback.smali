.class public Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;
.super Lorg/telegram/tgnet/TLRPC$KeyboardButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_keyboardButtonCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19235
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$KeyboardButton;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 19239
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->flags:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 19240
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->requires_password:Z

    const/16 v1, 0x400

    .line 19241
    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19242
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonStyle;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonStyle;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->style:Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonStyle;

    .line 19244
    :cond_1
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    .line 19245
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 3

    const v0, -0x19d436a0

    .line 19249
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 19250
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->requires_password:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->flags:I

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->flags:I

    .line 19251
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->style:Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonStyle;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x400

    invoke-static {v0, v2, v1}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->flags:I

    .line 19252
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 19253
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->flags:I

    invoke-static {v0, v2}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19254
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->style:Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonStyle;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonStyle;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 19256
    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 19257
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    return-void
.end method
