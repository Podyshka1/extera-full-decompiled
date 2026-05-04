.class public final Landroidx/camera/camera2/impl/DisplayInfoManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/impl/DisplayInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/impl/DisplayInfoManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Landroidx/camera/camera2/impl/DisplayInfoManager;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Landroidx/camera/camera2/impl/DisplayInfoManager;->access$getInstance$cp()Landroidx/camera/camera2/impl/DisplayInfoManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    invoke-static {}, Landroidx/camera/camera2/impl/DisplayInfoManager;->access$getInstance$cp()Landroidx/camera/camera2/impl/DisplayInfoManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Landroidx/camera/camera2/impl/DisplayInfoManager;

    invoke-static {p1}, Landroidx/camera/core/impl/utils/ContextUtil;->getPersistentApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "getPersistentApplicationContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/camera/camera2/impl/DisplayInfoManager;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 105
    invoke-static {v0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->access$setInstance$cp(Landroidx/camera/camera2/impl/DisplayInfoManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 102
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    return-object v0
.end method
