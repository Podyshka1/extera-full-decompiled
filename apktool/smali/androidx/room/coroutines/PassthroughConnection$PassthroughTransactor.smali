.class final Landroidx/room/coroutines/PassthroughConnection$PassthroughTransactor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/room/TransactionScope;
.implements Landroidx/room/coroutines/RawConnectionAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/coroutines/PassthroughConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PassthroughTransactor"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/coroutines/PassthroughConnection;


# direct methods
.method public constructor <init>(Landroidx/room/coroutines/PassthroughConnection;)V
    .locals 0

    .line 157
    iput-object p1, p0, Landroidx/room/coroutines/PassthroughConnection$PassthroughTransactor;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawConnection()Landroidx/sqlite/SQLiteConnection;
    .locals 1

    .line 160
    iget-object v0, p0, Landroidx/room/coroutines/PassthroughConnection$PassthroughTransactor;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    invoke-virtual {v0}, Landroidx/room/coroutines/PassthroughConnection;->getRawConnection()Landroidx/sqlite/SQLiteConnection;

    move-result-object v0

    return-object v0
.end method

.method public usePrepared(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 163
    iget-object v0, p0, Landroidx/room/coroutines/PassthroughConnection$PassthroughTransactor;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/room/coroutines/PassthroughConnection;->usePrepared(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
