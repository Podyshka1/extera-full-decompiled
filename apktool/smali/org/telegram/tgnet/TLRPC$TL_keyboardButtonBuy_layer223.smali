.class public Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy_layer223;
.super Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_keyboardButtonBuy_layer223"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19144
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 0

    .line 19148
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x5026c045

    .line 19152
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 19153
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
