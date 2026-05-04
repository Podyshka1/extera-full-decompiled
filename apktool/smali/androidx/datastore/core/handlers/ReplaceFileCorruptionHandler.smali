.class public final Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/core/CorruptionHandler;


# instance fields
.field private final produceNewData:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string/jumbo v0, "produceNewData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;->produceNewData:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public handleCorruption(Landroidx/datastore/core/CorruptionException;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 41
    iget-object p2, p0, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;->produceNewData:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
