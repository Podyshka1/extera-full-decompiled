.class public Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;
.super Lorg/telegram/tgnet/TLRPC$PageListOrderedItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_pageListOrderedItemBlocks"
.end annotation


# instance fields
.field public blocks:Ljava/util/ArrayList;

.field public num:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46982
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PageListOrderedItem;-><init>()V

    .line 46986
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;->blocks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 46989
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;->num:Ljava/lang/String;

    .line 46990
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_page$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_page$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;->blocks:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x672276ca

    .line 46994
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 46995
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;->num:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 46996
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;->blocks:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
