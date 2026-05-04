.class final Lretrofit2/KotlinExtensions$suspendAndThrow$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/KotlinExtensions;->suspendAndThrow(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlin/coroutines/Continuation;

.field final synthetic $this_suspendAndThrow:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lretrofit2/KotlinExtensions$suspendAndThrow$2$1;->$continuation:Lkotlin/coroutines/Continuation;

    iput-object p2, p0, Lretrofit2/KotlinExtensions$suspendAndThrow$2$1;->$this_suspendAndThrow:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 121
    iget-object v0, p0, Lretrofit2/KotlinExtensions$suspendAndThrow$2$1;->$continuation:Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p0, Lretrofit2/KotlinExtensions$suspendAndThrow$2$1;->$this_suspendAndThrow:Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
