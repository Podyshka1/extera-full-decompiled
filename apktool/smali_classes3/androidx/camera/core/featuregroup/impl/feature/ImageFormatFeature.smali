.class public final Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;
.super Landroidx/camera/core/featuregroup/GroupableFeature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature$Companion;


# instance fields
.field private final featureTypeInternal:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

.field private final imageCaptureOutputFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;->Companion:Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/camera/core/featuregroup/GroupableFeature;-><init>()V

    iput p1, p0, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;->imageCaptureOutputFormat:I

    .line 29
    sget-object p1, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;->IMAGE_FORMAT:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    iput-object p1, p0, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;->featureTypeInternal:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    return-void
.end method

.method private final getOutputFormatLabel()Ljava/lang/String;
    .locals 2

    .line 36
    iget v0, p0, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;->imageCaptureOutputFormat:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNDEFINED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;->imageCaptureOutputFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37
    :cond_0
    const-string v0, "JPEG_R"

    return-object v0

    .line 38
    :cond_1
    const-string v0, "JPEG"

    return-object v0
.end method


# virtual methods
.method public getFeatureTypeInternal()Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;
    .locals 1

    .line 29
    iget-object v0, p0, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;->featureTypeInternal:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    return-object v0
.end method

.method public final getImageCaptureOutputFormat()I
    .locals 1

    .line 28
    iget v0, p0, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;->imageCaptureOutputFormat:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageFormatFeature(imageCaptureOutputFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;->getOutputFormatLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
