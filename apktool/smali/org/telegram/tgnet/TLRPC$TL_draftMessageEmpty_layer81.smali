.class public Lorg/telegram/tgnet/TLRPC$TL_draftMessageEmpty_layer81;
.super Lorg/telegram/tgnet/TLRPC$TL_draftMessageEmpty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_draftMessageEmpty_layer81"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 399
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_draftMessageEmpty;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x45b4513b

    .line 403
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
