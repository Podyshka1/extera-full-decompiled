.class public Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_langPackDifference"
.end annotation


# instance fields
.field public from_version:I

.field public lang_code:Ljava/lang/String;

.field public strings:Ljava/util/ArrayList;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4035
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 4041
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->strings:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;
    .locals 2

    const v0, -0xc7a3e0a

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4044
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;-><init>()V

    .line 4045
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 4049
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->lang_code:Ljava/lang/String;

    .line 4050
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->from_version:I

    .line 4051
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->version:I

    .line 4052
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->strings:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0xc7a3e0a

    .line 4056
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4057
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->lang_code:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 4058
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->from_version:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4059
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->version:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4060
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->strings:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
