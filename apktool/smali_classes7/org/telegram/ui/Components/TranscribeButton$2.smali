.class Lorg/telegram/ui/Components/TranscribeButton$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TranscribeButton;->transcribeLocally(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/RequestDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$hashCode:Ljava/lang/Long;

.field final synthetic val$onComplete:Lorg/telegram/tgnet/RequestDelegate;


# direct methods
.method constructor <init>(Ljava/lang/Long;Lorg/telegram/tgnet/RequestDelegate;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton$2;->val$hashCode:Ljava/lang/Long;

    iput-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton$2;->val$onComplete:Lorg/telegram/tgnet/RequestDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChunk(Ljava/lang/String;)V
    .locals 3

    .line 796
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;-><init>()V

    .line 797
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->text:Ljava/lang/String;

    const/4 p1, 0x1

    .line 798
    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->pending:Z

    .line 799
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton$2;->val$hashCode:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->transcription_id:J

    .line 800
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton$2;->val$onComplete:Lorg/telegram/tgnet/RequestDelegate;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public onCompleted(Ljava/lang/String;)V
    .locals 3

    .line 805
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;-><init>()V

    .line 806
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->text:Ljava/lang/String;

    const/4 p1, 0x0

    .line 807
    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->pending:Z

    .line 808
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton$2;->val$hashCode:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->transcription_id:J

    .line 809
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton$2;->val$onComplete:Lorg/telegram/tgnet/RequestDelegate;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 814
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    .line 815
    const-string v0, "RECOGNIZE_FAILED"

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 816
    iget-object v0, p0, Lorg/telegram/ui/Components/TranscribeButton$2;->val$onComplete:Lorg/telegram/tgnet/RequestDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public onLanguageNotDownloaded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLanguageNotSupported(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
