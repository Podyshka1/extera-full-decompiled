.class Lretrofit2/BuiltInFactories;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/BuiltInFactories$Java8;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method createDefaultCallAdapterFactories(Ljava/util/concurrent/Executor;)Ljava/util/List;
    .locals 1

    .line 30
    new-instance v0, Lretrofit2/DefaultCallAdapterFactory;

    invoke-direct {v0, p1}, Lretrofit2/DefaultCallAdapterFactory;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method createDefaultConverterFactories()Ljava/util/List;
    .locals 1

    .line 34
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method
