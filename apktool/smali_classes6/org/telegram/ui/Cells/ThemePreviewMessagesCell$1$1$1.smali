.class Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;->onDoubleTap(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;


# direct methods
.method public static synthetic $r8$lambda$xvVbfStdRI7hM4vxEFmyYBFdqz0(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1;->lambda$onPreDraw$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1;->this$2:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onPreDraw$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1;->this$2:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;->this$1:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    .line 318
    iget-object p1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1;->this$2:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;

    iget-object p1, p1, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;->this$1:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1;->this$2:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;->this$1:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1;->this$2:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;->this$1:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->resetAnimation()V

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1;->this$2:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;->this$1:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChange()Z

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1;->this$2:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;->this$1:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChange:Z

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1;->this$2:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;->this$1:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    const/4 v0, 0x2

    .line 315
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 316
    new-instance v1, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 320
    new-instance v1, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1$1;-><init>(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 329
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    return v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
