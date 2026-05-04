.class public Lorg/telegram/tgnet/TLRPC$TL_updatePinnedForumTopic;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updatePinnedForumTopic"
.end annotation


# instance fields
.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public pinned:Z

.field public topic_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34872
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 34880
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    const/4 v1, 0x1

    .line 34881
    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedForumTopic;->pinned:Z

    .line 34882
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedForumTopic;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 34883
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedForumTopic;->topic_id:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 3

    const v0, 0x683b2c52

    .line 34887
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    const/4 v0, 0x1

    .line 34889
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedForumTopic;->pinned:Z

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    .line 34890
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34891
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedForumTopic;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 34892
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedForumTopic;->topic_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
