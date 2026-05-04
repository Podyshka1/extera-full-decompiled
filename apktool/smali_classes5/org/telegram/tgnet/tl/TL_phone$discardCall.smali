.class public Lorg/telegram/tgnet/tl/TL_phone$discardCall;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "discardCall"
.end annotation


# static fields
.field public static final constructor:I = -0x4d343e40


# instance fields
.field public connection_id:J

.field public duration:I

.field public flags:I

.field public peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

.field public reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

.field public video:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 541
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 552
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x4d343e40

    .line 556
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 557
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->video:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->flags:I

    .line 558
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 559
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 560
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->duration:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 561
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 562
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->connection_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    return-void
.end method
