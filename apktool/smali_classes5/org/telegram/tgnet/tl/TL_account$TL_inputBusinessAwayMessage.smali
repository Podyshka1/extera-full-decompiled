.class public Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessAwayMessage;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputBusinessAwayMessage"
.end annotation


# static fields
.field public static final constructor:I = -0x7cde8a20


# instance fields
.field public flags:I

.field public offline_only:Z

.field public recipients:Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;

.field public schedule:Lorg/telegram/tgnet/tl/TL_account$BusinessAwayMessageSchedule;

.field public shortcut_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2498
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 2509
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessAwayMessage;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2510
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessAwayMessage;->offline_only:Z

    .line 2511
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessAwayMessage;->shortcut_id:I

    .line 2512
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$BusinessAwayMessageSchedule;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$BusinessAwayMessageSchedule;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessAwayMessage;->schedule:Lorg/telegram/tgnet/tl/TL_account$BusinessAwayMessageSchedule;

    .line 2513
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessAwayMessage;->recipients:Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x7cde8a20

    .line 2518
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2519
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessAwayMessage;->offline_only:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessAwayMessage;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessAwayMessage;->flags:I

    and-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessAwayMessage;->flags:I

    .line 2520
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2521
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessAwayMessage;->shortcut_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2522
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessAwayMessage;->schedule:Lorg/telegram/tgnet/tl/TL_account$BusinessAwayMessageSchedule;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 2523
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessAwayMessage;->recipients:Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
