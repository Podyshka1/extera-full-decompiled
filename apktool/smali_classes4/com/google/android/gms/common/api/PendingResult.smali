.class public abstract Lcom/google/android/gms/common/api/PendingResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/PendingResult$StatusListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addStatusListener(Lcom/google/android/gms/common/api/PendingResult$StatusListener;)V
.end method

.method public abstract await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
.end method

.method public abstract cancel()V
.end method

.method public abstract setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
.end method
