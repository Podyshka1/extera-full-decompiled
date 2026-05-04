.class public Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisallowedGiftsSettings"
.end annotation


# instance fields
.field public disallow_limited_stargifts:Z

.field public disallow_premium_gifts:Z

.field public disallow_stargifts_from_channels:Z

.field public disallow_unique_stargifts:Z

.field public disallow_unlimited_stargifts:Z

.field public flags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9262
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;
    .locals 2

    const v0, 0x71f276c4

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 9273
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;-><init>()V

    .line 9274
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 9279
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->flags:I

    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 9280
    :goto_0
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unlimited_stargifts:Z

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    .line 9281
    :goto_1
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_limited_stargifts:Z

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v0

    .line 9282
    :goto_2
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_3

    move p2, v1

    goto :goto_3

    :cond_3
    move p2, v0

    .line 9283
    :goto_3
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_premium_gifts:Z

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_4

    move v0, v1

    .line 9284
    :cond_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_stargifts_from_channels:Z

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x71f276c4

    .line 9289
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 9290
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unlimited_stargifts:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->flags:I

    .line 9291
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_limited_stargifts:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->flags:I

    .line 9292
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->flags:I

    .line 9293
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_premium_gifts:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->flags:I

    .line 9294
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_stargifts_from_channels:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x10

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x11

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->flags:I

    .line 9295
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
