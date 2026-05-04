.class public final Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraIdListIncorrectException"
.end annotation


# instance fields
.field private final availableCameraCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    iput p2, p0, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;->availableCameraCount:I

    return-void
.end method


# virtual methods
.method public final getAvailableCameraCount()I
    .locals 1

    .line 70
    iget v0, p0, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;->availableCameraCount:I

    return v0
.end method
