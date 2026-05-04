.class public Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/internal/CameraUseCaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigPair"
.end annotation


# instance fields
.field mCameraConfig:Landroidx/camera/core/impl/UseCaseConfig;

.field mExtendedConfig:Landroidx/camera/core/impl/UseCaseConfig;


# direct methods
.method constructor <init>(Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/UseCaseConfig;)V
    .locals 0

    .line 1101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1102
    iput-object p1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;->mExtendedConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 1103
    iput-object p2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;->mCameraConfig:Landroidx/camera/core/impl/UseCaseConfig;

    return-void
.end method
