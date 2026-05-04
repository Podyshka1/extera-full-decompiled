.class public Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_groupCallParticipantVideo"
.end annotation


# instance fields
.field public audio_source:I

.field public endpoint:Ljava/lang/String;

.field public flags:I

.field public paused:Z

.field public source_groups:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28322
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 28328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;
    .locals 2

    const v0, 0x67753ac8

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 28332
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;-><init>()V

    .line 28333
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 28337
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 28338
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->paused:Z

    .line 28339
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->endpoint:Ljava/lang/String;

    .line 28340
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    .line 28341
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 28342
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->audio_source:I

    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x67753ac8

    .line 28347
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 28348
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->paused:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->flags:I

    .line 28349
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 28350
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->endpoint:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 28351
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 28352
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 28353
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->audio_source:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_1
    return-void
.end method
