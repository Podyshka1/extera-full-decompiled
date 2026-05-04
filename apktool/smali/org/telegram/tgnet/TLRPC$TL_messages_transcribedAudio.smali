.class public Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_transcribedAudio"
.end annotation


# instance fields
.field public flags:I

.field public pending:Z

.field public text:Ljava/lang/String;

.field public transcription_id:J

.field public trial_remains_num:I

.field public trial_remains_until_date:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;
    .locals 2

    const v0, -0x304626a9

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;-><init>()V

    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->pending:Z

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->transcription_id:J

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->text:Ljava/lang/String;

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->trial_remains_num:I

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->trial_remains_until_date:I

    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x304626a9

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->pending:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->transcription_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->text:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->trial_remains_num:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->trial_remains_until_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_1
    return-void
.end method
