.class public Landroidx/camera/core/impl/MutableStateObservable;
.super Landroidx/camera/core/impl/StateObservable;
.source "SourceFile"


# direct methods
.method private constructor <init>(Ljava/lang/Object;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/impl/StateObservable;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public static withInitialState(Ljava/lang/Object;)Landroidx/camera/core/impl/MutableStateObservable;
    .locals 2

    .line 42
    new-instance v0, Landroidx/camera/core/impl/MutableStateObservable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/camera/core/impl/MutableStateObservable;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method public setState(Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/StateObservable;->updateState(Ljava/lang/Object;)V

    return-void
.end method
