.class public Lorg/telegram/ui/SecretVoicePlayer;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private audioVisualizerDrawable:Lorg/telegram/ui/Components/AudioVisualizerDrawable;

.field private backDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurBitmapPaint:Landroid/graphics/Paint;

.field private blurBitmapShader:Landroid/graphics/BitmapShader;

.field private blurMatrix:Landroid/graphics/Matrix;

.field private cell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private checkTimeRunnable:Ljava/lang/Runnable;

.field private clipBottom:F

.field private clipTop:F

.field private closeAction:Ljava/lang/Runnable;

.field private closeButton:Landroid/widget/TextView;

.field private containerView:Landroid/widget/FrameLayout;

.field public final context:Landroid/content/Context;

.field private dismissing:Z

.field private dtx:F

.field private dty:F

.field private earListener:Lorg/telegram/ui/Components/EarListener;

.field private hasDestTranslation:Z

.field private hasTranslation:Z

.field private heightdiff:F

.field private hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private final insets:Landroid/graphics/Rect;

.field private isRound:Z

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private open:Z

.field private open2Animator:Landroid/animation/ValueAnimator;

.field private openAction:Ljava/lang/Runnable;

.field private openAnimator:Landroid/animation/ValueAnimator;

.field private openProgress:F

.field private openProgress2:F

.field private player:Lorg/telegram/ui/Components/VideoPlayer;

.field private progress:F

.field private final rect:Landroid/graphics/RectF;

.field private renderedFirstFrame:Z

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private setCellInvisible:Z

.field private textureView:Landroid/view/TextureView;

.field private thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

.field private tx:F

.field private ty:F

.field private windowView:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$1bgOujKAJLvdL8yd4Nipa7WVxgo(Lorg/telegram/ui/SecretVoicePlayer;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SecretVoicePlayer;->lambda$onBackPressed$3(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$364p2cx8-o9cbYNbntgOzZIYF_s(Lorg/telegram/ui/SecretVoicePlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SecretVoicePlayer;->lambda$dismiss$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$8zlg3J8Py2DYGmYy-RBh0XlwMPw(Lorg/telegram/ui/SecretVoicePlayer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretVoicePlayer;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BNjk63ko7jP_XFo2ci7_T-HCCvQ(Lorg/telegram/ui/SecretVoicePlayer;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SecretVoicePlayer;->lambda$onBackPressed$4(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cfph_QV5zlgWCLsVivkhQ4hUso0(Lorg/telegram/ui/SecretVoicePlayer;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SecretVoicePlayer;->lambda$prepareBlur$1(Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bd7PC5nNw_xfI_pELA0ttlyNu0k(Lorg/telegram/ui/SecretVoicePlayer;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SecretVoicePlayer;->lambda$animateOpenTo$8(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$byK4Ztcwksm0Fbo8LK0ssZ0znIY(Lorg/telegram/ui/SecretVoicePlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SecretVoicePlayer;->lambda$dismiss$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$h6vQum0dN2nIqwBckm2t98pt7U8(Lorg/telegram/ui/SecretVoicePlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SecretVoicePlayer;->lambda$dismiss$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$lzi0Gp9tm6eR7qlAqpBhk5Q_Hrg(Lorg/telegram/ui/SecretVoicePlayer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretVoicePlayer;->lambda$setCell$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oeOWgdPvPKIAQMKhPtQYl1olUb4(Lorg/telegram/ui/SecretVoicePlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SecretVoicePlayer;->checkTime()V

    return-void
.end method

.method public static synthetic $r8$lambda$pUa5eirbduuFM_EpTJmR2D6_7Zg(Lorg/telegram/ui/SecretVoicePlayer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretVoicePlayer;->lambda$animateOpenTo$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetaudioVisualizerDrawable(Lorg/telegram/ui/SecretVoicePlayer;)Lorg/telegram/ui/Components/AudioVisualizerDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->audioVisualizerDrawable:Lorg/telegram/ui/Components/AudioVisualizerDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetblurBitmap(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->blurBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetblurBitmapPaint(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->blurBitmapPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetblurBitmapShader(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/BitmapShader;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->blurBitmapShader:Landroid/graphics/BitmapShader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetblurMatrix(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/Matrix;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->blurMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcell(Lorg/telegram/ui/SecretVoicePlayer;)Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcheckTimeRunnable(Lorg/telegram/ui/SecretVoicePlayer;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->checkTimeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetclipBottom(Lorg/telegram/ui/SecretVoicePlayer;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->clipBottom:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetclipTop(Lorg/telegram/ui/SecretVoicePlayer;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->clipTop:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcloseButton(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->closeButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontainerView(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->containerView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethintView(Lorg/telegram/ui/SecretVoicePlayer;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinsets(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/Rect;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->insets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisRound(Lorg/telegram/ui/SecretVoicePlayer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->isRound:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmessageObject(Lorg/telegram/ui/SecretVoicePlayer;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->messageObject:Lorg/telegram/messenger/MessageObject;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmyCell(Lorg/telegram/ui/SecretVoicePlayer;)Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetopenProgress(Lorg/telegram/ui/SecretVoicePlayer;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->openProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetopenProgress2(Lorg/telegram/ui/SecretVoicePlayer;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->openProgress2:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetprogress(Lorg/telegram/ui/SecretVoicePlayer;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->progress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrect(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrenderedFirstFrame(Lorg/telegram/ui/SecretVoicePlayer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->renderedFirstFrame:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsetCellInvisible(Lorg/telegram/ui/SecretVoicePlayer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->setCellInvisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettextureView(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/view/TextureView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->textureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwindowView(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretVoicePlayer;->windowView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputopenProgress(Lorg/telegram/ui/SecretVoicePlayer;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/SecretVoicePlayer;->openProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputopenProgress2(Lorg/telegram/ui/SecretVoicePlayer;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/SecretVoicePlayer;->openProgress2:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrenderedFirstFrame(Lorg/telegram/ui/SecretVoicePlayer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/SecretVoicePlayer;->renderedFirstFrame:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsetCellInvisible(Lorg/telegram/ui/SecretVoicePlayer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/SecretVoicePlayer;->setCellInvisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupTranslation(Lorg/telegram/ui/SecretVoicePlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SecretVoicePlayer;->setupTranslation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTranslation(Lorg/telegram/ui/SecretVoicePlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SecretVoicePlayer;->updateTranslation()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 106
    sget v0, Lorg/telegram/messenger/R$style;->TransparentDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->insets:Landroid/graphics/Rect;

    .line 320
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->rect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 323
    iput v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->clipTop:F

    iput v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->clipBottom:F

    .line 740
    new-instance v1, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SecretVoicePlayer;)V

    iput-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer;->checkTimeRunnable:Ljava/lang/Runnable;

    .line 741
    iput v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->progress:F

    const/4 v0, 0x0

    .line 767
    iput-boolean v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->dismissing:Z

    .line 107
    iput-object p1, p0, Lorg/telegram/ui/SecretVoicePlayer;->context:Landroid/content/Context;

    .line 109
    new-instance v1, Lorg/telegram/ui/SecretVoicePlayer$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SecretVoicePlayer$1;-><init>(Lorg/telegram/ui/SecretVoicePlayer;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer;->windowView:Landroid/widget/FrameLayout;

    .line 143
    new-instance v2, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SecretVoicePlayer;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    new-instance v1, Lorg/telegram/ui/SecretVoicePlayer$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SecretVoicePlayer$2;-><init>(Lorg/telegram/ui/SecretVoicePlayer;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer;->containerView:Landroid/widget/FrameLayout;

    .line 187
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->windowView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer;->containerView:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/16 v3, 0x77

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->windowView:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->windowView:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/SecretVoicePlayer$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SecretVoicePlayer$3;-><init>(Lorg/telegram/ui/SecretVoicePlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 213
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Lorg/telegram/ui/Components/EarListener;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/EarListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->earListener:Lorg/telegram/ui/Components/EarListener;

    :cond_0
    return-void
.end method

.method private animateOpenTo(ZLjava/lang/Runnable;)V
    .locals 9

    .line 869
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->openAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 870
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 872
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->open2Animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 873
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 875
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/SecretVoicePlayer;->setupTranslation()V

    .line 876
    iget v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->openProgress:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v0, 0x1

    aput v3, v5, v0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer;->openAnimator:Landroid/animation/ValueAnimator;

    .line 877
    new-instance v5, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/SecretVoicePlayer;Z)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 892
    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer;->openAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lorg/telegram/ui/SecretVoicePlayer$8;

    invoke-direct {v5, p0, p1, p2}, Lorg/telegram/ui/SecretVoicePlayer$8;-><init>(Lorg/telegram/ui/SecretVoicePlayer;ZLjava/lang/Runnable;)V

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p1, :cond_3

    .line 913
    iget-object p2, p0, Lorg/telegram/ui/SecretVoicePlayer;->closeAction:Ljava/lang/Runnable;

    if-nez p2, :cond_3

    const-wide/16 v7, 0x14a

    goto :goto_1

    :cond_3
    const-wide/16 v7, 0x208

    .line 914
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/SecretVoicePlayer;->openAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 915
    iget-object p2, p0, Lorg/telegram/ui/SecretVoicePlayer;->openAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 916
    iget-object p2, p0, Lorg/telegram/ui/SecretVoicePlayer;->openAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 918
    iget p2, p0, Lorg/telegram/ui/SecretVoicePlayer;->openProgress2:F

    if-eqz p1, :cond_4

    move v1, v2

    :cond_4
    new-array v2, v4, [F

    aput p2, v2, v6

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/SecretVoicePlayer;->open2Animator:Landroid/animation/ValueAnimator;

    .line 919
    new-instance v0, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/SecretVoicePlayer;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 925
    iget-object p2, p0, Lorg/telegram/ui/SecretVoicePlayer;->open2Animator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/SecretVoicePlayer$9;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/SecretVoicePlayer$9;-><init>(Lorg/telegram/ui/SecretVoicePlayer;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 934
    iget-object p1, p0, Lorg/telegram/ui/SecretVoicePlayer;->open2Animator:Landroid/animation/ValueAnimator;

    const/high16 p2, 0x3fc00000    # 1.5f

    long-to-float v0, v7

    mul-float/2addr v0, p2

    float-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 935
    iget-object p1, p0, Lorg/telegram/ui/SecretVoicePlayer;->open2Animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 936
    iget-object p1, p0, Lorg/telegram/ui/SecretVoicePlayer;->open2Animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private checkTime()V
    .locals 5

    .line 744
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->player:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 747
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer;->player:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->progress:F

    .line 748
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_1

    .line 749
    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer;->player:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer;->player:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->overrideDuration(J)V

    .line 750
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->updatePlayingMessageProgress()V

    .line 751
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSeekBarWaveform()Lorg/telegram/ui/Components/SeekBarWaveform;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 753
    iget v1, p0, Lorg/telegram/ui/SecretVoicePlayer;->progress:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SeekBarWaveform;->explodeAt(F)V

    .line 757
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->player:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 758
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->checkTimeRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 759
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->checkTimeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x10

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$animateOpenTo$8(ZLandroid/animation/ValueAnimator;)V
    .locals 3

    .line 878
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/SecretVoicePlayer;->openProgress:F

    .line 879
    iget-object p2, p0, Lorg/telegram/ui/SecretVoicePlayer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 880
    iget-object p2, p0, Lorg/telegram/ui/SecretVoicePlayer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 881
    iget-boolean p2, p0, Lorg/telegram/ui/SecretVoicePlayer;->isRound:Z

    if-eqz p2, :cond_0

    .line 882
    iget-object p2, p0, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    .line 884
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/SecretVoicePlayer;->updateTranslation()V

    .line 885
    iget-object p2, p0, Lorg/telegram/ui/SecretVoicePlayer;->closeButton:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 886
    iget v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->openProgress:F

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 888
    :cond_1
    iget-boolean p2, p0, Lorg/telegram/ui/SecretVoicePlayer;->isRound:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSeekBarWaveform()Lorg/telegram/ui/Components/SeekBarWaveform;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 889
    iget-object p2, p0, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSeekBarWaveform()Lorg/telegram/ui/Components/SeekBarWaveform;

    move-result-object p2

    if-eqz p1, :cond_2

    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    :goto_0
    iget v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->openProgress:F

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/SeekBarWaveform;->setExplosionRate(F)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$animateOpenTo$9(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 920
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/SecretVoicePlayer;->openProgress2:F

    .line 921
    iget-boolean p1, p0, Lorg/telegram/ui/SecretVoicePlayer;->isRound:Z

    if-eqz p1, :cond_0

    .line 922
    iget-object p1, p0, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$dismiss$5()V
    .locals 0

    .line 827
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$dismiss$6()V
    .locals 2

    .line 826
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    if-nez v0, :cond_0

    .line 827
    new-instance v0, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/SecretVoicePlayer;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 828
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 829
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 830
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    .line 834
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->tryResumePausedAudio()V

    return-void
.end method

.method private synthetic lambda$dismiss$7()V
    .locals 0

    .line 854
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 144
    iget-object p1, p0, Lorg/telegram/ui/SecretVoicePlayer;->closeAction:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 145
    invoke-virtual {p0}, Lorg/telegram/ui/SecretVoicePlayer;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBackPressed$3(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 782
    iget-object p1, p0, Lorg/telegram/ui/SecretVoicePlayer;->backDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_0

    .line 783
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBackPressed$4(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 787
    iget-object p1, p0, Lorg/telegram/ui/SecretVoicePlayer;->backDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_0

    .line 788
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 789
    iput-object p1, p0, Lorg/telegram/ui/SecretVoicePlayer;->backDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 791
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/SecretVoicePlayer;->dismiss()V

    return-void
.end method

.method private synthetic lambda$prepareBlur$1(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 226
    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/SecretVoicePlayer;->blurBitmap:Landroid/graphics/Bitmap;

    .line 228
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/SecretVoicePlayer;->blurBitmapPaint:Landroid/graphics/Paint;

    .line 229
    new-instance p2, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->blurBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, v0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lorg/telegram/ui/SecretVoicePlayer;->blurBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 230
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 231
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x3d4ccccd    # 0.05f

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3e800000    # 0.25f

    :goto_0
    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    .line 232
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, -0x435c28f6    # -0.02f

    goto :goto_1

    :cond_2
    const p2, -0x42dc28f6    # -0.04f

    :goto_1
    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    .line 233
    iget-object p2, p0, Lorg/telegram/ui/SecretVoicePlayer;->blurBitmapPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 234
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SecretVoicePlayer;->blurMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private synthetic lambda$setCell$2(Landroid/view/View;)V
    .locals 0

    .line 711
    invoke-virtual {p0}, Lorg/telegram/ui/SecretVoicePlayer;->dismiss()V

    return-void
.end method

.method private prepareBlur(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 220
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 222
    :cond_0
    new-instance v0, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/SecretVoicePlayer;Landroid/view/View;)V

    const/high16 p1, 0x41600000    # 14.0f

    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->makeGlobalBlurBitmap(Lorg/telegram/messenger/Utilities$Callback;F)V

    return-void
.end method

.method private setupTranslation()V
    .locals 8

    .line 281
    iget-boolean v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->hasTranslation:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 282
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    .line 283
    new-array v3, v3, [I

    .line 284
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    .line 285
    aget v0, v3, v0

    iget-object v4, p0, Lorg/telegram/ui/SecretVoicePlayer;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget-object v4, p0, Lorg/telegram/ui/SecretVoicePlayer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/SecretVoicePlayer;->insets:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v6

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->tx:F

    .line 286
    aget v0, v3, v2

    iget-object v4, p0, Lorg/telegram/ui/SecretVoicePlayer;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget-object v4, p0, Lorg/telegram/ui/SecretVoicePlayer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/SecretVoicePlayer;->insets:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v7

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v6

    iget-object v6, p0, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iget v6, p0, Lorg/telegram/ui/SecretVoicePlayer;->heightdiff:F

    sub-float/2addr v4, v6

    div-float/2addr v4, v5

    sub-float/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->ty:F

    .line 287
    iget-boolean v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->hasDestTranslation:Z

    if-nez v0, :cond_2

    .line 288
    iput-boolean v2, p0, Lorg/telegram/ui/SecretVoicePlayer;->hasDestTranslation:Z

    .line 289
    iput v1, p0, Lorg/telegram/ui/SecretVoicePlayer;->dtx:F

    .line 290
    aget v0, v3, v2

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/SecretVoicePlayer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v6

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    .line 291
    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->dty:F

    .line 292
    iget-boolean v3, p0, Lorg/telegram/ui/SecretVoicePlayer;->isRound:Z

    if-eqz v3, :cond_1

    .line 293
    iput v1, p0, Lorg/telegram/ui/SecretVoicePlayer;->dty:F

    goto :goto_0

    :cond_1
    const v3, 0x3f47ae14    # 0.78f

    .line 295
    invoke-static {v1, v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->dty:F

    .line 298
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/SecretVoicePlayer;->updateTranslation()V

    goto :goto_1

    .line 300
    :cond_3
    iput v1, p0, Lorg/telegram/ui/SecretVoicePlayer;->ty:F

    iput v1, p0, Lorg/telegram/ui/SecretVoicePlayer;->tx:F

    .line 302
    :goto_1
    iput-boolean v2, p0, Lorg/telegram/ui/SecretVoicePlayer;->hasTranslation:Z

    :cond_4
    :goto_2
    return-void
.end method

.method private updateTranslation()V
    .locals 4

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v1, p0, Lorg/telegram/ui/SecretVoicePlayer;->tx:F

    iget v2, p0, Lorg/telegram/ui/SecretVoicePlayer;->dtx:F

    iget v3, p0, Lorg/telegram/ui/SecretVoicePlayer;->openProgress:F

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setTranslationX(F)V

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v1, p0, Lorg/telegram/ui/SecretVoicePlayer;->ty:F

    iget v2, p0, Lorg/telegram/ui/SecretVoicePlayer;->dty:F

    iget v3, p0, Lorg/telegram/ui/SecretVoicePlayer;->openProgress:F

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_1

    .line 309
    iget v1, p0, Lorg/telegram/ui/SecretVoicePlayer;->tx:F

    iget v2, p0, Lorg/telegram/ui/SecretVoicePlayer;->dtx:F

    iget v3, p0, Lorg/telegram/ui/SecretVoicePlayer;->openProgress:F

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    iget v1, p0, Lorg/telegram/ui/SecretVoicePlayer;->ty:F

    iget v2, p0, Lorg/telegram/ui/SecretVoicePlayer;->dty:F

    iget v3, p0, Lorg/telegram/ui/SecretVoicePlayer;->openProgress:F

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .line 806
    iget-boolean v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->dismissing:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 807
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->backDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 808
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 809
    iput-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer;->backDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_1
    const/4 v0, 0x1

    .line 811
    iput-boolean v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->dismissing:Z

    .line 812
    iget-object v2, p0, Lorg/telegram/ui/SecretVoicePlayer;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v2, :cond_2

    .line 813
    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 815
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/SecretVoicePlayer;->player:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v2, :cond_3

    .line 816
    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 817
    iget-object v2, p0, Lorg/telegram/ui/SecretVoicePlayer;->player:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 818
    iput-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer;->player:Lorg/telegram/ui/Components/VideoPlayer;

    .line 820
    :cond_3
    iget-boolean v2, p0, Lorg/telegram/ui/SecretVoicePlayer;->isRound:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSeekBarWaveform()Lorg/telegram/ui/Components/SeekBarWaveform;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 821
    iget-object v2, p0, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSeekBarWaveform()Lorg/telegram/ui/Components/SeekBarWaveform;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/SecretVoicePlayer;->openProgress:F

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SeekBarWaveform;->setExplosionRate(F)V

    :cond_4
    const/4 v2, 0x0

    .line 823
    iput-boolean v2, p0, Lorg/telegram/ui/SecretVoicePlayer;->hasTranslation:Z

    .line 824
    invoke-direct {p0}, Lorg/telegram/ui/SecretVoicePlayer;->setupTranslation()V

    .line 825
    iput-boolean v2, p0, Lorg/telegram/ui/SecretVoicePlayer;->open:Z

    new-instance v3, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/SecretVoicePlayer;)V

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/SecretVoicePlayer;->animateOpenTo(ZLjava/lang/Runnable;)V

    .line 836
    iget-object v2, p0, Lorg/telegram/ui/SecretVoicePlayer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 838
    iget-object v2, p0, Lorg/telegram/ui/SecretVoicePlayer;->closeAction:Ljava/lang/Runnable;

    if-eqz v2, :cond_6

    .line 839
    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_5

    .line 840
    iput-boolean v0, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->makeVisibleAfterChange:Z

    .line 848
    :cond_5
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 849
    iput-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer;->closeAction:Ljava/lang/Runnable;

    .line 852
    new-instance v0, Lorg/telegram/ui/Components/ThanosEffect;

    iget-object v2, p0, Lorg/telegram/ui/SecretVoicePlayer;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/ThanosEffect;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    .line 853
    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer;->windowView:Landroid/widget/FrameLayout;

    const/16 v2, 0x77

    const/4 v3, -0x1

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 854
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    new-instance v2, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/SecretVoicePlayer;)V

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1, v3, v2}, Lorg/telegram/ui/Components/ThanosEffect;->animate(Landroid/view/View;FLjava/lang/Runnable;)V

    .line 856
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 857
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 858
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 861
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->earListener:Lorg/telegram/ui/Components/EarListener;

    if-eqz v0, :cond_7

    .line 862
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EarListener;->detach()V

    :cond_7
    :goto_0
    return-void
.end method

.method public isShown()Z
    .locals 1

    .line 764
    iget-boolean v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->dismissing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 772
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->backDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 774
    iput-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->backDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 777
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->dismissing:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v0

    if-nez v0, :cond_4

    .line 778
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/SecretVoicePlayer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 779
    iget-boolean v1, p0, Lorg/telegram/ui/SecretVoicePlayer;->isRound:Z

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->VideoOnceCloseTitle:I

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->VoiceOnceCloseTitle:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 780
    iget-boolean v1, p0, Lorg/telegram/ui/SecretVoicePlayer;->isRound:Z

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/R$string;->VideoOnceCloseMessage:I

    goto :goto_1

    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->VoiceOnceCloseMessage:I

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Continue:I

    .line 781
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/SecretVoicePlayer;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    .line 786
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/SecretVoicePlayer;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 793
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->backDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 794
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 795
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->backDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 797
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void

    .line 801
    :cond_4
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 240
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 242
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 243
    sget v0, Lorg/telegram/messenger/R$style;->DialogNoAnimation:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->windowView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 247
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 248
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x77

    .line 249
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 250
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 251
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    const/16 v2, 0x30

    .line 252
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/high16 v2, 0x20000

    or-int/2addr v2, v1

    .line 253
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 254
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const v3, -0x77fcff00

    or-int/2addr v3, v1

    .line 255
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 260
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v3, :cond_0

    const v3, -0x77fcdf00

    or-int/2addr v1, v3

    .line 261
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 262
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->logFlagSecure()V

    .line 264
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x480

    .line 265
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x1c

    const/4 v3, 0x1

    if-lt v2, v1, :cond_1

    .line 267
    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 269
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 271
    iget-object p1, p0, Lorg/telegram/ui/SecretVoicePlayer;->windowView:Landroid/widget/FrameLayout;

    const/16 v0, 0x504

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 272
    iget-object p1, p0, Lorg/telegram/ui/SecretVoicePlayer;->windowView:Landroid/widget/FrameLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/View;Z)V

    return-void
.end method

.method public setCell(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 330
    iput-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->openAction:Ljava/lang/Runnable;

    move-object/from16 v2, p3

    .line 331
    iput-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->closeAction:Ljava/lang/Runnable;

    .line 332
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    .line 333
    iget-object v3, v1, Lorg/telegram/ui/SecretVoicePlayer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 334
    iput-object v9, v1, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 336
    :cond_0
    iput-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_1

    .line 337
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v9

    :goto_0
    iput-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_2

    .line 338
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v10

    goto :goto_1

    :cond_2
    move v2, v11

    :goto_1
    iput-boolean v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->isRound:Z

    .line 339
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v9

    :goto_2
    iput-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 341
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_7

    .line 343
    iget v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->parentBoundsTop:F

    iput v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->clipTop:F

    .line 344
    iget v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->parentBoundsBottom:I

    int-to-float v2, v2

    iput v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->clipBottom:F

    .line 345
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_4

    .line 346
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 347
    iget v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->clipTop:F

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->clipTop:F

    .line 348
    iget v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->clipBottom:F

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr v2, v0

    iput v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->clipBottom:F

    .line 351
    :cond_4
    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 352
    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 353
    iget-boolean v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->isRound:Z

    if-eqz v2, :cond_5

    const/high16 v0, 0x43b40000    # 360.0f

    .line 354
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_5
    move v8, v0

    .line 356
    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v0, v8, v0

    int-to-float v0, v0

    iput v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->heightdiff:F

    .line 359
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f6b851f    # 0.92f

    mul-float/2addr v0, v2

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v12, v2

    .line 361
    new-instance v0, Lorg/telegram/ui/SecretVoicePlayer$4;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-object v4, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/SecretVoicePlayer$4;-><init>(Lorg/telegram/ui/SecretVoicePlayer;Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    iput-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 532
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->copyVisiblePartTo(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    .line 533
    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->copySpoilerEffect2AttachIndexFrom(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    .line 534
    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    new-instance v2, Lorg/telegram/ui/SecretVoicePlayer$5;

    invoke-direct {v2, v1}, Lorg/telegram/ui/SecretVoicePlayer$5;-><init>(Lorg/telegram/ui/SecretVoicePlayer;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    .line 540
    iget-object v13, v1, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v14, v1, Lorg/telegram/ui/SecretVoicePlayer;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v15

    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->pinnedBottom:Z

    iget-boolean v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->pinnedTop:Z

    const/16 v18, 0x0

    move/from16 v17, v0

    move/from16 v16, v2

    invoke-virtual/range {v13 .. v18}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZ)V

    .line 541
    iget-boolean v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->isRound:Z

    if-nez v0, :cond_6

    .line 542
    new-instance v0, Lorg/telegram/ui/Components/AudioVisualizerDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AudioVisualizerDrawable;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->audioVisualizerDrawable:Lorg/telegram/ui/Components/AudioVisualizerDrawable;

    .line 543
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AudioVisualizerDrawable;->setParentView(Landroid/view/View;)V

    .line 544
    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->audioVisualizerDrawable:Lorg/telegram/ui/Components/AudioVisualizerDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->overrideAudioVisualizer(Lorg/telegram/ui/Components/AudioVisualizerDrawable;)V

    .line 545
    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSeekBarWaveform()Lorg/telegram/ui/Components/SeekBarWaveform;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 546
    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSeekBarWaveform()Lorg/telegram/ui/Components/SeekBarWaveform;

    move-result-object v0

    iget v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->openProgress:F

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SeekBarWaveform;->setExplosionRate(F)V

    .line 549
    :cond_6
    iput-boolean v11, v1, Lorg/telegram/ui/SecretVoicePlayer;->hasTranslation:Z

    .line 550
    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->containerView:Landroid/widget/FrameLayout;

    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    const/16 v5, 0x11

    invoke-direct {v3, v4, v8, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_7
    const/16 v12, 0x168

    .line 553
    :goto_3
    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_8

    .line 554
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 555
    iput-object v9, v1, Lorg/telegram/ui/SecretVoicePlayer;->textureView:Landroid/view/TextureView;

    .line 557
    :cond_8
    iget-boolean v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->isRound:Z

    if-eqz v0, :cond_9

    .line 558
    iput-boolean v11, v1, Lorg/telegram/ui/SecretVoicePlayer;->renderedFirstFrame:Z

    .line 559
    new-instance v0, Landroid/view/TextureView;

    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->textureView:Landroid/view/TextureView;

    .line 560
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->containerView:Landroid/widget/FrameLayout;

    int-to-float v3, v12

    invoke-static {v12, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v11, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 563
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->pauseByRewind()V

    .line 565
    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->player:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_a

    .line 566
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 567
    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->player:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 568
    iput-object v9, v1, Lorg/telegram/ui/SecretVoicePlayer;->player:Lorg/telegram/ui/Components/VideoPlayer;

    .line 570
    :cond_a
    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 571
    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    .line 572
    const-string v2, ".enc"

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_b

    .line 573
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    :cond_b
    if-eqz v0, :cond_c

    .line 575
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_d

    .line 576
    :cond_c
    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 577
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_d

    .line 578
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    :cond_d
    if-eqz v0, :cond_e

    .line 581
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 582
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_f
    if-eqz v0, :cond_22

    .line 584
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_e

    .line 587
    :cond_10
    new-instance v2, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v2}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->player:Lorg/telegram/ui/Components/VideoPlayer;

    .line 588
    new-instance v3, Lorg/telegram/ui/SecretVoicePlayer$6;

    invoke-direct {v3, v1}, Lorg/telegram/ui/SecretVoicePlayer$6;-><init>(Lorg/telegram/ui/SecretVoicePlayer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 627
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->audioVisualizerDrawable:Lorg/telegram/ui/Components/AudioVisualizerDrawable;

    if-eqz v2, :cond_11

    .line 628
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->player:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v3, Lorg/telegram/ui/SecretVoicePlayer$7;

    invoke-direct {v3, v1}, Lorg/telegram/ui/SecretVoicePlayer$7;-><init>(Lorg/telegram/ui/SecretVoicePlayer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setAudioVisualizerDelegate(Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;)V

    .line 640
    :cond_11
    iget-boolean v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->isRound:Z

    if-eqz v2, :cond_12

    .line 641
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->player:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v3, v1, Lorg/telegram/ui/SecretVoicePlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 643
    :cond_12
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->player:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "other"

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 644
    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->player:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    .line 645
    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->earListener:Lorg/telegram/ui/Components/EarListener;

    if-eqz v0, :cond_13

    .line 646
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->player:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EarListener;->attachPlayer(Lorg/telegram/ui/Components/VideoPlayer;)V

    .line 650
    :cond_13
    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_14

    .line 651
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 652
    iput-object v9, v1, Lorg/telegram/ui/SecretVoicePlayer;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 654
    :cond_14
    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v10

    goto :goto_4

    :cond_15
    move v0, v11

    .line 655
    :goto_4
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v4, 0x41400000    # 12.0f

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-eqz v2, :cond_1e

    .line 656
    new-instance v2, Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v5, v1, Lorg/telegram/ui/SecretVoicePlayer;->context:Landroid/content/Context;

    const/4 v6, 0x3

    invoke-direct {v2, v5, v6}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    iput-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 657
    invoke-virtual {v2, v10}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_19

    .line 660
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    .line 661
    const-string v7, ""

    if-lez v2, :cond_16

    .line 662
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 664
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 667
    :cond_16
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 669
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 672
    :cond_17
    :goto_5
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-boolean v5, v1, Lorg/telegram/ui/SecretVoicePlayer;->isRound:Z

    if-eqz v5, :cond_18

    sget v5, Lorg/telegram/messenger/R$string;->VideoOnceOutHint:I

    goto :goto_6

    :cond_18
    sget v5, Lorg/telegram/messenger/R$string;->VoiceOnceOutHint:I

    :goto_6
    new-array v6, v10, [Ljava/lang/Object;

    aput-object v7, v6, v11

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    goto :goto_8

    .line 674
    :cond_19
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-boolean v5, v1, Lorg/telegram/ui/SecretVoicePlayer;->isRound:Z

    if-eqz v5, :cond_1a

    sget v5, Lorg/telegram/messenger/R$string;->VideoOnceHint:I

    goto :goto_7

    :cond_1a
    sget v5, Lorg/telegram/messenger/R$string;->VoiceOnceHint:I

    :goto_7
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 676
    :goto_8
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setRounding(F)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 677
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v5, 0x0

    if-nez v0, :cond_1b

    iget-object v6, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v6, v6, Lorg/telegram/ui/Cells/ChatMessageCell;->pinnedBottom:Z

    if-nez v6, :cond_1b

    move v6, v3

    goto :goto_9

    :cond_1b
    move v6, v5

    :goto_9
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v6, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 678
    iget-boolean v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->isRound:Z

    if-eqz v2, :cond_1c

    .line 679
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v2, v6, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJointPx(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 680
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Stories/recorder/HintView2;

    goto :goto_a

    .line 682
    :cond_1c
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v6, 0x42080000    # 34.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJointPx(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 683
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 685
    :goto_a
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextSize(F)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 686
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/ui/SecretVoicePlayer;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidthPx(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 687
    iget-boolean v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->isRound:Z

    const/high16 v5, -0x3d6a0000    # -75.0f

    const v6, 0x3f19999a    # 0.6f

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v2, :cond_1d

    .line 688
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->containerView:Landroid/widget/FrameLayout;

    iget-object v8, v1, Lorg/telegram/ui/SecretVoicePlayer;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v10, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v10, v12

    mul-float/2addr v10, v6

    float-to-int v12, v10

    iget-object v6, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v10, v1, Lorg/telegram/ui/SecretVoicePlayer;->heightdiff:F

    add-float/2addr v6, v10

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v6, v10

    div-float/2addr v6, v7

    sub-float v16, v5, v6

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v13, 0x43160000    # 150.0f

    const/16 v14, 0x11

    const/4 v15, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    .line 690
    :cond_1d
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->containerView:Landroid/widget/FrameLayout;

    iget-object v8, v1, Lorg/telegram/ui/SecretVoicePlayer;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v10, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v10, v12

    mul-float/2addr v10, v6

    float-to-int v12, v10

    iget-object v6, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const v10, -0x41333334    # -0.39999998f

    mul-float/2addr v6, v10

    div-float/2addr v6, v7

    iget-object v10, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBoundsLeft()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v6, v10

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v6, v10

    const/high16 v10, 0x3f800000    # 1.0f

    add-float v15, v6, v10

    iget-object v6, v1, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v6, v10

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/high16 v6, 0x41000000    # 8.0f

    sub-float v16, v5, v6

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v13, 0x43160000    # 150.0f

    const/16 v14, 0x11

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 692
    :goto_b
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 695
    :cond_1e
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->closeButton:Landroid/widget/TextView;

    if-eqz v2, :cond_1f

    .line 696
    iget-object v5, v1, Lorg/telegram/ui/SecretVoicePlayer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 697
    iput-object v9, v1, Lorg/telegram/ui/SecretVoicePlayer;->closeButton:Landroid/widget/TextView;

    .line 699
    :cond_1f
    new-instance v2, Landroid/widget/TextView;

    iget-object v5, v1, Lorg/telegram/ui/SecretVoicePlayer;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->closeButton:Landroid/widget/TextView;

    const/4 v5, -0x1

    .line 700
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 701
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->closeButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 702
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v2

    const/16 v5, 0x40

    if-eqz v2, :cond_20

    .line 703
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->closeButton:Landroid/widget/TextView;

    const v6, 0x20ffffff

    const v7, 0x33ffffff

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    .line 705
    :cond_20
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->closeButton:Landroid/widget/TextView;

    const/high16 v6, 0x2e000000

    const/high16 v7, 0x44000000    # 512.0f

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 707
    :goto_c
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->closeButton:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v5, v6, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 708
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->closeButton:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 709
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->closeButton:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    sget v3, Lorg/telegram/messenger/R$string;->VoiceOnceClose:I

    goto :goto_d

    :cond_21
    sget v3, Lorg/telegram/messenger/R$string;->VoiceOnceDeleteClose:I

    :goto_d
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->closeButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/SecretVoicePlayer;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    iget-object v2, v1, Lorg/telegram/ui/SecretVoicePlayer;->containerView:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/SecretVoicePlayer;->closeButton:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/high16 v10, 0x41900000    # 18.0f

    const/4 v4, -0x2

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x51

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v0, :cond_22

    .line 715
    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_22

    .line 716
    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-boolean v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 717
    iget-object v0, v1, Lorg/telegram/ui/SecretVoicePlayer;->myCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    :cond_22
    :goto_e
    return-void
.end method

.method public show()V
    .locals 2

    .line 723
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isSafeToShow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 724
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 726
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0, v0}, Lorg/telegram/ui/SecretVoicePlayer;->prepareBlur(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 727
    iput-boolean v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->setCellInvisible:Z

    .line 728
    iput-boolean v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->open:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/SecretVoicePlayer;->animateOpenTo(ZLjava/lang/Runnable;)V

    .line 730
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->openAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 731
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 732
    iput-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer;->openAction:Ljava/lang/Runnable;

    .line 735
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer;->earListener:Lorg/telegram/ui/Components/EarListener;

    if-eqz v0, :cond_2

    .line 736
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EarListener;->attach()V

    :cond_2
    :goto_0
    return-void
.end method
