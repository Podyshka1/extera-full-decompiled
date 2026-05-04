.class public Lorg/telegram/tgnet/TLRPC$TL_messages_dialogFilters;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_dialogFilters"
.end annotation


# instance fields
.field public filters:Ljava/util/ArrayList;

.field public flags:I

.field public tags_enabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59414
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 59419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogFilters;->filters:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_dialogFilters;
    .locals 2

    const v0, 0x2ad93719

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 59422
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogFilters;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogFilters;-><init>()V

    .line 59423
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogFilters;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogFilters;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 59427
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogFilters;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 59428
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogFilters;->tags_enabled:Z

    .line 59429
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogFilters$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogFilters$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogFilters;->filters:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x2ad93719

    .line 59433
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59434
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogFilters;->tags_enabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogFilters;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogFilters;->flags:I

    and-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogFilters;->flags:I

    .line 59435
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59436
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogFilters;->filters:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
