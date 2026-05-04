.class public Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsGiftOptions;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_payments_getStarsGiftOptions"
.end annotation


# static fields
.field public static final constructor:I = -0x2c369438


# instance fields
.field public flags:I

.field public user_id:Lorg/telegram/tgnet/TLRPC$InputUser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3724
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1

    .line 3731
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsGiftOptions$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsGiftOptions$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p2, p3, v0}, Lorg/telegram/tgnet/Vector;->TLDeserialize(Lorg/telegram/tgnet/InputSerializedData;IZLorg/telegram/tgnet/Vector$TLDeserializer;)Lorg/telegram/tgnet/Vector;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x2c369438

    .line 3735
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3736
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsGiftOptions;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3737
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsGiftOptions;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3738
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsGiftOptions;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_0
    return-void
.end method
