.class public interface abstract Lcom/google/mlkit/vision/label/ImageLabeler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$MultiFlavorDetector;
.implements Lcom/google/android/gms/common/api/OptionalModuleApi;


# virtual methods
.method public abstract close()V
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation
.end method

.method public abstract process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;
.end method
