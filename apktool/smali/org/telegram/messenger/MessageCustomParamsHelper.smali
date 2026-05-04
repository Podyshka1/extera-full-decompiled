.class public Lorg/telegram/messenger/MessageCustomParamsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyParams(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscription:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscription:Ljava/lang/String;

    .line 36
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z

    .line 37
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionFinal:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionFinal:Z

    .line 38
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionForce:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionForce:Z

    .line 39
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionRated:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionRated:Z

    .line 40
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionId:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionId:J

    .line 41
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->premiumEffectWasPlayed:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->premiumEffectWasPlayed:Z

    .line 42
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    .line 45
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 46
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->errorAllowedPriceStars:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->errorAllowedPriceStars:J

    .line 47
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->errorNewPriceStars:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->errorNewPriceStars:J

    .line 48
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->translatedVoiceTranscription:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedVoiceTranscription:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 49
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->summarizedOpen:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->summarizedOpen:Z

    .line 50
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->summaryText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->summaryText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 51
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->translatedSummaryText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedSummaryText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 52
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->translatedSummaryLanguage:Ljava/lang/String;

    iput-object p0, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedSummaryLanguage:Ljava/lang/String;

    return-void
.end method

.method public static isEmpty(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 4

    .line 12
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscription:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->translatedVoiceTranscription:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->summarizedOpen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->summaryText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->translatedSummaryLanguage:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->translatedSummaryText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionFinal:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionRated:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionForce:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->premiumEffectWasPlayed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->errorAllowedPriceStars:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->errorNewPriceStars:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static readLocalParams(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/NativeByteBuffer;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 60
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 64
    new-instance v1, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageCustomParamsHelper-IA;)V

    .line 69
    invoke-virtual {v1, p1, v0}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    return-void

    .line 67
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t read params version = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeLocalParams(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/NativeByteBuffer;
    .locals 3

    .line 73
    invoke-static {p0}, Lorg/telegram/messenger/MessageCustomParamsHelper;->isEmpty(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 76
    :cond_0
    new-instance v0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageCustomParamsHelper-IA;)V

    .line 78
    :try_start_0
    new-instance p0, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 79
    invoke-virtual {v0, p0}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method
