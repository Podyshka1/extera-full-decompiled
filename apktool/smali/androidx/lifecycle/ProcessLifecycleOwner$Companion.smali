.class public final Landroidx/lifecycle/ProcessLifecycleOwner$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ProcessLifecycleOwner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/lifecycle/ProcessLifecycleOwner$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Landroidx/lifecycle/LifecycleOwner;
    .locals 1

    .line 80
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->access$getNewInstance$cp()Landroidx/lifecycle/ProcessLifecycleOwner;

    move-result-object v0

    return-object v0
.end method

.method public final init$lifecycle_process(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->access$getNewInstance$cp()Landroidx/lifecycle/ProcessLifecycleOwner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/ProcessLifecycleOwner;->attach$lifecycle_process(Landroid/content/Context;)V

    return-void
.end method
