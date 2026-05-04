.class public Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;
.super Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_decryptedMessageMediaEmpty"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40508
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x89f5c4a

    .line 40512
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
