.class public Lorg/telegram/tgnet/tl/TL_account$getAllSecureValues;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getAllSecureValues"
.end annotation


# static fields
.field public static final constructor:I = -0x4d774383


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1237
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1

    .line 1242
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$authorizationForm$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$authorizationForm$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p2, p3, v0}, Lorg/telegram/tgnet/Vector;->TLDeserialize(Lorg/telegram/tgnet/InputSerializedData;IZLorg/telegram/tgnet/Vector$TLDeserializer;)Lorg/telegram/tgnet/Vector;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x4d774383

    .line 1246
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
