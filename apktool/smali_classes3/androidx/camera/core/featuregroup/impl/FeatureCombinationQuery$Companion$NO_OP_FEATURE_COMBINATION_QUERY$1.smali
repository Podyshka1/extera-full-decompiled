.class public final Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion$NO_OP_FEATURE_COMBINATION_QUERY$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupported(Landroidx/camera/core/impl/SessionConfig;)Z
    .locals 1

    const-string/jumbo v0, "sessionConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
