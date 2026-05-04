.class final Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/SntpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NtpTimeCallback"
.end annotation


# instance fields
.field private final callback:Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;)V
    .locals 0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;->callback:Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;

    return-void
.end method


# virtual methods
.method public onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 0

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 0

    .line 317
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;->callback:Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;

    if-eqz p1, :cond_1

    .line 318
    invoke-static {}, Lcom/google/android/exoplayer2/util/SntpClient;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    .line 321
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;->callback:Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/util/ConcurrentModificationException;

    invoke-direct {p3}, Ljava/util/ConcurrentModificationException;-><init>()V

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;->onInitializationFailed(Ljava/io/IOException;)V

    return-void

    .line 323
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;->callback:Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;->onInitialized()V

    :cond_1
    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .locals 0

    .line 341
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;->callback:Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;

    if-eqz p1, :cond_0

    .line 342
    invoke-interface {p1, p6}, Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;->onInitializationFailed(Ljava/io/IOException;)V

    .line 344
    :cond_0
    sget-object p1, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    return-object p1
.end method
