.class public Lorg/telegram/tgnet/TLRPC$TL_notifyChats;
.super Lorg/telegram/tgnet/TLRPC$NotifyPeer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_notifyChats"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 970
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$NotifyPeer;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x3ff8313d

    .line 974
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
