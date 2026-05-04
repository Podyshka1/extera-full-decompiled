.class public Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_topPeerCategoryPeers"
.end annotation


# instance fields
.field public category:Lorg/telegram/tgnet/TLRPC$TopPeerCategory;

.field public count:I

.field public peers:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18489
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 18494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->peers:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;
    .locals 2

    const v0, -0x47cbd6f

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 18497
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;-><init>()V

    .line 18498
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 18502
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TopPeerCategory;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TopPeerCategory;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->category:Lorg/telegram/tgnet/TLRPC$TopPeerCategory;

    .line 18503
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->count:I

    .line 18504
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->peers:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x47cbd6f

    .line 18508
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 18509
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->category:Lorg/telegram/tgnet/TLRPC$TopPeerCategory;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 18510
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 18511
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->peers:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
