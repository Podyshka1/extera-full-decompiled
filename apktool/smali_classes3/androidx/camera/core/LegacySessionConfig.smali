.class public final Landroidx/camera/core/LegacySessionConfig;
.super Landroidx/camera/core/SessionConfig;
.source "SourceFile"


# instance fields
.field private final isLegacy:Z

.field private final requireNonEmptyUseCases:Z


# direct methods
.method public constructor <init>(Landroidx/camera/core/UseCaseGroup;)V
    .locals 2

    const-string/jumbo v0, "useCaseGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    invoke-virtual {p1}, Landroidx/camera/core/UseCaseGroup;->getUseCases()Ljava/util/List;

    move-result-object v0

    const-string v1, "getUseCases(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/camera/core/UseCaseGroup;->getViewPort()Landroidx/camera/core/ViewPort;

    invoke-virtual {p1}, Landroidx/camera/core/UseCaseGroup;->getEffects()Ljava/util/List;

    move-result-object p1

    const-string v1, "getEffects(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroidx/camera/core/LegacySessionConfig;-><init>(Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;)V
    .locals 10

    const-string/jumbo v0, "useCases"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effects"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x38

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 451
    invoke-direct/range {v1 .. v9}, Landroidx/camera/core/SessionConfig;-><init>(Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;Landroid/util/Range;Ljava/util/Set;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p1, 0x1

    .line 457
    iput-boolean p1, v1, Landroidx/camera/core/LegacySessionConfig;->isLegacy:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 455
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 452
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/core/LegacySessionConfig;-><init>(Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getRequireNonEmptyUseCases()Z
    .locals 1

    .line 458
    iget-boolean v0, p0, Landroidx/camera/core/LegacySessionConfig;->requireNonEmptyUseCases:Z

    return v0
.end method

.method public isLegacy()Z
    .locals 1

    .line 457
    iget-boolean v0, p0, Landroidx/camera/core/LegacySessionConfig;->isLegacy:Z

    return v0
.end method
