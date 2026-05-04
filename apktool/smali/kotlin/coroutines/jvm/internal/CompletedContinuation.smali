.class public final Lkotlin/coroutines/jvm/internal/CompletedContinuation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/Continuation;


# static fields
.field public static final INSTANCE:Lkotlin/coroutines/jvm/internal/CompletedContinuation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/coroutines/jvm/internal/CompletedContinuation;

    invoke-direct {v0}, Lkotlin/coroutines/jvm/internal/CompletedContinuation;-><init>()V

    sput-object v0, Lkotlin/coroutines/jvm/internal/CompletedContinuation;->INSTANCE:Lkotlin/coroutines/jvm/internal/CompletedContinuation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 127
    const-string v1, "This continuation is already complete"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 130
    const-string v0, "This continuation is already complete"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 133
    const-string v0, "This continuation is already complete"

    return-object v0
.end method
