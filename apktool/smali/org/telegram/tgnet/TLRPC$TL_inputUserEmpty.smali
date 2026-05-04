.class public Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;
.super Lorg/telegram/tgnet/TLRPC$InputUser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputUserEmpty"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18569
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputUser;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x46777931

    .line 18573
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
