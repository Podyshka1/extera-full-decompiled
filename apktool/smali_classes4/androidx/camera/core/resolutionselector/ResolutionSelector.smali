.class public final Landroidx/camera/core/resolutionselector/ResolutionSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;
    }
.end annotation


# instance fields
.field private final mAllowedResolutionMode:I

.field private final mAspectRatioStrategy:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

.field private final mResolutionStrategy:Landroidx/camera/core/resolutionselector/ResolutionStrategy;


# direct methods
.method constructor <init>(Landroidx/camera/core/resolutionselector/AspectRatioStrategy;Landroidx/camera/core/resolutionselector/ResolutionStrategy;Landroidx/camera/core/resolutionselector/ResolutionFilter;I)V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Landroidx/camera/core/resolutionselector/ResolutionSelector;->mAspectRatioStrategy:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    .line 142
    iput-object p2, p0, Landroidx/camera/core/resolutionselector/ResolutionSelector;->mResolutionStrategy:Landroidx/camera/core/resolutionselector/ResolutionStrategy;

    .line 144
    iput p4, p0, Landroidx/camera/core/resolutionselector/ResolutionSelector;->mAllowedResolutionMode:I

    return-void
.end method


# virtual methods
.method public getAllowedResolutionMode()I
    .locals 1

    .line 175
    iget v0, p0, Landroidx/camera/core/resolutionselector/ResolutionSelector;->mAllowedResolutionMode:I

    return v0
.end method

.method public getAspectRatioStrategy()Landroidx/camera/core/resolutionselector/AspectRatioStrategy;
    .locals 1

    .line 153
    iget-object v0, p0, Landroidx/camera/core/resolutionselector/ResolutionSelector;->mAspectRatioStrategy:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    return-object v0
.end method

.method public getResolutionFilter()Landroidx/camera/core/resolutionselector/ResolutionFilter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResolutionStrategy()Landroidx/camera/core/resolutionselector/ResolutionStrategy;
    .locals 1

    .line 160
    iget-object v0, p0, Landroidx/camera/core/resolutionselector/ResolutionSelector;->mResolutionStrategy:Landroidx/camera/core/resolutionselector/ResolutionStrategy;

    return-object v0
.end method
