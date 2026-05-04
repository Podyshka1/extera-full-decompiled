.class final Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfoInternal$2$message$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfoInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0

    iput-object p1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfoInternal$2$message$1$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0

    .line 243
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfoInternal$2$message$1$1;->run(Ljava/lang/String;)V

    return-void
.end method

.method public final run(Ljava/lang/String;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfoInternal$2$message$1$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
