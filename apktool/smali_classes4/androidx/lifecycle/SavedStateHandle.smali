.class public final Landroidx/lifecycle/SavedStateHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/SavedStateHandle$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/lifecycle/SavedStateHandle$Companion;


# instance fields
.field private impl:Landroidx/lifecycle/internal/SavedStateHandleImpl;

.field private final liveDatas:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/SavedStateHandle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/SavedStateHandle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/lifecycle/SavedStateHandle;->Companion:Landroidx/lifecycle/SavedStateHandle$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->liveDatas:Ljava/util/Map;

    .line 43
    new-instance v0, Landroidx/lifecycle/internal/SavedStateHandleImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroidx/lifecycle/internal/SavedStateHandleImpl;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->impl:Landroidx/lifecycle/internal/SavedStateHandleImpl;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    const-string v0, "initialState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->liveDatas:Ljava/util/Map;

    .line 38
    new-instance v0, Landroidx/lifecycle/internal/SavedStateHandleImpl;

    invoke-direct {v0, p1}, Landroidx/lifecycle/internal/SavedStateHandleImpl;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->impl:Landroidx/lifecycle/internal/SavedStateHandleImpl;

    return-void
.end method


# virtual methods
.method public final savedStateProvider()Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->impl:Landroidx/lifecycle/internal/SavedStateHandleImpl;

    invoke-virtual {v0}, Landroidx/lifecycle/internal/SavedStateHandleImpl;->getSavedStateProvider()Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    move-result-object v0

    return-object v0
.end method
