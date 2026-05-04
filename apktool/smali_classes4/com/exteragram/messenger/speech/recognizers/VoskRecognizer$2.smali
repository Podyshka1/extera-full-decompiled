.class Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/vosk/android/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->recognize(Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;

.field final synthetic val$callback:Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionCallback;

.field final synthetic val$recognizer:Lorg/vosk/Recognizer;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionCallback;Lorg/vosk/Recognizer;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$2;->this$0:Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;

    iput-object p2, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$2;->val$callback:Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionCallback;

    iput-object p3, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$2;->val$recognizer:Lorg/vosk/Recognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 301
    const-string v0, "Failed to recognize"

    invoke-static {v0, p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    iget-object v0, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$2;->val$callback:Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionCallback;

    invoke-interface {v0, p1}, Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionCallback;->onError(Ljava/lang/Exception;)V

    .line 303
    iget-object p1, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$2;->val$recognizer:Lorg/vosk/Recognizer;

    invoke-virtual {p1}, Lorg/vosk/Recognizer;->close()V

    return-void
.end method

.method public onFinalResult(Ljava/lang/String;)V
    .locals 2

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Final result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 292
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->GSON:Lcom/google/gson/Gson;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 293
    const-string v0, "text"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$2;->val$callback:Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionCallback;

    invoke-interface {v0, p1}, Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionCallback;->onCompleted(Ljava/lang/String;)V

    .line 296
    iget-object p1, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$2;->val$recognizer:Lorg/vosk/Recognizer;

    invoke-virtual {p1}, Lorg/vosk/Recognizer;->close()V

    return-void
.end method

.method public onPartialResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 282
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->GSON:Lcom/google/gson/Gson;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 283
    const-string v0, "text"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$2;->val$callback:Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionCallback;

    invoke-interface {v0, p1}, Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionCallback;->onChunk(Ljava/lang/String;)V

    return-void
.end method

.method public onTimeout()V
    .locals 0

    return-void
.end method
