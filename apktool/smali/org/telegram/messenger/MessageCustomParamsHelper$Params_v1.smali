.class Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessageCustomParamsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Params_v1"
.end annotation


# static fields
.field private static final VERSION:I = 0x1


# instance fields
.field flags:I

.field final message:Lorg/telegram/tgnet/TLRPC$Message;


# direct methods
.method private constructor <init>(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 7

    .line 93
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    .line 94
    iput-object p1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    .line 95
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscription:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    .line 96
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionForce:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    or-int/2addr v1, v3

    iput v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    .line 98
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    or-int/2addr v1, v3

    iput v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    .line 99
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_3
    or-int/2addr v1, v3

    iput v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    .line 100
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v3, :cond_4

    const/16 v3, 0x10

    goto :goto_4

    :cond_4
    move v3, v0

    :goto_4
    or-int/2addr v1, v3

    iput v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    .line 102
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    if-eqz v3, :cond_5

    const/16 v3, 0x20

    goto :goto_5

    :cond_5
    move v3, v0

    :goto_5
    or-int/2addr v1, v3

    iput v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    .line 104
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Message;->errorAllowedPriceStars:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    const/16 v3, 0x40

    goto :goto_6

    :cond_6
    move v3, v0

    :goto_6
    or-int/2addr v1, v3

    iput v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    .line 105
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Message;->errorNewPriceStars:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    const/16 v3, 0x80

    goto :goto_7

    :cond_7
    move v3, v0

    :goto_7
    or-int/2addr v1, v3

    iput v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    .line 107
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedVoiceTranscription:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v3, :cond_8

    const/16 v3, 0x100

    goto :goto_8

    :cond_8
    move v3, v0

    :goto_8
    or-int/2addr v1, v3

    iput v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    .line 109
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Message;->summaryText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v3, :cond_9

    move v3, v2

    goto :goto_9

    :cond_9
    move v3, v0

    :goto_9
    const/16 v4, 0x400

    invoke-static {v1, v4, v3}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    .line 110
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedSummaryText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v3, :cond_a

    move v3, v2

    goto :goto_a

    :cond_a
    move v3, v0

    :goto_a
    const/16 v4, 0x800

    invoke-static {v1, v4, v3}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    .line 111
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedSummaryLanguage:Ljava/lang/String;

    if-eqz p1, :cond_b

    move v0, v2

    :cond_b
    const/16 p1, 0x1000

    invoke-static {v1, p1, v0}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageCustomParamsHelper-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;-><init>(Lorg/telegram/tgnet/TLRPC$Message;)V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 5

    const/4 v0, 0x1

    .line 165
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscription:Ljava/lang/String;

    .line 169
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionForce:Z

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v4

    .line 170
    :goto_1
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->summarizedOpen:Z

    .line 171
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z

    .line 172
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readBool(Z)Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionFinal:Z

    .line 173
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readBool(Z)Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionRated:Z

    .line 174
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionId:J

    .line 176
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readBool(Z)Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->premiumEffectWasPlayed:Z

    .line 178
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    .line 181
    :cond_3
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 182
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    .line 184
    :cond_4
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 185
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 187
    :cond_5
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 188
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/messenger/TranslateController$PollText;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/messenger/TranslateController$PollText;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    .line 190
    :cond_6
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 191
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->errorAllowedPriceStars:J

    .line 193
    :cond_7
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    .line 194
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->errorNewPriceStars:J

    .line 196
    :cond_8
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9

    .line 197
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedVoiceTranscription:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 199
    :cond_9
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 200
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->summaryText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 202
    :cond_a
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 203
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedSummaryText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 205
    :cond_b
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 206
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedSummaryLanguage:Ljava/lang/String;

    :cond_c
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 3

    const/4 v0, 0x1

    .line 116
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 117
    iget-object v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionForce:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    or-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v2, v2, -0x3

    :goto_0
    iput v2, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    .line 118
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->summarizedOpen:Z

    if-eqz v1, :cond_1

    or-int/lit16 v1, v2, 0x200

    goto :goto_1

    :cond_1
    and-int/lit16 v1, v2, -0x201

    :goto_1
    iput v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    .line 119
    invoke-interface {p1, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 120
    iget v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscription:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 123
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    .line 124
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionFinal:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    .line 125
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionRated:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    .line 126
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionId:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 128
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->premiumEffectWasPlayed:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    .line 130
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 133
    :cond_3
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 134
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 136
    :cond_4
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 137
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 139
    :cond_5
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 140
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/TranslateController$PollText;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 143
    :cond_6
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 144
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->errorAllowedPriceStars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 146
    :cond_7
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    .line 147
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->errorNewPriceStars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 149
    :cond_8
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9

    .line 150
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedVoiceTranscription:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 152
    :cond_9
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 153
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->summaryText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 155
    :cond_a
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 156
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedSummaryText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 158
    :cond_b
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 159
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedSummaryLanguage:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_c
    return-void
.end method
