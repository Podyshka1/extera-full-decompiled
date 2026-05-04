.class public Lorg/telegram/tgnet/TLRPC$TL_help_passportConfig;
.super Lorg/telegram/tgnet/TLRPC$help_PassportConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_help_passportConfig"
.end annotation


# instance fields
.field public countries_langs:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

.field public hash:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54405
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$help_PassportConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 54412
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_passportConfig;->hash:I

    .line 54413
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_passportConfig;->countries_langs:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x5f672951

    .line 54417
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 54418
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_passportConfig;->hash:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 54419
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_passportConfig;->countries_langs:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
