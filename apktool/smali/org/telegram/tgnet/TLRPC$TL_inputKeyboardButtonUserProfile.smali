.class public Lorg/telegram/tgnet/TLRPC$TL_inputKeyboardButtonUserProfile;
.super Lorg/telegram/tgnet/TLRPC$KeyboardButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputKeyboardButtonUserProfile"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19157
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$KeyboardButton;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 19161
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->flags:I

    const/16 v1, 0x400

    .line 19162
    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19163
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonStyle;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonStyle;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->style:Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonStyle;

    .line 19165
    :cond_0
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    .line 19166
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputUser;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 3

    const v0, 0x7d5e07c7

    .line 19170
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 19171
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->flags:I

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->style:Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonStyle;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x400

    invoke-static {v0, v2, v1}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->flags:I

    .line 19172
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 19173
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->flags:I

    invoke-static {v0, v2}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19174
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->style:Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonStyle;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonStyle;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 19176
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 19177
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
