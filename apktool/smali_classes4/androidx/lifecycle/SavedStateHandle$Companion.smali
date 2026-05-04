.class public final Landroidx/lifecycle/SavedStateHandle$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/SavedStateHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/lifecycle/SavedStateHandle$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createHandle(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandle;
    .locals 0

    if-nez p1, :cond_0

    move-object p1, p2

    :cond_0
    if-nez p1, :cond_1

    .line 212
    new-instance p1, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {p1}, Landroidx/lifecycle/SavedStateHandle;-><init>()V

    return-object p1

    .line 218
    :cond_1
    const-class p2, Landroidx/lifecycle/SavedStateHandle;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 90
    invoke-static {p1}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 220
    invoke-static {p1}, Landroidx/savedstate/SavedStateReader;->toMap-impl(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p1

    new-instance p2, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {p2, p1}, Landroidx/lifecycle/SavedStateHandle;-><init>(Ljava/util/Map;)V

    return-object p2
.end method
