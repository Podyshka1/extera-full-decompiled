.class public Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;
.super Lorg/telegram/tgnet/TLRPC$MessageAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageActionConferenceCall"
.end annotation


# instance fields
.field public active:Z

.field public call_id:J

.field public duration:I

.field public flags:I

.field public missed:Z

.field public other_participants:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageAction;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->other_participants:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->missed:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->active:Z

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->video:Z

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->call_id:J

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->duration:I

    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_found$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_found$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->other_participants:Ljava/util/ArrayList;

    :cond_4
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x2ffe2f7a

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->missed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->active:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->video:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x10

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x11

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->call_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->duration:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->other_participants:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_4
    return-void
.end method
