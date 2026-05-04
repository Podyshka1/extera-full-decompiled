.class public final Lokhttp3/Dispatcher$promoteAndExecute$Effects;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/Dispatcher;->promoteAndExecute(Lokhttp3/internal/connection/RealCall$AsyncCall;Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/RealCall$AsyncCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Effects"
.end annotation


# instance fields
.field private final callsToExecute:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/internal/connection/RealCall$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private final idleCallbackToRun:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/connection/RealCall$AsyncCall;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const-string v0, "callsToExecute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->callsToExecute:Ljava/util/List;

    .line 174
    iput-object p2, p0, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->idleCallbackToRun:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final getCallsToExecute()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/internal/connection/RealCall$AsyncCall;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->callsToExecute:Ljava/util/List;

    return-object v0
.end method

.method public final getIdleCallbackToRun()Ljava/lang/Runnable;
    .locals 1

    .line 174
    iget-object v0, p0, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->idleCallbackToRun:Ljava/lang/Runnable;

    return-object v0
.end method
