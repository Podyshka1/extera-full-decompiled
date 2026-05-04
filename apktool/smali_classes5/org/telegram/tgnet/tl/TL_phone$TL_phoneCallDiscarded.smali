.class public Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallDiscarded;
.super Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_phoneCallDiscarded"
.end annotation


# static fields
.field public static final constructor:I = 0x50ca4de1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 315
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 319
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->flags:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 320
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->need_rating:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 321
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->need_debug:Z

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_2

    move v2, v3

    .line 322
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->video:Z

    .line 323
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    .line 324
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 325
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 327
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 328
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->duration:I

    :cond_4
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x50ca4de1

    .line 333
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 334
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->need_rating:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->flags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->flags:I

    and-int/lit8 v0, v0, -0x5

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->flags:I

    .line 335
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->need_debug:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x9

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->flags:I

    .line 336
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->video:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x40

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x41

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->flags:I

    .line 337
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 338
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 339
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 340
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 342
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 343
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->duration:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_4
    return-void
.end method
