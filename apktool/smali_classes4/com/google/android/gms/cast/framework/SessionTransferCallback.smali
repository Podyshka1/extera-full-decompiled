.class public abstract Lcom/google/android/gms/cast/framework/SessionTransferCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onTransferFailed(II)V
.end method

.method public abstract onTransferred(ILcom/google/android/gms/cast/SessionState;)V
.end method

.method public abstract onTransferring(I)V
.end method
