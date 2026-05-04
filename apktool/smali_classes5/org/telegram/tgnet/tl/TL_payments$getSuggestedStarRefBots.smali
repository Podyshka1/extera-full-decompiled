.class public Lorg/telegram/tgnet/tl/TL_payments$getSuggestedStarRefBots;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_payments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getSuggestedStarRefBots"
.end annotation


# static fields
.field public static final constructor:I = 0xd6b48f7


# instance fields
.field public flags:I

.field public limit:I

.field public offset:Ljava/lang/String;

.field public order_by_date:Z

.field public order_by_revenue:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 210
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_payments$suggestedStarRefBots;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_payments$suggestedStarRefBots;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0xd6b48f7

    .line 215
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 216
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_payments$getSuggestedStarRefBots;->order_by_revenue:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_payments$getSuggestedStarRefBots;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_payments$getSuggestedStarRefBots;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_payments$getSuggestedStarRefBots;->flags:I

    .line 217
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_payments$getSuggestedStarRefBots;->order_by_date:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_payments$getSuggestedStarRefBots;->flags:I

    .line 218
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 219
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_payments$getSuggestedStarRefBots;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 220
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_payments$getSuggestedStarRefBots;->offset:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 221
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_payments$getSuggestedStarRefBots;->limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
