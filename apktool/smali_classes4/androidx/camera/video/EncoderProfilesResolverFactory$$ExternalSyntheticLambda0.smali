.class public final synthetic Landroidx/camera/video/EncoderProfilesResolverFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/CameraInfo;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/CameraInfo;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/core/CameraInfo;

    iput p2, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$$ExternalSyntheticLambda0;->f$3:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/core/CameraInfo;

    iget v1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$$ExternalSyntheticLambda0;->f$3:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    invoke-static {v0, v1, v2, v3}, Landroidx/camera/video/EncoderProfilesResolverFactory;->$r8$lambda$gbwcZatsf5Q_o66QGWQ27_5iA5w(Landroidx/camera/core/CameraInfo;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/video/EncoderProfilesResolver;

    move-result-object v0

    return-object v0
.end method
