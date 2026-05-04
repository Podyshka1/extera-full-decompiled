.class public final Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion;

    invoke-direct {v0}, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion;-><init>()V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion;->$$INSTANCE:Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createSessionConfigBuilder(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Size;Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolution"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dynamicRange"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    move-result v0

    new-instance v1, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion$createSessionConfigBuilder$deferrableSurface$1;

    invoke-direct {v1, p2, v0}, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion$createSessionConfigBuilder$deferrableSurface$1;-><init>(Landroid/util/Size;I)V

    .line 78
    sget-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->Companion:Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;

    invoke-virtual {v0, p1}, Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;->getFeatureGroupUseCaseType(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/featuregroup/impl/UseCaseType;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/featuregroup/impl/UseCaseType;->getSurfaceClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v1, v0}, Landroidx/camera/core/impl/DeferrableSurface;->setContainerClass(Ljava/lang/Class;)V

    .line 82
    :cond_0
    invoke-static {p1, p2}, Landroidx/camera/core/impl/SessionConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object p1

    .line 83
    invoke-virtual {p1, v1, p3}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object p1

    const-string p2, "addSurface(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
