.class public final Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup$Companion;


# instance fields
.field private final features:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;->Companion:Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1

    const-string v0, "features"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;->features:Ljava/util/Set;

    return-void
.end method

.method public static final resolveFeatureGroup(Landroidx/camera/core/SessionConfig;Landroidx/camera/core/impl/CameraInfoInternal;)Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;
    .locals 1

    sget-object v0, Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;->Companion:Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup$Companion;->resolveFeatureGroup(Landroidx/camera/core/SessionConfig;Landroidx/camera/core/impl/CameraInfoInternal;)Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getFeatures()Ljava/util/Set;
    .locals 1

    .line 35
    iget-object v0, p0, Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;->features:Ljava/util/Set;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResolvedFeatureGroup(features="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;->features:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
