.class public Lorg/telegram/tgnet/TLRPC$TL_reactionEmpty;
.super Lorg/telegram/tgnet/TLRPC$Reaction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_reactionEmpty"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55014
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Reaction;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x79f5d419

    .line 55018
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
