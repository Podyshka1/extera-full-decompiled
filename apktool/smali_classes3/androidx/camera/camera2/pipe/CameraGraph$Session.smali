.class public interface abstract Landroidx/camera/camera2/pipe/CameraGraph$Session;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraControls3A;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Session"
.end annotation


# virtual methods
.method public abstract lock3A--tS25XM(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;IJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract lock3AForCapture(ZZIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract startRepeating(Landroidx/camera/camera2/pipe/Request;)V
.end method

.method public abstract stopRepeating()V
.end method

.method public abstract submit(Ljava/util/List;)V
.end method

.method public abstract unlock3A(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function1;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract unlock3APostCapture(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method
