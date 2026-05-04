.class final Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;
.super Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$OnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)V
    .locals 0

    .line 1307
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$OnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Lorg/telegram/ui/Stories/recorder/StoryRecorder-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)V

    return-void
.end method


# virtual methods
.method public hasDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1468
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetawaitingPlayer(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->isInited()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgettakingPhoto(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetrecordControl(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->isTouch()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetqrLinkView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetqrLinkView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->inTouch()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$misGalleryOpen(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetgalleryListViewOpening(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1444
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetawaitingPlayer(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgettakingPhoto(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->isInited()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetmode(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 1447
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->switchCamera()V

    .line 1448
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetrecordControl(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object p1

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->rotateFlip(F)V

    .line 1449
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isFrontface()Z

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$msaveCameraFace(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 1450
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$museDisplayFlashlight(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1451
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetflashViews(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/FlashViews;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashIn(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1453
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetflashViews(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/FlashViews;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashOut()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1460
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1461
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->clearTapFocus()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1310
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->-$$Nest$fputsty(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)V

    .line 1311
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->-$$Nest$fputstx(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)V

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 1400
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetopenCloseAnimator(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetopenCloseAnimator(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_f

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetqrLinkView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetqrLinkView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->inTouch()Z

    move-result p1

    if-nez p1, :cond_f

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetrecordControl(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->isTouch()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->isDualTouch()Z

    move-result p1

    if-nez p1, :cond_f

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->-$$Nest$fgetscaling(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetzoomControlView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/ZoomControlView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetzoomControlView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/ZoomControlView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ZoomControlView;->isTouch()Z

    move-result p1

    if-nez p1, :cond_f

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$minCheck(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto/16 :goto_3

    .line 1403
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->-$$Nest$fputflingDetected(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Z)V

    .line 1404
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->-$$Nest$fputallowModeScroll(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Z)V

    .line 1406
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetscrollingY(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1407
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->getTranslationY1()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    const/4 v1, 0x0

    if-ltz p1, :cond_8

    cmpl-float p1, p4, v1

    if-lez p1, :cond_5

    .line 1408
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x44fa0000    # 2000.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p1, p1, p3

    if-gtz p1, :cond_6

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetdismissProgress(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F

    move-result p1

    const p3, 0x3ecccccd    # 0.4f

    cmpl-float p1, p1, p3

    if-lez p1, :cond_7

    .line 1409
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    goto/16 :goto_2

    .line 1411
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$manimateContainerBack(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    goto/16 :goto_2

    .line 1414
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetgalleryListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetgalleryClosing(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetmode(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_d

    .line 1415
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v2, 0x43480000    # 200.0f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetgalleryListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetwasGalleryOpen(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1416
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgettakingVideo(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p3

    if-nez p3, :cond_a

    cmpg-float p3, p4, v1

    if-gez p3, :cond_a

    move p3, v0

    goto :goto_0

    :cond_a
    move p3, p2

    :goto_0
    invoke-static {p1, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$manimateGalleryListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    goto :goto_2

    .line 1419
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgettakingVideo(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p3

    if-nez p3, :cond_c

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p3, p3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetgalleryListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetgalleryListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->getPadding()I

    move-result p4

    int-to-float p4, p4

    cmpg-float p3, p3, p4

    if-gez p3, :cond_c

    move p3, v0

    goto :goto_1

    :cond_c
    move p3, p2

    :goto_1
    invoke-static {p1, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$manimateGalleryListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    goto :goto_2

    :cond_d
    move v0, p2

    .line 1424
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputgalleryClosing(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 1425
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputscrollingY(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 1426
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputscrollingX(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    if-eqz v0, :cond_e

    .line 1427
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 1428
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cancelTouch()Z

    :cond_e
    return v0

    :cond_f
    :goto_3
    return p2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 1338
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetopenCloseAnimator(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetopenCloseAnimator(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_10

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetgalleryOpenCloseSpringAnimator(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetgalleryOpenCloseAnimator(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetqrLinkView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetqrLinkView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->inTouch()Z

    move-result p1

    if-nez p1, :cond_10

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetrecordControl(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->isTouch()Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->isDualTouch()Z

    move-result p1

    if-nez p1, :cond_10

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->-$$Nest$fgetscaling(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetzoomControlView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/ZoomControlView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetzoomControlView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/ZoomControlView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ZoomControlView;->isTouch()Z

    move-result p1

    if-nez p1, :cond_10

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$minCheck(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto/16 :goto_3

    .line 1341
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgettakingVideo(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgettakingPhoto(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_3

    .line 1344
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetscrollingX(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_7

    .line 1345
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->-$$Nest$fgetsty(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)F

    move-result v0

    add-float/2addr v0, p4

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->-$$Nest$fputsty(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)V

    .line 1346
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetscrollingY(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->-$$Nest$fgetsty(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_7

    .line 1347
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1348
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cancelTouch()Z

    .line 1350
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputscrollingY(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 1353
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetscrollingY(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1354
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetwindowView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int/2addr p1, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 1355
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetgalleryListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetgalleryListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_8

    goto :goto_0

    .line 1358
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetgalleryListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    sub-float/2addr v2, v1

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->-$$Nest$fputty(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)V

    goto :goto_1

    .line 1356
    :cond_9
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->getTranslationY1()F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->-$$Nest$fputty(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)V

    .line 1360
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetgalleryListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetgalleryListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1361
    invoke-static {v1, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 1363
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->-$$Nest$fgetty(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)F

    move-result v2

    sub-float/2addr v2, p4

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->-$$Nest$fputty(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)V

    .line 1364
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    neg-int v0, p1

    int-to-float v0, v0

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->-$$Nest$fgetty(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p4, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->-$$Nest$fputty(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)V

    .line 1365
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p4

    if-ne p4, p2, :cond_b

    .line 1366
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->-$$Nest$fgetty(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p4, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->-$$Nest$fputty(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)V

    .line 1368
    :cond_b
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->-$$Nest$fgetty(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)F

    move-result p4

    cmpl-float p4, p4, v1

    if-ltz p4, :cond_c

    .line 1369
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object p4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->-$$Nest$fgetty(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)F

    move-result v0

    invoke-virtual {p4, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY(F)V

    .line 1370
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetgalleryListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object p4

    if-eqz p4, :cond_e

    .line 1371
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetgalleryListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object p4

    int-to-float p1, p1

    invoke-virtual {p4, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 1374
    :cond_c
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object p4

    invoke-virtual {p4, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY(F)V

    .line 1375
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetgalleryListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object p4

    if-nez p4, :cond_d

    .line 1376
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mcreateGalleryListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    .line 1378
    :cond_d
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetgalleryListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object p4

    int-to-float p1, p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->-$$Nest$fgetty(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)F

    move-result v0

    add-float/2addr p1, v0

    invoke-virtual {p4, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 1381
    :cond_e
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetscrollingY(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 1382
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->-$$Nest$fgetstx(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)F

    move-result p4

    add-float/2addr p4, p3

    invoke-static {p1, p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->-$$Nest$fputstx(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)V

    .line 1383
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetscrollingX(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->-$$Nest$fgetstx(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget p3, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_10

    .line 1384
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 1385
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cancelTouch()Z

    .line 1387
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputscrollingX(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    :cond_10
    :goto_3
    return p2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1435
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1436
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->allowToTapFocus()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1322
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputscrollingY(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 1323
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputscrollingX(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 1324
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->hasDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1325
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 1329
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$misGalleryOpen(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetgalleryListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->top()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 1330
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$manimateGalleryListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    return v2

    :cond_1
    return v1
.end method
