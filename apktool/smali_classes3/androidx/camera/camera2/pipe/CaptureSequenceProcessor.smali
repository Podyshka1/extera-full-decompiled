.class public interface abstract Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract abortCaptures()V
.end method

.method public abstract build(ZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;Ljava/util/List;)Landroidx/camera/camera2/pipe/CaptureSequence;
.end method

.method public abstract shutdown(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract stopRepeating()V
.end method

.method public abstract submit(Landroidx/camera/camera2/pipe/CaptureSequence;)Ljava/lang/Integer;
.end method
