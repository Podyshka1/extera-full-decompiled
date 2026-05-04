.class public Lorg/telegram/tgnet/TLRPC$TL_help_countriesList;
.super Lorg/telegram/tgnet/TLRPC$help_CountriesList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_help_countriesList"
.end annotation


# instance fields
.field public countries:Ljava/util/ArrayList;

.field public hash:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22057
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$help_CountriesList;-><init>()V

    .line 22060
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_countriesList;->countries:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 22064
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_countriesList$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_countriesList$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_countriesList;->countries:Ljava/util/ArrayList;

    .line 22065
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_countriesList;->hash:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x782f8a62

    .line 22069
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 22070
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_countriesList;->countries:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 22071
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_countriesList;->hash:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
