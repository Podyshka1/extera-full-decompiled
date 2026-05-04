.class public Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_langpack_getStrings"
.end annotation


# instance fields
.field public keys:Ljava/util/ArrayList;

.field public lang_code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61545
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 61549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->keys:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1

    .line 61552
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p2, p3, v0}, Lorg/telegram/tgnet/Vector;->TLDeserialize(Lorg/telegram/tgnet/InputSerializedData;IZLorg/telegram/tgnet/Vector$TLDeserializer;)Lorg/telegram/tgnet/Vector;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x2e1ee318

    .line 61556
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 61557
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->lang_code:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 61558
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->keys:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeString(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
