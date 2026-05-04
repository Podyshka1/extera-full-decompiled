.class public Lorg/telegram/ui/Components/PipVideoOverlay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/pip/source/IPipSourceDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;,
        Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;,
        Lorg/telegram/ui/Components/PipVideoOverlay$PipVideoViewGroup;
    }
.end annotation


# static fields
.field private static final PIP_X_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field private static final PIP_Y_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field private static instance:Lorg/telegram/ui/Components/PipVideoOverlay;


# instance fields
.field private aspectRatio:Ljava/lang/Float;

.field private bufferProgress:F

.field private canLongClick:Z

.field private consumingChild:Landroid/view/View;

.field private contentFrameLayout:Landroid/widget/FrameLayout;

.field private contentView:Landroid/view/ViewGroup;

.field private controlsAnimator:Landroid/animation/ValueAnimator;

.field private controlsView:Landroid/widget/FrameLayout;

.field private dismissControlsCallback:Ljava/lang/Runnable;

.field private gestureDetector:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

.field private innerView:Landroid/view/View;

.field private isDismissing:Z

.field private isScrollDisallowed:Z

.field private isScrolling:Z

.field private isShowingControls:Z

.field private isVideoCompleted:Z

.field private isVisible:Z

.field private isWebView:Z

.field private longClickCallback:Ljava/lang/Runnable;

.field private longClickStartPoint:[F

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private maxScaleFactor:F

.field private minScaleFactor:F

.field private onSideToDismiss:Z

.field private parentSheet:Lorg/telegram/ui/Components/EmbedBottomSheet;

.field private photoViewer:Lorg/telegram/ui/PhotoViewer;

.field private photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

.field private pipConfig:Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

.field private pipHeight:I

.field private pipSource:Lorg/telegram/messenger/pip/PipSource;

.field public pipTextureView:Landroid/view/TextureView;

.field private pipWidth:I

.field private pipX:F

.field private pipXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private pipY:F

.field private pipYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private placeholderView:Landroid/view/View;

.field private playPauseButton:Landroid/widget/ImageView;

.field private postedDismissControls:Z

.field private progressRunnable:Ljava/lang/Runnable;

.field private scaleFactor:F

.field private scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private seekSpeedDrawable:Lorg/telegram/ui/Components/SeekSpeedDrawable;

.field private videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

.field private videoProgress:F

.field private videoProgressView:Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowManager:Landroid/view/WindowManager;

.field private windowViewSkipRender:Z


# direct methods
.method public static synthetic $r8$lambda$36PBe9XmKPe8wSQ8x0s02DWESI8(Lorg/telegram/ui/Components/PipVideoOverlay;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->onDismissedInternal()V

    return-void
.end method

.method public static synthetic $r8$lambda$8jGLxBMij-CVl1dVaFacfc2F4EU(Lorg/telegram/ui/Components/PipVideoOverlay;)F
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipY:F

    return p0
.end method

.method public static synthetic $r8$lambda$Eb-yuqjtS-DNsZXiM1cTKRWDsQY(Lorg/telegram/ui/Components/PipVideoOverlay;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PipVideoOverlay;->lambda$showInternal$10(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nb8EiEU2pF96vKkzt-8OKaK8dy0(Lorg/telegram/ui/Components/PipVideoOverlay;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->lambda$new$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$O6TCDUBqPYhJigIzkyael9UJjyk(Lorg/telegram/ui/Components/PipVideoOverlay;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/PipVideoOverlay;->lambda$showInternal$8(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$Op4bFPbfcvGm4BhCfu2KtvciLjk(Lorg/telegram/ui/Components/PipVideoOverlay;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$SqeTIAx2Nt1QXh1ssC724WwzzGU(Lorg/telegram/ui/Components/PipVideoOverlay;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->lambda$toggleControls$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T73iSTdJWKrqKwG4fHFr4MqbIKA(Lorg/telegram/ui/Components/PipVideoOverlay;F)V
    .locals 2

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipY:F

    float-to-int p1, p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 79
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-static {p1, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewLayout(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 81
    :catch_0
    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    return-void
.end method

.method public static synthetic $r8$lambda$VozdQr6gdf9oTN1H0adHU7A3Pl8(Lorg/telegram/ui/Components/PipVideoOverlay;F)V
    .locals 2

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipX:F

    float-to-int p1, p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 71
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-static {p1, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewLayout(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 73
    :catch_0
    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    return-void
.end method

.method public static synthetic $r8$lambda$WuZVMb9RZW0wKhVlPCD2ilMsLC0(Landroid/view/View;)V
    .locals 0

    .line 1089
    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->dismissAndDestroy()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZBaA-fHpBa0ZLxpJGyx8xL7YA5M(Lorg/telegram/ui/Components/PipVideoOverlay;)F
    .locals 0

    .line 68
    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipX:F

    return p0
.end method

.method public static synthetic $r8$lambda$rZ5siaN0Dww2Vq0Lo0ZgHikIXL4(Lorg/telegram/ui/Components/PipVideoOverlay;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->lambda$showInternal$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t2e3sTZ7iL_Weez62j-9OKWV3TA(Lorg/telegram/ui/Components/PipVideoOverlay;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/PipVideoOverlay;->lambda$showInternal$7(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbufferProgress(Lorg/telegram/ui/Components/PipVideoOverlay;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->bufferProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcanLongClick(Lorg/telegram/ui/Components/PipVideoOverlay;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->canLongClick:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetconsumingChild(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->consumingChild:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontentFrameLayout(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontentView(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/ViewGroup;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontrolsAnimator(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontrolsView(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdismissControlsCallback(Lorg/telegram/ui/Components/PipVideoOverlay;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->dismissControlsCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgestureDetector(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->gestureDetector:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisDismissing(Lorg/telegram/ui/Components/PipVideoOverlay;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isDismissing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisScrollDisallowed(Lorg/telegram/ui/Components/PipVideoOverlay;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isScrollDisallowed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisScrolling(Lorg/telegram/ui/Components/PipVideoOverlay;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isScrolling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisShowingControls(Lorg/telegram/ui/Components/PipVideoOverlay;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isShowingControls:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisVideoCompleted(Lorg/telegram/ui/Components/PipVideoOverlay;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isVideoCompleted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisWebView(Lorg/telegram/ui/Components/PipVideoOverlay;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isWebView:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlongClickCallback(Lorg/telegram/ui/Components/PipVideoOverlay;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->longClickCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmaxScaleFactor(Lorg/telegram/ui/Components/PipVideoOverlay;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->maxScaleFactor:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetminScaleFactor(Lorg/telegram/ui/Components/PipVideoOverlay;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->minScaleFactor:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetonSideToDismiss(Lorg/telegram/ui/Components/PipVideoOverlay;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->onSideToDismiss:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetphotoViewer(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/PhotoViewer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetphotoViewerWebView(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/PhotoViewerWebView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpipHeight(Lorg/telegram/ui/Components/PipVideoOverlay;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpipWidth(Lorg/telegram/ui/Components/PipVideoOverlay;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpipX(Lorg/telegram/ui/Components/PipVideoOverlay;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpipXSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpipY(Lorg/telegram/ui/Components/PipVideoOverlay;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpipYSpring(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpostedDismissControls(Lorg/telegram/ui/Components/PipVideoOverlay;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->postedDismissControls:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscaleFactor(Lorg/telegram/ui/Components/PipVideoOverlay;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->scaleFactor:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscaleGestureDetector(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/ScaleGestureDetector;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetseekSpeedDrawable(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/SeekSpeedDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->seekSpeedDrawable:Lorg/telegram/ui/Components/SeekSpeedDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoForwardDrawable(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/VideoForwardDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoProgress(Lorg/telegram/ui/Components/PipVideoOverlay;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwindowLayoutParams(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwindowManager(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwindowViewSkipRender(Lorg/telegram/ui/Components/PipVideoOverlay;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowViewSkipRender:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcanLongClick(Lorg/telegram/ui/Components/PipVideoOverlay;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->canLongClick:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputconsumingChild(Lorg/telegram/ui/Components/PipVideoOverlay;Landroid/view/View;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->consumingChild:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcontrolsAnimator(Lorg/telegram/ui/Components/PipVideoOverlay;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisScrollDisallowed(Lorg/telegram/ui/Components/PipVideoOverlay;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isScrollDisallowed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisScrolling(Lorg/telegram/ui/Components/PipVideoOverlay;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isScrolling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisShowingControls(Lorg/telegram/ui/Components/PipVideoOverlay;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isShowingControls:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlongClickStartPoint(Lorg/telegram/ui/Components/PipVideoOverlay;[F)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->longClickStartPoint:[F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputonSideToDismiss(Lorg/telegram/ui/Components/PipVideoOverlay;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->onSideToDismiss:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpipConfig(Lorg/telegram/ui/Components/PipVideoOverlay;Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipConfig:Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpipHeight(Lorg/telegram/ui/Components/PipVideoOverlay;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpipWidth(Lorg/telegram/ui/Components/PipVideoOverlay;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpipX(Lorg/telegram/ui/Components/PipVideoOverlay;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpipY(Lorg/telegram/ui/Components/PipVideoOverlay;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpostedDismissControls(Lorg/telegram/ui/Components/PipVideoOverlay;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->postedDismissControls:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscaleFactor(Lorg/telegram/ui/Components/PipVideoOverlay;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->scaleFactor:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelRewind(Lorg/telegram/ui/Components/PipVideoOverlay;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->cancelRewind()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCurrentPosition(Lorg/telegram/ui/Components/PipVideoOverlay;)J
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mgetDuration(Lorg/telegram/ui/Components/PipVideoOverlay;)J
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mgetPipConfig(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipConfig()Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSuggestedHeight(Lorg/telegram/ui/Components/PipVideoOverlay;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getSuggestedHeight()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSuggestedWidth(Lorg/telegram/ui/Components/PipVideoOverlay;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getSuggestedWidth()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monDismissedInternal(Lorg/telegram/ui/Components/PipVideoOverlay;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->onDismissedInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUpdateRewindProgressUiInternal(Lorg/telegram/ui/Components/PipVideoOverlay;JFZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/PipVideoOverlay;->onUpdateRewindProgressUiInternal(JFZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mseekTo(Lorg/telegram/ui/Components/PipVideoOverlay;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PipVideoOverlay;->seekTo(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoggleControls(Lorg/telegram/ui/Components/PipVideoOverlay;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->toggleControls(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 68
    new-instance v0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    new-instance v1, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda1;-><init>()V

    const-string v3, "pipX"

    invoke-direct {v0, v3, v1, v2}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;)V

    sput-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->PIP_X_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 75
    new-instance v0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    new-instance v1, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda3;-><init>()V

    const-string v3, "pipY"

    invoke-direct {v0, v3, v1, v2}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;)V

    sput-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->PIP_Y_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 86
    new-instance v0, Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f400000    # 0.75f

    .line 88
    iput v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->minScaleFactor:F

    const v0, 0x3fb33333    # 1.4f

    iput v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->maxScaleFactor:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 110
    iput v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->scaleFactor:F

    .line 117
    new-instance v0, Lorg/telegram/ui/Components/VideoForwardDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;-><init>(Z)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    .line 129
    new-instance v0, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->progressRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x2

    .line 152
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->longClickStartPoint:[F

    .line 153
    new-instance v0, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->longClickCallback:Ljava/lang/Runnable;

    .line 156
    new-instance v0, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->dismissControlsCallback:Ljava/lang/Runnable;

    return-void
.end method

.method private cancelRewind()V
    .locals 1

    .line 432
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayerRewinder()Lorg/telegram/messenger/video/VideoPlayerRewinder;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayerRewinder()Lorg/telegram/messenger/video/VideoPlayerRewinder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->cancelRewind()V

    return-void
.end method

.method public static dismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 340
    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->dismiss(Z)V

    return-void
.end method

.method public static dismiss(Z)V
    .locals 2

    .line 344
    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->dismissInternal(ZZ)V

    return-void
.end method

.method public static dismiss(ZZ)V
    .locals 1

    .line 348
    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->dismissInternal(ZZ)V

    return-void
.end method

.method public static dismissAndDestroy()V
    .locals 2

    .line 329
    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iget-object v1, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->parentSheet:Lorg/telegram/ui/Components/EmbedBottomSheet;

    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->destroy()V

    goto :goto_0

    .line 331
    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 332
    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer;->requestAudioFocus(Z)V

    .line 333
    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iget-object v0, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->destroyPhotoViewer()V

    .line 334
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->tryResumePausedAudio()V

    .line 336
    :cond_1
    :goto_0
    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->dismiss()V

    return-void
.end method

.method private dismissInternal(ZZ)V
    .locals 7

    .line 352
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isDismissing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 355
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isDismissing:Z

    .line 357
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 358
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 361
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->postedDismissControls:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 362
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->dismissControlsCallback:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 363
    iput-boolean v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->postedDismissControls:Z

    .line 366
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v1, :cond_3

    .line 367
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 368
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_3
    if-nez p1, :cond_5

    .line 372
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    if-nez p1, :cond_4

    goto :goto_0

    .line 379
    :cond_4
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v3, 0xfa

    .line 380
    invoke-virtual {p1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 381
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 382
    iget-object p2, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v0, [F

    const/4 v4, 0x0

    aput v4, v3, v2

    .line 383
    invoke-static {p2, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v0, [F

    const v5, 0x3dcccccd    # 0.1f

    aput v5, v4, v2

    .line 384
    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v0, [F

    aput v5, v6, v2

    .line 385
    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object p2, v4, v2

    aput-object v1, v4, v0

    const/4 p2, 0x2

    aput-object v3, v4, p2

    .line 382
    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 387
    new-instance p2, Lorg/telegram/ui/Components/PipVideoOverlay$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/PipVideoOverlay$2;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 393
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    .line 374
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->onDismissedInternal()V

    return-void

    .line 376
    :cond_6
    new-instance p1, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private getCurrentPosition()J
    .locals 2

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 215
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method private getDuration()J
    .locals 2

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getVideoDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 235
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 239
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInnerView()Landroid/view/View;
    .locals 1

    .line 428
    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iget-object v0, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->innerView:Landroid/view/View;

    return-object v0
.end method

.method private getPipConfig()Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;
    .locals 4

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipConfig:Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;-><init>(IILorg/telegram/ui/Components/PipVideoOverlay-IA;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipConfig:Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    .line 276
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipConfig:Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    return-object v0
.end method

.method public static getPipRect(ZF)Lorg/telegram/ui/Components/Rect;
    .locals 7

    .line 532
    new-instance v0, Lorg/telegram/ui/Components/Rect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Rect;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    .line 534
    sget-object p1, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iget-boolean v2, p1, Lorg/telegram/ui/Components/PipVideoOverlay;->isVisible:Z

    if-eqz v2, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    .line 553
    :cond_0
    iget p0, p1, Lorg/telegram/ui/Components/PipVideoOverlay;->pipX:F

    iput p0, v0, Lorg/telegram/ui/Components/Rect;->x:F

    .line 554
    iget p0, p1, Lorg/telegram/ui/Components/PipVideoOverlay;->pipY:F

    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float p1, p1

    add-float/2addr p0, p1

    iput p0, v0, Lorg/telegram/ui/Components/Rect;->y:F

    .line 555
    sget-object p0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iget p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipWidth:I

    int-to-float p1, p1

    iput p1, v0, Lorg/telegram/ui/Components/Rect;->width:F

    .line 556
    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipHeight:I

    int-to-float p0, p0

    iput p0, v0, Lorg/telegram/ui/Components/Rect;->height:F

    return-object v0

    .line 535
    :cond_1
    :goto_0
    invoke-direct {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipConfig()Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;->-$$Nest$mgetPipX(Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;)F

    move-result p0

    sget-object p1, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipConfig()Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;->-$$Nest$mgetPipY(Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;)F

    move-result p1

    .line 536
    sget-object v2, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipConfig()Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;->-$$Nest$mgetScaleFactor(Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;)F

    move-result v2

    .line 538
    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->getSuggestedWidth(F)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iput v3, v0, Lorg/telegram/ui/Components/Rect;->width:F

    .line 539
    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->getSuggestedHeight(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/Rect;->height:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, p0, v1

    const/high16 v3, 0x41800000    # 16.0f

    if-eqz v2, :cond_3

    .line 541
    iget v2, v0, Lorg/telegram/ui/Components/Rect;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v2, v4

    add-float/2addr p0, v5

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v6, v5

    div-float/2addr v6, v4

    cmpl-float p0, p0, v6

    if-ltz p0, :cond_2

    int-to-float p0, v5

    sub-float/2addr p0, v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p0, v2

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    int-to-float p0, p0

    :goto_1
    iput p0, v0, Lorg/telegram/ui/Components/Rect;->x:F

    goto :goto_2

    .line 543
    :cond_3
    sget-object p0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    iget v2, v0, Lorg/telegram/ui/Components/Rect;->width:F

    sub-float/2addr p0, v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p0, v2

    iput p0, v0, Lorg/telegram/ui/Components/Rect;->x:F

    :goto_2
    cmpl-float p0, p1, v1

    if-eqz p0, :cond_4

    .line 546
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    int-to-float p0, p0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/Rect;->height:F

    sub-float/2addr v1, v2

    invoke-static {p1, p0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p0

    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float p1, p1

    add-float/2addr p0, p1

    iput p0, v0, Lorg/telegram/ui/Components/Rect;->y:F

    return-object v0

    .line 548
    :cond_4
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr p0, p1

    int-to-float p0, p0

    iput p0, v0, Lorg/telegram/ui/Components/Rect;->y:F

    return-object v0
.end method

.method public static getPipSource()Lorg/telegram/messenger/pip/PipSource;
    .locals 1

    .line 1355
    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPipTextureView()Landroid/view/TextureView;
    .locals 1

    .line 1294
    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipTextureView:Landroid/view/TextureView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getRatio()F
    .locals 3

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->aspectRatio:Ljava/lang/Float;

    if-nez v0, :cond_1

    .line 304
    iget v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->mVideoHeight:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->mVideoWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->aspectRatio:Ljava/lang/Float;

    .line 306
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getSuggestedWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->maxScaleFactor:F

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->aspectRatio:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v1, 0x3ee66666    # 0.45f

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setPlayScaleFactor(F)V

    .line 309
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->aspectRatio:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private getSuggestedHeight()I
    .locals 1

    .line 295
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getRatio()F

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getSuggestedHeight(F)I

    move-result v0

    return v0
.end method

.method private static getSuggestedHeight(F)I
    .locals 1

    .line 299
    invoke-static {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getSuggestedWidth(F)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private getSuggestedWidth()I
    .locals 1

    .line 284
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getRatio()F

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getSuggestedWidth(F)I

    move-result v0

    return v0
.end method

.method private static getSuggestedWidth(F)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    .line 289
    sget-object p0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3eb33333    # 0.35f

    :goto_0
    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    .line 291
    :cond_0
    sget-object p0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3f19999a    # 0.6f

    goto :goto_0
.end method

.method public static isVisible()Z
    .locals 1

    .line 280
    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->isVisible:Z

    return v0
.end method

.method private synthetic lambda$new$4()V
    .locals 5

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getVideoDuration()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgress:F

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getBufferedPosition()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->bufferProgress:F

    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 143
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getDuration()J

    move-result-wide v1

    .line 144
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v3

    long-to-float v3, v3

    long-to-float v1, v1

    div-float/2addr v3, v1

    iput v3, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgress:F

    .line 145
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getBufferedPosition()J

    move-result-wide v2

    long-to-float v0, v2

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->bufferProgress:F

    .line 147
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgressView:Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->progressRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$new$5()V
    .locals 3

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayerRewinder()Lorg/telegram/messenger/video/VideoPlayerRewinder;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewinding:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->dismissControlsCallback:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5dc

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isShowingControls:Z

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->toggleControls(Z)V

    .line 162
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->postedDismissControls:Z

    return-void
.end method

.method private synthetic lambda$showInternal$10(ZLandroid/view/View;)V
    .locals 4

    .line 1100
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1101
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1102
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 1103
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    if-eqz v1, :cond_2

    .line 1106
    sget-boolean p1, Lorg/telegram/ui/LaunchActivity;->isResumed:Z

    if-nez p1, :cond_3

    .line 1107
    :cond_2
    new-instance p1, Lorg/telegram/ui/Components/EmbedBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/EmbedBottomSheet$$ExternalSyntheticLambda6;-><init>(Landroid/view/View;)V

    sput-object p1, Lorg/telegram/ui/LaunchActivity;->onResumeStaticCallback:Ljava/lang/Runnable;

    .line 1109
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    .line 1110
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 1111
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1112
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 1114
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->parentSheet:Lorg/telegram/ui/Components/EmbedBottomSheet;

    if-eqz p1, :cond_4

    .line 1115
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->exitFromPip()V

    return-void

    .line 1116
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-eqz p1, :cond_5

    .line 1117
    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer;->exitFromPip()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$showInternal$11(Landroid/view/View;)V
    .locals 1

    .line 1127
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-nez p1, :cond_0

    goto :goto_0

    .line 1130
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_2

    .line 1131
    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1132
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->pauseVideo()V

    goto :goto_2

    .line 1134
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->playVideo()V

    goto :goto_2

    .line 1137
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    if-nez p1, :cond_3

    :goto_0
    return-void

    .line 1141
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1143
    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    goto :goto_1

    .line 1145
    :cond_4
    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    .line 1147
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PhotoViewer;->requestAudioFocus(Z)V

    .line 1149
    :goto_2
    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->updatePlayButton()V

    return-void
.end method

.method private synthetic lambda$showInternal$7(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 602
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipConfig()Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;->-$$Nest$msetPipX(Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;F)V

    return-void
.end method

.method private synthetic lambda$showInternal$8(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 607
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipConfig()Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;->-$$Nest$msetPipY(Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;F)V

    return-void
.end method

.method private synthetic lambda$toggleControls$6(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 316
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private onDismissedInternal()V
    .locals 2

    .line 399
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :catch_0
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_1

    .line 405
    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->showControls()V

    :cond_1
    const/4 v0, 0x0

    .line 408
    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgressView:Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;

    .line 409
    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->innerView:Landroid/view/View;

    .line 410
    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    .line 411
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    if-eqz v1, :cond_2

    .line 412
    invoke-virtual {v1}, Lorg/telegram/messenger/pip/PipSource;->destroy()V

    .line 413
    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    .line 415
    :cond_2
    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    .line 416
    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->parentSheet:Lorg/telegram/ui/Components/EmbedBottomSheet;

    .line 417
    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->consumingChild:Landroid/view/View;

    const/4 v0, 0x0

    .line 418
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isScrolling:Z

    .line 419
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isVisible:Z

    .line 420
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isDismissing:Z

    .line 421
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->canLongClick:Z

    .line 423
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->cancelRewind()V

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->longClickCallback:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onRewindCanceled()V
    .locals 1

    .line 166
    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->onRewindCanceledInternal()V

    return-void
.end method

.method private onRewindCanceledInternal()V
    .locals 2

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setShowing(Z)V

    return-void
.end method

.method public static onRewindStart(Z)V
    .locals 1

    .line 192
    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->onRewindStartInternal(Z)V

    return-void
.end method

.method private onRewindStartInternal(Z)V
    .locals 2

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setOneShootAnimation(Z)V

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setLeftSide(Z)V

    .line 198
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setShowing(Z)V

    .line 199
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgressView:Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;

    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 202
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public static onUpdateRewindProgressUi(JFZ)V
    .locals 1

    .line 174
    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/Components/PipVideoOverlay;->onUpdateRewindProgressUiInternal(JFZ)V

    return-void
.end method

.method private onUpdateRewindProgressUiInternal(JFZ)V
    .locals 2

    .line 178
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setTime(J)V

    if-eqz p4, :cond_1

    .line 180
    iput p3, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgress:F

    .line 182
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgressView:Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;

    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 185
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public static onVideoCompleted()V
    .locals 1

    .line 471
    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->onVideoCompletedInternal()V

    return-void
.end method

.method private onVideoCompletedInternal()V
    .locals 3

    .line 475
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgressView:Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 478
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isVideoCompleted:Z

    const/4 v2, 0x0

    .line 479
    iput v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgress:F

    .line 480
    iput v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->bufferProgress:F

    if-eqz v0, :cond_1

    .line 482
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 485
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->updatePlayButtonInternal()V

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->progressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 487
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isShowingControls:Z

    if-nez v0, :cond_2

    .line 488
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->toggleControls(Z)V

    .line 489
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->dismissControlsCallback:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private seekTo(J)V
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/PhotoViewerWebView;->seekTo(J)V

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 227
    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    return-void
.end method

.method public static setBufferedProgress(F)V
    .locals 1

    .line 494
    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iput p0, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->bufferProgress:F

    .line 495
    iget-object p0, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgressView:Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;

    if-eqz p0, :cond_0

    .line 496
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public static setParentSheet(Lorg/telegram/ui/Components/EmbedBottomSheet;)V
    .locals 1

    .line 501
    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iput-object p0, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->parentSheet:Lorg/telegram/ui/Components/EmbedBottomSheet;

    return-void
.end method

.method public static setPhotoViewer(Lorg/telegram/ui/PhotoViewer;)V
    .locals 5

    .line 505
    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iput-object p0, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    .line 506
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    .line 508
    sget-object v1, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iget-object v1, v1, Lorg/telegram/ui/Components/PipVideoOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    if-eqz v1, :cond_0

    .line 509
    invoke-virtual {v1}, Lorg/telegram/messenger/pip/PipSource;->destroy()V

    .line 510
    sget-object v1, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/telegram/ui/Components/PipVideoOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    :cond_0
    if-eqz v0, :cond_1

    .line 514
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/pip/utils/PipUtils;->checkPermissions(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 515
    sget-object v1, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    new-instance v3, Lorg/telegram/messenger/pip/PipSource$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    sget-object v4, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {v3, p0, v4}, Lorg/telegram/messenger/pip/PipSource$Builder;-><init>(Landroid/app/Activity;Lorg/telegram/messenger/pip/source/IPipSourceDelegate;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "photo-viewer-pip-"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lorg/telegram/ui/Components/VideoPlayer;->playerId:I

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 516
    invoke-virtual {v3, p0}, Lorg/telegram/messenger/pip/PipSource$Builder;->setTagPrefix(Ljava/lang/String;)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object p0

    .line 517
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/pip/PipSource$Builder;->setPriority(I)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object p0

    const/high16 v3, 0x41200000    # 10.0f

    .line 518
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/pip/PipSource$Builder;->setCornerRadius(I)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object p0

    sget-object v3, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iget-object v3, v3, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    .line 519
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/pip/PipSource$Builder;->setContentView(Landroid/view/View;)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object p0

    sget-object v3, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iget-object v3, v3, Lorg/telegram/ui/Components/PipVideoOverlay;->placeholderView:Landroid/view/View;

    .line 520
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/pip/PipSource$Builder;->setPlaceholderView(Landroid/view/View;)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object p0

    sget-object v3, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iget v4, v3, Lorg/telegram/ui/Components/PipVideoOverlay;->mVideoWidth:I

    iget v3, v3, Lorg/telegram/ui/Components/PipVideoOverlay;->mVideoHeight:I

    .line 521
    invoke-virtual {p0, v4, v3}, Lorg/telegram/messenger/pip/PipSource$Builder;->setContentRatio(II)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object p0

    iget-object v0, v0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 522
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/pip/PipSource$Builder;->setPlayer(Lcom/google/android/exoplayer2/Player;)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object p0

    .line 523
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/pip/PipSource$Builder;->setNeedMediaSession(Z)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object p0

    .line 524
    invoke-virtual {p0}, Lorg/telegram/messenger/pip/PipSource$Builder;->build()Lorg/telegram/messenger/pip/PipSource;

    move-result-object p0

    iput-object p0, v1, Lorg/telegram/ui/Components/PipVideoOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    .line 528
    :cond_1
    sget-object p0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->updatePlayButtonInternal()V

    return-void
.end method

.method public static show(ZLandroid/app/Activity;Landroid/view/View;II)Z
    .locals 6

    const/4 v5, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 561
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/PipVideoOverlay;->show(ZLandroid/app/Activity;Landroid/view/View;IIZ)Z

    move-result p0

    return p0
.end method

.method public static show(ZLandroid/app/Activity;Landroid/view/View;IIZ)Z
    .locals 7

    const/4 v2, 0x0

    move v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 565
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/PipVideoOverlay;->show(ZLandroid/app/Activity;Lorg/telegram/ui/Components/PhotoViewerWebView;Landroid/view/View;IIZ)Z

    move-result p0

    return p0
.end method

.method public static show(ZLandroid/app/Activity;Lorg/telegram/ui/Components/PhotoViewerWebView;Landroid/view/View;IIZ)Z
    .locals 8

    .line 569
    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    move v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/PipVideoOverlay;->showInternal(ZLandroid/app/Activity;Landroid/view/View;Lorg/telegram/ui/Components/PhotoViewerWebView;IIZ)Z

    move-result p0

    return p0
.end method

.method private showInternal(ZLandroid/app/Activity;Landroid/view/View;Lorg/telegram/ui/Components/PhotoViewerWebView;IIZ)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    .line 573
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v4}, Lorg/telegram/messenger/pip/utils/PipUtils;->checkPermissions(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    .line 575
    :goto_1
    iget-boolean v5, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->isVisible:Z

    if-eqz v5, :cond_2

    return v3

    .line 578
    :cond_2
    iput-boolean v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->isVisible:Z

    move/from16 v5, p5

    .line 580
    iput v5, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->mVideoWidth:I

    move/from16 v5, p6

    .line 581
    iput v5, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->mVideoHeight:I

    const/4 v5, 0x0

    .line 582
    iput-object v5, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->aspectRatio:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 583
    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->isControllable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 584
    iput-object v1, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    .line 585
    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->hideControls()V

    goto :goto_2

    .line 587
    :cond_3
    iput-object v5, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    .line 590
    :goto_2
    invoke-direct {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipConfig()Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;->-$$Nest$mgetPipX(Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;)F

    move-result v1

    invoke-direct {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipConfig()Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;->-$$Nest$mgetPipY(Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;)F

    move-result v5

    .line 591
    invoke-direct {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipConfig()Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;->-$$Nest$mgetScaleFactor(Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;)F

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->scaleFactor:F

    .line 593
    invoke-direct {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getSuggestedWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->scaleFactor:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipWidth:I

    .line 594
    invoke-direct {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getSuggestedHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->scaleFactor:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipHeight:I

    .line 595
    iput-boolean v3, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->isShowingControls:Z

    .line 598
    new-instance v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v7, Lorg/telegram/ui/Components/PipVideoOverlay;->PIP_X_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v6, v0, v7}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v7, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v7}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v8, 0x3f400000    # 0.75f

    .line 600
    invoke-virtual {v7, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v7

    const v9, 0x44228000    # 650.0f

    .line 601
    invoke-virtual {v7, v9}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v7

    .line 599
    invoke-virtual {v6, v7}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda8;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    .line 602
    invoke-virtual {v6, v7}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v6

    check-cast v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v6, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 603
    new-instance v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v7, Lorg/telegram/ui/Components/PipVideoOverlay;->PIP_Y_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v6, v0, v7}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v7, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v7}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 605
    invoke-virtual {v7, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v7

    .line 606
    invoke-virtual {v7, v9}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v7

    .line 604
    invoke-virtual {v6, v7}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda9;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    .line 607
    invoke-virtual {v6, v7}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v6

    check-cast v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v6, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v4, :cond_4

    move-object/from16 v6, p2

    goto :goto_3

    .line 609
    :cond_4
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    .line 610
    :goto_3
    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    .line 611
    new-instance v8, Landroid/view/ScaleGestureDetector;

    new-instance v9, Lorg/telegram/ui/Components/PipVideoOverlay$3;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/PipVideoOverlay$3;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    invoke-direct {v8, v6, v9}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 699
    invoke-virtual {v8, v3}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 701
    iget-object v8, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v8, v3}, Landroid/view/ScaleGestureDetector;->setStylusScaleEnabled(Z)V

    .line 703
    new-instance v8, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    new-instance v9, Lorg/telegram/ui/Components/PipVideoOverlay$4;

    invoke-direct {v9, v0, v7}, Lorg/telegram/ui/Components/PipVideoOverlay$4;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;I)V

    invoke-direct {v8, v6, v9}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$OnGestureListener;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->gestureDetector:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    .line 889
    new-instance v7, Lorg/telegram/ui/Components/PipVideoOverlay$5;

    invoke-direct {v7, v0, v6}, Lorg/telegram/ui/Components/PipVideoOverlay$5;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    .line 998
    new-instance v7, Lorg/telegram/ui/Components/PipVideoOverlay$6;

    invoke-direct {v7, v0, v6}, Lorg/telegram/ui/Components/PipVideoOverlay$6;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    .line 1022
    iget-object v8, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1023
    iget-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    new-instance v8, Lorg/telegram/ui/Components/PipVideoOverlay$7;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/PipVideoOverlay$7;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1029
    iget-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 1030
    iget-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBar:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    move-object/from16 v7, p3

    .line 1032
    iput-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->innerView:Landroid/view/View;

    .line 1033
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1034
    iget-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->innerView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->innerView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1036
    :cond_5
    iget-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    iget-object v8, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->innerView:Landroid/view/View;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1037
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->placeholderView:Landroid/view/View;

    .line 1038
    iget-object v8, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v8, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1040
    iget-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    new-instance v8, Lorg/telegram/ui/Components/PipVideoOverlay$8;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/PipVideoOverlay$8;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setDelegate(Lorg/telegram/ui/Components/VideoForwardDrawable$VideoForwardDrawableDelegate;)V

    .line 1049
    new-instance v7, Lorg/telegram/ui/Components/PipVideoOverlay$9;

    invoke-direct {v7, v0, v6}, Lorg/telegram/ui/Components/PipVideoOverlay$9;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    .line 1073
    new-instance v7, Lorg/telegram/ui/Components/SeekSpeedDrawable;

    iget-object v8, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    invoke-static {v8}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda10;

    invoke-direct {v11, v8}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda10;-><init>(Landroid/widget/FrameLayout;)V

    invoke-direct {v7, v11, v2, v3}, Lorg/telegram/ui/Components/SeekSpeedDrawable;-><init>(Ljava/lang/Runnable;ZZ)V

    iput-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->seekSpeedDrawable:Lorg/telegram/ui/Components/SeekSpeedDrawable;

    .line 1074
    iget-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1075
    iget-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1076
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v11, 0x4c000000    # 3.3554432E7f

    .line 1077
    invoke-virtual {v7, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1078
    iget-object v11, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v11, v7, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v7, 0x41000000    # 8.0f

    .line 1080
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    .line 1084
    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1085
    sget v12, Lorg/telegram/messenger/R$drawable;->pip_video_close:I

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1086
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v13, v14}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1087
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v15

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1088
    invoke-virtual {v11, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1089
    new-instance v15, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda11;

    invoke-direct {v15}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {v11, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1090
    iget-object v15, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    move/from16 v23, v3

    const/16 v3, 0x26

    int-to-float v2, v3

    const/4 v3, 0x4

    int-to-float v3, v3

    const/16 v22, 0x0

    const/16 v18, 0x5

    const/16 v19, 0x0

    move/from16 v21, v3

    move/from16 v17, v2

    move/from16 v20, v3

    const/16 v16, 0x26

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v15, v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1092
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1093
    sget v3, Lorg/telegram/messenger/R$drawable;->pip_video_expand:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1094
    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3, v14}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1095
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1096
    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1097
    new-instance v3, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda12;

    invoke-direct {v3, v0, v4}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;Z)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1121
    iget-object v3, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    const/16 v7, 0x30

    int-to-float v7, v7

    move/from16 v21, v7

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    move/from16 v11, v16

    invoke-virtual {v3, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1123
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->playPauseButton:Landroid/widget/ImageView;

    .line 1124
    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3, v14}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1125
    iget-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->playPauseButton:Landroid/widget/ImageView;

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1126
    iget-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->playPauseButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda13;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1151
    iget-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->innerView:Landroid/view/View;

    instance-of v3, v2, Landroid/webkit/WebView;

    if-nez v3, :cond_7

    instance-of v2, v2, Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v2, v23

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v2, 0x1

    :goto_5
    iput-boolean v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->isWebView:Z

    .line 1152
    iget-object v3, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->playPauseButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_9

    iget-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerWebView;->isControllable()Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    const/16 v2, 0x8

    goto :goto_6

    :cond_9
    move/from16 v2, v23

    :goto_6
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1153
    iget-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->playPauseButton:Landroid/widget/ImageView;

    const/16 v7, 0x11

    invoke-static {v11, v11, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1155
    new-instance v2, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;

    invoke-direct {v2, v0, v6}, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgressView:Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;

    .line 1156
    iget-object v3, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1158
    iget-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v4, :cond_a

    move-object/from16 v2, p2

    goto :goto_7

    .line 1160
    :cond_a
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    :goto_7
    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowManager:Landroid/view/WindowManager;

    .line 1162
    invoke-static {v6, v4}, Lorg/telegram/messenger/pip/utils/PipUtils;->createWindowLayoutParams(Landroid/content/Context;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 1163
    iget v3, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipWidth:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1164
    iget v4, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipHeight:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    cmpl-float v4, v1, v10

    const/high16 v6, 0x41800000    # 16.0f

    if-eqz v4, :cond_c

    int-to-float v4, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    add-float/2addr v1, v4

    .line 1166
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v9, v4

    div-float/2addr v9, v7

    cmpl-float v1, v1, v9

    if-ltz v1, :cond_b

    sub-int/2addr v4, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v4, v1

    int-to-float v1, v4

    goto :goto_8

    :cond_b
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    :goto_8
    iput v1, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipX:F

    float-to-int v1, v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_9

    .line 1168
    :cond_c
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipX:F

    float-to-int v1, v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_9
    cmpl-float v1, v5, v10

    if-eqz v1, :cond_d

    .line 1171
    iget-object v1, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v5, v2, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipY:F

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_a

    .line 1173
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipY:F

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1175
    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/16 v2, 0x208

    .line 1176
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1178
    iget-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v3, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    if-eqz p7, :cond_e

    .line 1181
    iget-object v1, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    iget-object v3, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    goto :goto_b

    .line 1183
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1184
    iget-object v1, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1185
    iget-object v1, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1186
    iget-object v1, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    iget-object v3, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1188
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v2, 0xfa

    .line 1189
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1190
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1191
    iget-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v23

    .line 1192
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v4, [F

    aput v6, v7, v23

    .line 1193
    invoke-static {v3, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v4, [F

    aput v6, v8, v23

    .line 1194
    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v2, v6, v23

    aput-object v3, v6, v4

    const/4 v2, 0x2

    aput-object v5, v6, v2

    .line 1191
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1196
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :goto_b
    return v4
.end method

.method private toggleControls(Z)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const/4 p1, 0x2

    .line 313
    new-array p1, p1, [F

    const/4 v1, 0x0

    aput v2, p1, v1

    const/4 v1, 0x1

    aput v0, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsAnimator:Landroid/animation/ValueAnimator;

    .line 314
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 315
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 319
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/PipVideoOverlay$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PipVideoOverlay$1;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 325
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static updatePlayButton()V
    .locals 1

    .line 438
    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->updatePlayButtonInternal()V

    return-void
.end method

.method private updatePlayButtonInternal()V
    .locals 3

    .line 442
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->playPauseButton:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_1

    .line 447
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v1, :cond_1

    .line 448
    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->isPlaying()Z

    move-result v0

    goto :goto_0

    .line 450
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 455
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    .line 457
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->progressRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-nez v0, :cond_4

    .line 459
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isVideoCompleted:Z

    if-eqz v0, :cond_3

    .line 460
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->playPauseButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->pip_replay_large:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 462
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->playPauseButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->pip_play_large:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 465
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->playPauseButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->pip_pause_large:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 466
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->progressRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method protected onLongClick()V
    .locals 14

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_5

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isDismissing:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isVideoCompleted:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isScrolling:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->canLongClick:Z

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 248
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v2

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->longClickStartPoint:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getSuggestedWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->scaleFactor:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    cmpl-float v0, v0, v3

    const/4 v7, 0x1

    if-ltz v0, :cond_2

    move v3, v7

    goto :goto_0

    :cond_2
    move v3, v1

    .line 251
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getCurrentPosition()J

    move-result-wide v4

    .line 252
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getDuration()J

    move-result-wide v8

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v10

    if-eqz v0, :cond_5

    const-wide/16 v4, 0x3a98

    cmp-long v0, v8, v4

    if-gez v0, :cond_3

    goto :goto_2

    .line 257
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_4

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayerRewinder()Lorg/telegram/messenger/video/VideoPlayerRewinder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->longClickStartPoint:[F

    aget v11, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getCurrentVideoSpeed()F

    move-result v12

    iget-object v13, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->seekSpeedDrawable:Lorg/telegram/ui/Components/SeekSpeedDrawable;

    move v10, v3

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->startRewind(Lorg/telegram/ui/Components/PhotoViewerWebView;ZFFLorg/telegram/ui/Components/SeekSpeedDrawable;)V

    goto :goto_1

    .line 260
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayerRewinder()Lorg/telegram/messenger/video/VideoPlayerRewinder;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->longClickStartPoint:[F

    aget v4, v4, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer;->getCurrentVideoSpeed()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->seekSpeedDrawable:Lorg/telegram/ui/Components/SeekSpeedDrawable;

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->startRewind(Lorg/telegram/ui/Components/VideoPlayer;ZFFLorg/telegram/ui/Components/SeekSpeedDrawable;)V

    .line 263
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isShowingControls:Z

    if-nez v0, :cond_5

    .line 264
    iput-boolean v7, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isShowingControls:Z

    invoke-direct {p0, v7}, Lorg/telegram/ui/Components/PipVideoOverlay;->toggleControls(Z)V

    .line 265
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->postedDismissControls:Z

    if-nez v0, :cond_5

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->dismissControlsCallback:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5dc

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 267
    iput-boolean v7, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->postedDismissControls:Z

    :cond_5
    :goto_2
    return-void
.end method

.method public pipCreatePictureInPictureView()Landroid/view/View;
    .locals 2

    .line 1313
    new-instance v0, Landroid/view/TextureView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipTextureView:Landroid/view/TextureView;

    const/4 v1, 0x4

    .line 1314
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1315
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 1316
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipTextureView:Landroid/view/TextureView;

    new-instance v1, Lorg/telegram/ui/Components/PipVideoOverlay$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PipVideoOverlay$10;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1340
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method public pipCreatePictureInPictureViewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1360
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1364
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pipCreatePrimaryWindowViewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1304
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->changedTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1308
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->changedTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pipHidePrimaryWindowView(Ljava/lang/Runnable;)V
    .locals 1

    .line 1345
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    iput-object p1, v0, Lorg/telegram/ui/PhotoViewer;->pipFirstFrameCallback:Ljava/lang/Runnable;

    .line 1349
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-interface {p1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 1350
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowViewSkipRender:Z

    .line 1351
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public pipIsAvailable()Z
    .locals 1

    .line 1299
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->pipIsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic pipRenderBackground(Landroid/graphics/Canvas;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/pip/source/IPipSourceDelegate$-CC;->$default$pipRenderBackground(Lorg/telegram/messenger/pip/source/IPipSourceDelegate;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public synthetic pipRenderForeground(Landroid/graphics/Canvas;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/pip/source/IPipSourceDelegate$-CC;->$default$pipRenderForeground(Lorg/telegram/messenger/pip/source/IPipSourceDelegate;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public pipShowPrimaryWindowView(Ljava/lang/Runnable;)V
    .locals 3

    .line 1369
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/pip/PipSource;->params:Lorg/telegram/messenger/pip/utils/PipSourceParams;

    invoke-virtual {v0}, Lorg/telegram/messenger/pip/utils/PipSourceParams;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1370
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    iget-object v1, v1, Lorg/telegram/messenger/pip/PipSource;->params:Lorg/telegram/messenger/pip/utils/PipSourceParams;

    invoke-virtual {v1}, Lorg/telegram/messenger/pip/utils/PipSourceParams;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1371
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    iget-object v1, v1, Lorg/telegram/messenger/pip/PipSource;->params:Lorg/telegram/messenger/pip/utils/PipSourceParams;

    invoke-virtual {v1}, Lorg/telegram/messenger/pip/utils/PipSourceParams;->getHeight()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1374
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 1375
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowViewSkipRender:Z

    .line 1376
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1378
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 1383
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    iput-object p1, v0, Lorg/telegram/ui/PhotoViewer;->pipFirstFrameCallback:Ljava/lang/Runnable;

    return-void
.end method
