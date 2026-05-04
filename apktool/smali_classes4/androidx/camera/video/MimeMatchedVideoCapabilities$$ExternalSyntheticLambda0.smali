.class public final synthetic Landroidx/camera/video/MimeMatchedVideoCapabilities$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

.field public final synthetic f$1:Landroidx/camera/video/MimeMatchedVideoCapabilities;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;Landroidx/camera/video/MimeMatchedVideoCapabilities;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    iput-object p2, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities$$ExternalSyntheticLambda0;->f$1:Landroidx/camera/video/MimeMatchedVideoCapabilities;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    iget-object v1, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities$$ExternalSyntheticLambda0;->f$1:Landroidx/camera/video/MimeMatchedVideoCapabilities;

    invoke-static {v0, v1}, Landroidx/camera/video/MimeMatchedVideoCapabilities;->$r8$lambda$n5XMUnTC0mYqj_QZDJcpYORFhXc(Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;Landroidx/camera/video/MimeMatchedVideoCapabilities;)Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;

    move-result-object v0

    return-object v0
.end method
