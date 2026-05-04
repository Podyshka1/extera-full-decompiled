.class public Lorg/telegram/tgnet/TLRPC$TL_pageBlockList_layer82;
.super Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_pageBlockList_layer82"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61725
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 61729
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->ordered:Z

    .line 61730
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    const v1, 0x1cb5c415

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 61733
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string/jumbo p2, "wrong Vector magic, got %x"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61737
    :cond_1
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 61739
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$RichText;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 61743
    :cond_2
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;-><init>()V

    .line 61744
    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 61745
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 3

    const v0, 0x3a58c7f4

    .line 61750
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 61751
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->ordered:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    const v0, 0x1cb5c415

    .line 61752
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 61753
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 61754
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 61756
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;

    .line 61757
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
