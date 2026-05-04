.class public final synthetic Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic f$1:Lkotlinx/coroutines/Deferred;


# direct methods
.method public synthetic constructor <init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lkotlinx/coroutines/Deferred;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$$ExternalSyntheticLambda6;->f$0:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-object p2, p0, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$$ExternalSyntheticLambda6;->f$1:Lkotlinx/coroutines/Deferred;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$$ExternalSyntheticLambda6;->f$0:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$$ExternalSyntheticLambda6;->f$1:Lkotlinx/coroutines/Deferred;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->$r8$lambda$jVJCEkJI0ZZBOGn-an7ETARyhJY(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lkotlinx/coroutines/Deferred;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
