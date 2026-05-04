.class Lorg/telegram/ui/Cells/BotButton;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public angle:I

.field public animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field public button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

.field public buttonCustom:Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;

.field public buttonImpl:Lorg/telegram/messenger/BotInlineKeyboard$Button;

.field public height:I

.field public iconDrawable:Landroid/graphics/drawable/Drawable;

.field public final invalidateRunnable:Ljava/lang/Runnable;

.field public isInviteButton:Z

.field public isLocked:Z

.field public isSeparator:Z

.field public lastUpdateTime:J

.field public loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field public positionFlags:I

.field public pressAnimator:Landroid/animation/ValueAnimator;

.field public pressT:F

.field public pressed:Z

.field public progressAlpha:F

.field public selectorDrawable:Landroid/graphics/drawable/Drawable;

.field public title:Lorg/telegram/ui/Components/Text;

.field public width:F

.field public x:F

.field public y:I


# direct methods
.method public static synthetic $r8$lambda$1F4VL2uMpfqgTpLH4RgAF6Y_o_4(Lorg/telegram/ui/Cells/BotButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BotButton;->lambda$setPressed$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/telegram/ui/Cells/BotButton;->invalidateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$setPressed$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 67
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/BotButton;->pressT:F

    .line 68
    iget-object p1, p0, Lorg/telegram/ui/Cells/BotButton;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public getPressScale()F
    .locals 4

    .line 89
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/BotButton;->pressed:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/BotButton;->pressT:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    const/high16 v2, 0x447a0000    # 1000.0f

    .line 90
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    div-float/2addr v2, v3

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Cells/BotButton;->pressT:F

    const/4 v2, 0x0

    .line 91
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/BotButton;->pressT:F

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Cells/BotButton;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 94
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/BotButton;->pressT:F

    sub-float/2addr v1, v0

    const v0, 0x3d23d70a    # 0.04f

    mul-float/2addr v1, v0

    const v0, 0x3f75c28f    # 0.96f

    add-float/2addr v1, v0

    return v1
.end method

.method public hasPositionFlag(I)Z
    .locals 1

    .line 85
    iget v0, p0, Lorg/telegram/ui/Cells/BotButton;->positionFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPressed(Z)V
    .locals 3

    .line 55
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/BotButton;->pressed:Z

    if-eq v0, p1, :cond_1

    .line 56
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/BotButton;->pressed:Z

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Cells/BotButton;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    if-eqz p1, :cond_0

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Cells/BotButton;->pressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Cells/BotButton;->pressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-nez p1, :cond_1

    .line 64
    iget p1, p0, Lorg/telegram/ui/Cells/BotButton;->pressT:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 65
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v0, v1, p1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/BotButton;->pressAnimator:Landroid/animation/ValueAnimator;

    .line 66
    new-instance v0, Lorg/telegram/ui/Cells/BotButton$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/BotButton$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/BotButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 70
    iget-object p1, p0, Lorg/telegram/ui/Cells/BotButton;->pressAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Cells/BotButton$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/BotButton$1;-><init>(Lorg/telegram/ui/Cells/BotButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 77
    iget-object p1, p0, Lorg/telegram/ui/Cells/BotButton;->pressAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 78
    iget-object p1, p0, Lorg/telegram/ui/Cells/BotButton;->pressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 79
    iget-object p1, p0, Lorg/telegram/ui/Cells/BotButton;->pressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method
