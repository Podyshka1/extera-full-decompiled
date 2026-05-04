.class public abstract Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AvatarConstructorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewView"
.end annotation


# instance fields
.field backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

.field backupImageView:Lorg/telegram/ui/Components/BackupImageView;

.field changeBackgroundProgress:F

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private cx:F

.field private cy:F

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public documentId:J

.field expandProgress:Lorg/telegram/ui/Components/AnimatedFloat;

.field expanded:Z

.field public freeEmoji:Z

.field gradientTools:Lorg/telegram/ui/Components/GradientTools;

.field isCustomGradient:Z

.field outGradientTools:Lorg/telegram/ui/Components/GradientTools;

.field overrideExpandProgress:F

.field private size:F

.field final synthetic this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;


# direct methods
.method static bridge synthetic -$$Nest$fgetcx(Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cx:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcy(Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cy:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsize(Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->size:F

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;Landroid/content/Context;)V
    .locals 4

    .line 813
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    .line 814
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 800
    new-instance v0, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v0}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    .line 801
    new-instance v0, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v0}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->outGradientTools:Lorg/telegram/ui/Components/GradientTools;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 802
    iput v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->changeBackgroundProgress:F

    .line 806
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->colorFilter:Landroid/graphics/ColorFilter;

    .line 807
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v1, 0xc8

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->expandProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v0, -0x40800000    # -1.0f

    .line 809
    iput v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->overrideExpandProgress:F

    .line 815
    new-instance v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView$1;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;Landroid/content/Context;Lorg/telegram/ui/Components/AvatarConstructorFragment;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 834
    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeatCount(I)V

    .line 835
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    const/4 p1, 0x0

    .line 836
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 837
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 p2, 0x46

    const/16 v0, 0x11

    invoke-static {p2, p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private drawBackround(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 12

    .line 923
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->expandProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    if-nez v1, :cond_0

    sub-float v5, p2, p5

    sub-float v6, p3, p5

    add-float v7, p2, p5

    add-float v8, p3, p5

    mul-float p2, p5, v2

    .line 925
    invoke-static {p2, v3}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZ)I

    move-result p3

    int-to-float v9, p3

    invoke-static {p2, v3}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZ)I

    move-result p2

    int-to-float v10, p2

    move-object v4, p1

    move-object/from16 v11, p6

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    mul-float v2, v2, p5

    .line 928
    invoke-static {v2, v3}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZ)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    .line 930
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-float v2, p2, p5

    sub-float v3, p3, p5

    add-float p2, p2, p5

    add-float p3, p3, p5

    invoke-virtual {v1, v2, v3, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v11, p6

    .line 931
    invoke-virtual {p1, v1, v0, v0, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 868
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cx:F

    .line 869
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cy:F

    .line 870
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->isLandscapeMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v2

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    .line 871
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->expandProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->expanded:Z

    const/4 v3, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    move v2, v9

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 872
    iget v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->overrideExpandProgress:F

    cmpl-float v2, v0, v3

    if-ltz v2, :cond_2

    .line 873
    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->expandProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 875
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->expandProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    invoke-static {v6, v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->size:F

    const/high16 v2, 0x41a80000    # 21.0f

    .line 876
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget v5, v5, Lorg/telegram/ui/Components/AvatarConstructorFragment;->keyboardVisibleProgress:F

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->size:F

    .line 877
    iget v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cx:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v4, v2

    int-to-float v2, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget v4, v4, Lorg/telegram/ui/Components/AvatarConstructorFragment;->keyboardVisibleProgress:F

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cx:F

    .line 880
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 881
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget v2, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->expandedHeight:I

    iget v0, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->collapsedHeight:I

    sub-int/2addr v2, v0

    neg-int v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 882
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget-object v7, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget v7, v7, Lorg/telegram/ui/Components/AvatarConstructorFragment;->progressToExpand:F

    mul-float/2addr v2, v7

    add-float/2addr v5, v2

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 883
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    if-eqz v0, :cond_5

    .line 884
    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget v3, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    iget v4, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    iget v5, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    iget v0, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    invoke-virtual {v2, v3, v4, v5, v0}, Lorg/telegram/ui/Components/GradientTools;->setColors(IIII)V

    .line 885
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cx:F

    iget v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->size:F

    sub-float v4, v2, v3

    iget v5, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cy:F

    sub-float v7, v5, v3

    add-float/2addr v2, v3

    add-float/2addr v5, v3

    invoke-virtual {v0, v4, v7, v2, v5}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    .line 886
    iget v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->changeBackgroundProgress:F

    cmpl-float v0, v0, v9

    const/16 v2, 0xff

    if-eqz v0, :cond_4

    .line 887
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->outGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cx:F

    iget v4, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->size:F

    sub-float v5, v3, v4

    iget v7, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cy:F

    sub-float v8, v7, v4

    add-float/2addr v3, v4

    add-float/2addr v7, v4

    invoke-virtual {v0, v5, v8, v3, v7}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    .line 888
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->outGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 889
    iget v4, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cx:F

    iget v5, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cy:F

    iget v7, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->size:F

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->outGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v8, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->drawBackround(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 890
    iget-object p1, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object p1, p1, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x437f0000    # 255.0f

    iget v4, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->changeBackgroundProgress:F

    mul-float/2addr v4, v0

    float-to-int v0, v4

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 891
    iget v4, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cx:F

    iget v5, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cy:F

    iget v7, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->size:F

    iget-object p1, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v8, p1, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->drawBackround(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object p1, v2

    .line 892
    iget v0, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->changeBackgroundProgress:F

    const v2, 0x3d83126f    # 0.064f

    add-float/2addr v0, v2

    iput v0, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->changeBackgroundProgress:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_3

    .line 894
    iput v9, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->changeBackgroundProgress:F

    .line 896
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->invalidate()V

    move-object v2, p1

    goto :goto_3

    :cond_4
    move-object v3, p1

    move-object p1, p0

    .line 898
    iget-object v0, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 899
    iget v4, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cx:F

    iget v5, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cy:F

    iget v7, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->size:F

    iget-object v0, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v8, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->drawBackround(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_5
    move-object v2, p0

    move-object v3, p1

    .line 902
    :goto_3
    iget-object p1, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->isLandscapeMode:Z

    const v0, 0x3f333333    # 0.7f

    if-eqz p1, :cond_6

    mul-float/2addr v6, v1

    mul-float/2addr v6, v0

    float-to-int p1, v6

    goto :goto_4

    :cond_6
    const/high16 p1, 0x428c0000    # 70.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 903
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    const/high16 v5, 0x42280000    # 42.0f

    .line 904
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v0, v5

    .line 905
    iget-object v5, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->expandProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v5

    invoke-static {p1, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p1

    int-to-float p1, p1

    int-to-float v0, v0

    .line 906
    iget-object v4, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget v4, v4, Lorg/telegram/ui/Components/AvatarConstructorFragment;->keyboardVisibleProgress:F

    invoke-static {p1, v0, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    div-float/2addr p1, v1

    .line 908
    iget-object v0, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, v0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const v5, 0x3e051eb8    # 0.13f

    if-eqz v4, :cond_8

    .line 909
    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 910
    iget-object v0, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, v0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    mul-float/2addr v1, p1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 912
    :cond_7
    iget-object v0, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, v0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget v1, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cx:F

    sub-float v4, v1, p1

    float-to-int v4, v4

    iget v5, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cy:F

    sub-float v6, v5, p1

    float-to-int v6, v6

    add-float/2addr v1, p1

    float-to-int v1, v1

    add-float/2addr v5, p1

    float-to-int p1, v5

    invoke-virtual {v0, v4, v6, v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 913
    iget-object p1, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p1, p1, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v0, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 914
    iget-object p1, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p1, p1, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 916
    :cond_8
    iget-object v0, v0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v4, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cx:F

    sub-float/2addr v4, p1

    iget v6, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cy:F

    sub-float/2addr v6, p1

    mul-float/2addr p1, v1

    invoke-virtual {v0, v4, v6, p1, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 917
    iget-object v0, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, v0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    mul-float/2addr p1, v5

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 918
    iget-object p1, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p1, p1, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    return-void
.end method

.method public getDuration()J
    .locals 4

    .line 950
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    .line 951
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, v1, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_0

    .line 952
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    :cond_0
    const-wide/16 v1, 0x1388

    if-nez v0, :cond_1

    return-wide v1

    .line 957
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 958
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_2
    return-wide v1
.end method

.method public getImageReceiver()Lorg/telegram/messenger/ImageReceiver;
    .locals 3

    .line 964
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    .line 965
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, v1, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_0

    .line 966
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    .line 967
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, v1, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-object v0
.end method

.method public hasAnimation()Z
    .locals 1

    .line 973
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 978
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 979
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 859
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->isLandscapeMode:Z

    if-eqz v0, :cond_0

    .line 860
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_0
    const/high16 p2, 0x430c0000    # 140.0f

    .line 862
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    .line 841
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->expanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 844
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->expanded:Z

    if-eqz p1, :cond_2

    .line 846
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p1, p1, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 847
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p1, p1, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    .line 849
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p1, p1, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    .line 852
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 854
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->invalidate()V

    return-void
.end method

.method public setGradient(Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;Z)V
    .locals 5

    .line 936
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    if-eqz v0, :cond_0

    .line 937
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->outGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget v2, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    iget v3, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    iget v4, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    iget v0, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/telegram/ui/Components/GradientTools;->setColors(IIII)V

    const/4 v0, 0x0

    .line 938
    iput v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->changeBackgroundProgress:F

    .line 939
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->wasChanged:Z

    .line 941
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    .line 942
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->isCustomGradient:Z

    .line 944
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 946
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->invalidate()V

    return-void
.end method
