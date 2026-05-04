.class public Lorg/telegram/tgnet/TLRPC$TL_updatePinnedForumTopics;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updatePinnedForumTopics"
.end annotation


# instance fields
.field public flags:I

.field public order:Ljava/util/ArrayList;

.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34847
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    .line 34852
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedForumTopics;->order:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 34855
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedForumTopics;->flags:I

    .line 34856
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedForumTopics;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 34857
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedForumTopics;->flags:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34858
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeInt(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedForumTopics;->order:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x210ebc30

    .line 34863
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34864
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedForumTopics;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34865
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedForumTopics;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 34866
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedForumTopics;->flags:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34867
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedForumTopics;->order:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
