.class Lcom/exteragram/messenger/speech/VoiceRecognitionController$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/exteragram/messenger/ai/network/GenerationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/speech/VoiceRecognitionController$1;->onCompleted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/exteragram/messenger/speech/VoiceRecognitionController$1;

.field final synthetic val$joinedText:Ljava/lang/String;

.field final synthetic val$saveResult:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/speech/VoiceRecognitionController$1;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/exteragram/messenger/speech/VoiceRecognitionController$1$1;->this$1:Lcom/exteragram/messenger/speech/VoiceRecognitionController$1;

    iput-object p2, p0, Lcom/exteragram/messenger/speech/VoiceRecognitionController$1$1;->val$saveResult:Lorg/telegram/messenger/Utilities$Callback;

    iput-object p3, p0, Lcom/exteragram/messenger/speech/VoiceRecognitionController$1$1;->val$joinedText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChunk(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    .line 241
    iget-object p1, p0, Lcom/exteragram/messenger/speech/VoiceRecognitionController$1$1;->val$saveResult:Lorg/telegram/messenger/Utilities$Callback;

    iget-object p2, p0, Lcom/exteragram/messenger/speech/VoiceRecognitionController$1$1;->val$joinedText:Ljava/lang/String;

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/exteragram/messenger/speech/VoiceRecognitionController$1$1;->val$saveResult:Lorg/telegram/messenger/Utilities$Callback;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method
