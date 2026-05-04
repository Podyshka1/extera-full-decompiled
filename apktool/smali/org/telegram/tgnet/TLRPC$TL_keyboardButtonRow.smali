.class public Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_keyboardButtonRow"
.end annotation


# instance fields
.field public buttons:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19923
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 19926
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    .locals 2

    const v0, 0x77608b83

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 19929
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;-><init>()V

    .line 19930
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 19934
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x77608b83

    .line 19938
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 19939
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
