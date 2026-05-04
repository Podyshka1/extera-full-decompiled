.class public interface abstract Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/speech/VoiceRecognitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecognitionProvider"
.end annotation


# virtual methods
.method public abstract downloadModel(Ljava/lang/String;Lcom/exteragram/messenger/speech/VoiceRecognitionController$DownloadModelCallback;)V
.end method

.method public abstract listAvailableModels()Ljava/util/List;
.end method

.method public abstract listDownloadedModels()Ljava/util/List;
.end method

.method public abstract recognize(Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionCallback;)V
.end method

.method public abstract unloadModels()V
.end method
