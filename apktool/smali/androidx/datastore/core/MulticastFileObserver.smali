.class public final Landroidx/datastore/core/MulticastFileObserver;
.super Landroid/os/FileObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/core/MulticastFileObserver$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/datastore/core/MulticastFileObserver$Companion;

.field private static final LOCK:Ljava/lang/Object;

.field private static final fileObservers:Ljava/util/Map;


# instance fields
.field private final delegates:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/datastore/core/MulticastFileObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/datastore/core/MulticastFileObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/datastore/core/MulticastFileObserver;->Companion:Landroidx/datastore/core/MulticastFileObserver$Companion;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/datastore/core/MulticastFileObserver;->LOCK:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Landroidx/datastore/core/MulticastFileObserver;->fileObservers:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x80

    .line 40
    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p1, p0, Landroidx/datastore/core/MulticastFileObserver;->path:Ljava/lang/String;

    .line 48
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroidx/datastore/core/MulticastFileObserver;->delegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroidx/datastore/core/MulticastFileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getDelegates$p(Landroidx/datastore/core/MulticastFileObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/datastore/core/MulticastFileObserver;->delegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static final synthetic access$getFileObservers$cp()Ljava/util/Map;
    .locals 1

    .line 37
    sget-object v0, Landroidx/datastore/core/MulticastFileObserver;->fileObservers:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getLOCK$cp()Ljava/lang/Object;
    .locals 1

    .line 37
    sget-object v0, Landroidx/datastore/core/MulticastFileObserver;->LOCK:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1

    .line 50
    iget-object p1, p0, Landroidx/datastore/core/MulticastFileObserver;->delegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 51
    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
