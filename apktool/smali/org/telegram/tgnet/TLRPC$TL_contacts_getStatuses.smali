.class public Lorg/telegram/tgnet/TLRPC$TL_contacts_getStatuses;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_contacts_getStatuses"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55442
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1

    .line 55446
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getStatuses$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_getStatuses$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p2, p3, v0}, Lorg/telegram/tgnet/Vector;->TLDeserialize(Lorg/telegram/tgnet/InputSerializedData;IZLorg/telegram/tgnet/Vector$TLDeserializer;)Lorg/telegram/tgnet/Vector;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x3b5cac12

    .line 55450
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
