.class public Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback_layer223;
.super Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_keyboardButtonCallback_layer223"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19261
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 19265
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 19266
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->requires_password:Z

    .line 19267
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    .line 19268
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x35bbdb6b

    .line 19272
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 19273
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->requires_password:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->flags:I

    .line 19274
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 19275
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 19276
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    return-void
.end method
