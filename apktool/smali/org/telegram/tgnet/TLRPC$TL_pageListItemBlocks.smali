.class public Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;
.super Lorg/telegram/tgnet/TLRPC$PageListItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_pageListItemBlocks"
.end annotation


# instance fields
.field public blocks:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53468
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PageListItem;-><init>()V

    .line 53471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;->blocks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 53474
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_page$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_page$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;->blocks:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x25e073fc    # 3.89364E-16f

    .line 53478
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53479
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;->blocks:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
