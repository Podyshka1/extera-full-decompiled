.class final Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$Element;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/coroutines/PassthroughConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConnectionElement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement$Key;
    }
.end annotation


# static fields
.field public static final Key:Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement$Key;


# instance fields
.field private final connectionWrapper:Landroidx/room/coroutines/PassthroughConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement$Key;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement$Key;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;->Key:Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement$Key;

    return-void
.end method

.method public constructor <init>(Landroidx/room/coroutines/PassthroughConnection;)V
    .locals 1

    const-string v0, "connectionWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;->connectionWrapper:Landroidx/room/coroutines/PassthroughConnection;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-static {p0, p1, p2}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->fold(Lkotlin/coroutines/CoroutineContext$Element;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 0

    .line 68
    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->get(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    return-object p1
.end method

.method public final getConnectionWrapper()Landroidx/room/coroutines/PassthroughConnection;
    .locals 1

    .line 68
    iget-object v0, p0, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;->connectionWrapper:Landroidx/room/coroutines/PassthroughConnection;

    return-object v0
.end method

.method public getKey()Lkotlin/coroutines/CoroutineContext$Key;
    .locals 1

    .line 73
    sget-object v0, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;->Key:Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement$Key;

    return-object v0
.end method

.method public minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 68
    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->minusKey(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 68
    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    return-object p1
.end method
