.class public Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;
.super Lorg/telegram/tgnet/TLRPC$messages_BotResults;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_botResults"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37810
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$messages_BotResults;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 37819
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 37820
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->gallery:Z

    .line 37821
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->query_id:J

    .line 37822
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 37823
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->next_offset:Ljava/lang/String;

    .line 37825
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 37826
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->switch_pm:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    .line 37828
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 37829
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->switch_webview:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    .line 37831
    :cond_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    .line 37832
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->cache_time:I

    .line 37833
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x1fde0d0a

    .line 37837
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 37838
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->gallery:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->flags:I

    .line 37839
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 37840
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->query_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 37841
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 37842
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->next_offset:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 37844
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 37845
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->switch_pm:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 37847
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 37848
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->switch_webview:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 37850
    :cond_3
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 37851
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->cache_time:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 37852
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->users:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
