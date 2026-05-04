.class public Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;
.super Lorg/telegram/tgnet/TLRPC$PageBlock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_pageBlockTable"
.end annotation


# instance fields
.field public bordered:Z

.field public flags:I

.field public rows:Ljava/util/ArrayList;

.field public striped:Z

.field public title:Lorg/telegram/tgnet/TLRPC$RichText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30377
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PageBlock;-><init>()V

    .line 30384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->rows:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 30387
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 30388
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->bordered:Z

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v2, v3

    .line 30389
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->striped:Z

    .line 30390
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$RichText;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->title:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 30391
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->rows:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x40b2157e

    .line 30395
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 30396
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->bordered:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->flags:I

    .line 30397
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->striped:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->flags:I

    .line 30398
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 30399
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->title:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 30400
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->rows:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
