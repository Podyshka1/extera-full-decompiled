.class public final L_COROUTINE/ArtificialStackFrames;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final coroutineBoundary()Ljava/lang/StackTraceElement;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-class v1, L_COROUTINE/_BOUNDARY;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, L_COROUTINE/CoroutineDebuggingKt;->access$artificialFrame(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method
