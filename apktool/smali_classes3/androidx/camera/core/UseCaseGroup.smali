.class public final Landroidx/camera/core/UseCaseGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/UseCaseGroup$Builder;
    }
.end annotation


# instance fields
.field private final mEffects:Ljava/util/List;

.field private final mUseCases:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/camera/core/ViewPort;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Landroidx/camera/core/UseCaseGroup;->mUseCases:Ljava/util/List;

    .line 53
    iput-object p3, p0, Landroidx/camera/core/UseCaseGroup;->mEffects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getEffects()Ljava/util/List;
    .locals 1

    .line 74
    iget-object v0, p0, Landroidx/camera/core/UseCaseGroup;->mEffects:Ljava/util/List;

    return-object v0
.end method

.method public getUseCases()Ljava/util/List;
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/camera/core/UseCaseGroup;->mUseCases:Ljava/util/List;

    return-object v0
.end method

.method public getViewPort()Landroidx/camera/core/ViewPort;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
