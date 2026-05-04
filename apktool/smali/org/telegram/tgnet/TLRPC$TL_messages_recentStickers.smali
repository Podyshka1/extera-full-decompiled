.class public Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;
.super Lorg/telegram/tgnet/TLRPC$messages_RecentStickers;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_recentStickers"
.end annotation


# instance fields
.field public dates:Ljava/util/ArrayList;

.field public hash:J

.field public packs:Ljava/util/ArrayList;

.field public stickers:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54003
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$messages_RecentStickers;-><init>()V

    .line 54007
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;->packs:Ljava/util/ArrayList;

    .line 54008
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;->stickers:Ljava/util/ArrayList;

    .line 54009
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;->dates:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 54012
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;->hash:J

    .line 54013
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_favedStickers$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_favedStickers$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;->packs:Ljava/util/ArrayList;

    .line 54014
    new-instance v0, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;->stickers:Ljava/util/ArrayList;

    .line 54015
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeInt(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;->dates:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x772c83aa

    .line 54019
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 54020
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;->hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 54021
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;->packs:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 54022
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;->stickers:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 54023
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;->dates:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
