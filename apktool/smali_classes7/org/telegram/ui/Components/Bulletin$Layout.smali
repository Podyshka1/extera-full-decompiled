.class public abstract Lorg/telegram/ui/Components/Bulletin$Layout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Bulletin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Layout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Bulletin$Layout$Callback;,
        Lorg/telegram/ui/Components/Bulletin$Layout$SpringTransition;,
        Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition;,
        Lorg/telegram/ui/Components/Bulletin$Layout$Transition;
    }
.end annotation


# static fields
.field public static final IN_OUT_OFFSET_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat;"
        }
    .end annotation
.end field

.field public static final IN_OUT_OFFSET_Y2:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lorg/telegram/ui/Components/Bulletin$Layout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field background:Landroid/graphics/drawable/Drawable;

.field private blurVisibilityDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

.field protected bulletin:Lorg/telegram/ui/Components/Bulletin;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/Bulletin$Layout$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private clipGradient:Landroid/graphics/LinearGradient;

.field private clipMatrix:Landroid/graphics/Matrix;

.field private clipPaint:Landroid/graphics/Paint;

.field delegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

.field public inOutOffset:F

.field public onClickListener:Landroid/view/View$OnClickListener;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public top:Z

.field public transitionRunningEnter:Z

.field public transitionRunningExit:Z

.field private wideScreenGravity:I

.field private wideScreenWidth:I


# direct methods
.method static bridge synthetic -$$Nest$misNeedSwipeAlphaAnimation(Lorg/telegram/ui/Components/Bulletin$Layout;Z)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->isNeedSwipeAlphaAnimation(Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetInOutOffset(Lorg/telegram/ui/Components/Bulletin$Layout;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->setInOutOffset(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetWideScreenParams(Lorg/telegram/ui/Components/Bulletin$Layout;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$Layout;->setWideScreenParams(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 815
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$Layout$1;

    const-string v1, "offsetY"

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/Bulletin$Layout$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/Bulletin$Layout;->IN_OUT_OFFSET_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 827
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$Layout$2;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/Bulletin$Layout$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/Bulletin$Layout;->IN_OUT_OFFSET_Y2:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 792
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 765
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    const/4 p1, -0x2

    .line 785
    iput p1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->wideScreenWidth:I

    const/4 p1, 0x1

    .line 787
    iput p1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->wideScreenGravity:I

    .line 793
    iput-object p2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 p1, 0x42400000    # 48.0f

    .line 794
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 795
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->setBackground(I)V

    .line 796
    invoke-direct {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->updateSize()V

    const/high16 p1, 0x41800000    # 16.0f

    .line 797
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0, p2, v1, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    const/4 p1, 0x0

    .line 798
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    const p1, 0x3ca3d70a    # 0.02f

    const/high16 p2, 0x3fc00000    # 1.5f

    .line 799
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    return-void
.end method

.method private isNeedSwipeAlphaAnimation(Z)Z
    .locals 4

    .line 882
    invoke-direct {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->isWideScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->wideScreenWidth:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 885
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->wideScreenGravity:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x5

    if-eqz p1, :cond_3

    if-ne v0, v3, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method private isWideScreen()Z
    .locals 2

    .line 859
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private setInOutOffset(F)V
    .locals 0

    .line 1164
    iput p1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->inOutOffset:F

    .line 1165
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->updatePosition()V

    .line 1166
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->-$$Nest$fgetallowBlurAnimation(Lorg/telegram/ui/Components/Bulletin;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1167
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private setWideScreenParams(II)V
    .locals 2

    .line 865
    iget v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->wideScreenWidth:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    .line 866
    iput p1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->wideScreenWidth:I

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 870
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->wideScreenGravity:I

    if-eq v0, p2, :cond_1

    .line 871
    iput p2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->wideScreenGravity:I

    goto :goto_1

    :cond_1
    move v1, p1

    .line 875
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->isWideScreen()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 876
    invoke-direct {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->updateSize()V

    :cond_2
    return-void
.end method

.method private updateSize()V
    .locals 4

    .line 854
    invoke-direct {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->isWideScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    iget v1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->wideScreenWidth:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const/16 v2, 0x50

    const/16 v3, 0x30

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->top:Z

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->wideScreenGravity:I

    or-int/2addr v2, v0

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->top:Z

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    :goto_1
    const/4 v0, -0x2

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addCallback(Lorg/telegram/ui/Components/Bulletin$Layout$Callback;)V
    .locals 1

    .line 970
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createTransition()Lorg/telegram/ui/Components/Bulletin$Layout$Transition;
    .locals 1

    .line 1036
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$Layout$SpringTransition;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Bulletin$Layout$SpringTransition;-><init>()V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1183
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    const/16 v1, 0xff

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->-$$Nest$fgetallowBlurAnimation(Lorg/telegram/ui/Components/Bulletin;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1184
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->blurVisibilityDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    if-nez v0, :cond_0

    .line 1185
    new-instance v0, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    new-instance v3, Lorg/telegram/ui/Components/Bulletin$Layout$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/Bulletin$Layout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Bulletin$Layout;)V

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;-><init>(Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable$DrawRunnable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->blurVisibilityDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    .line 1188
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->blurVisibilityDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;->hasBitmap()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1189
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->blurVisibilityDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;->render(IIIF)V

    .line 1192
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->blurVisibilityDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    iget v3, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->inOutOffset:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-static {v3, v2, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;->setAlpha(I)V

    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->blurVisibilityDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;->setBounds(IIII)V

    .line 1194
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->blurVisibilityDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 1199
    :cond_2
    invoke-virtual {p0, p1, v2, v1}, Lorg/telegram/ui/Components/Bulletin$Layout;->dispatchDrawImpl(Landroid/graphics/Canvas;ZI)V

    return-void
.end method

.method protected dispatchDrawImpl(Landroid/graphics/Canvas;ZI)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, p3

    .line 1207
    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v2, :cond_d

    if-nez v6, :cond_0

    goto/16 :goto_7

    .line 1211
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$Layout;->getMeasuredBackgroundHeight()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1212
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$Layout;->isTransitionRunning()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->delegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    if-eqz v2, :cond_c

    .line 1213
    iget-object v3, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    iget v3, v3, Lorg/telegram/ui/Components/Bulletin;->tag:I

    invoke-interface {v2, v3}, Lorg/telegram/ui/Components/Bulletin$Delegate;->getTopOffset(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    sub-float v8, v2, v3

    .line 1214
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$Layout;->getBottomOffset()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    sub-float v9, v2, v3

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez p2, :cond_1

    .line 1215
    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->delegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    iget-object v3, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    iget v3, v3, Lorg/telegram/ui/Components/Bulletin;->tag:I

    invoke-interface {v2, v3}, Lorg/telegram/ui/Components/Bulletin$Delegate;->clipWithGradient(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v12, v10

    goto :goto_0

    :cond_1
    move v12, v11

    .line 1216
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    const/4 v13, 0x0

    if-nez p2, :cond_2

    .line 1218
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v13, v8, v2, v9}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_2
    if-nez v12, :cond_4

    const/16 v2, 0xff

    if-eq v6, v2, :cond_3

    goto :goto_1

    :cond_3
    move v14, v11

    goto :goto_2

    :cond_4
    :goto_1
    move v14, v10

    :goto_2
    if-eqz v14, :cond_5

    .line 1222
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v5, v2

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1224
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1225
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v12, :cond_a

    .line 1227
    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41000000    # 8.0f

    if-nez v2, :cond_7

    .line 1228
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipPaint:Landroid/graphics/Paint;

    .line 1229
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1230
    new-instance v15, Landroid/graphics/LinearGradient;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-boolean v4, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->top:Z

    const/high16 v5, -0x1000000

    const/4 v6, 0x2

    if-eqz v4, :cond_6

    new-array v4, v6, [I

    aput v5, v4, v11

    aput v11, v4, v10

    :goto_3
    move-object/from16 v20, v4

    goto :goto_4

    :cond_6
    new-array v4, v6, [I

    aput v11, v4, v11

    aput v5, v4, v10

    goto :goto_3

    :goto_4
    new-array v4, v6, [F

    fill-array-data v4, :array_0

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v19, v2

    move-object/from16 v21, v4

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v15, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipGradient:Landroid/graphics/LinearGradient;

    .line 1231
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipMatrix:Landroid/graphics/Matrix;

    .line 1232
    iget-object v4, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v4, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1233
    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1235
    :cond_7
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1236
    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 1237
    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipMatrix:Landroid/graphics/Matrix;

    iget-boolean v4, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->top:Z

    if-eqz v4, :cond_8

    move v4, v8

    goto :goto_5

    :cond_8
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v9, v4

    :goto_5
    invoke-virtual {v2, v13, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1238
    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipGradient:Landroid/graphics/LinearGradient;

    iget-object v4, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1239
    iget-boolean v2, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->top:Z

    if-eqz v2, :cond_9

    .line 1240
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v4, v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v5, v8, v2

    iget-object v6, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move v3, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v1, p1

    goto :goto_6

    .line 1242
    :cond_9
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v3, v9, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move v5, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1244
    :goto_6
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    if-eqz v14, :cond_b

    .line 1247
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1249
    :cond_b
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1250
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    .line 1252
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1253
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_d
    :goto_7
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected dispatchDrawImplBlur(Landroid/graphics/Canvas;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1203
    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/Components/Bulletin$Layout;->dispatchDrawImpl(Landroid/graphics/Canvas;ZI)V

    return-void
.end method

.method protected getAccessibilityText()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBottomOffset()F
    .locals 2

    .line 997
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->delegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Components/Bulletin$Delegate;->bottomOffsetAnimated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->-$$Nest$fgetbottomOffsetSpring(Lorg/telegram/ui/Components/Bulletin;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->-$$Nest$fgetbottomOffsetSpring(Lorg/telegram/ui/Components/Bulletin;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 998
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    iget v0, v0, Lorg/telegram/ui/Components/Bulletin;->lastBottomOffset:I

    :goto_0
    int-to-float v0, v0

    return v0

    .line 1000
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->delegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    if-eqz v0, :cond_3

    .line 1001
    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v1, :cond_2

    iget v1, v1, Lorg/telegram/ui/Components/Bulletin;->tag:I

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/Bulletin$Delegate;->getBottomOffset(I)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public getBulletin()Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    .line 900
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    return-object v0
.end method

.method protected getMeasuredBackgroundHeight()I
    .locals 1

    .line 1176
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getThemedColor(I)I
    .locals 1

    .line 1258
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public getTopOffset()F
    .locals 2

    .line 990
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->delegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    if-eqz v0, :cond_1

    .line 991
    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v1, :cond_0

    iget v1, v1, Lorg/telegram/ui/Components/Bulletin;->tag:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/Bulletin$Delegate;->getTopOffset(I)I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isAttachedToBulletin()Z
    .locals 1

    .line 904
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTransitionRunning()Z
    .locals 1

    .line 776
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->transitionRunningEnter:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->transitionRunningExit:Z

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

.method protected onAttach(Lorg/telegram/ui/Components/Bulletin;)V
    .locals 3

    .line 909
    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    .line 910
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 911
    iget-object v2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;

    invoke-interface {v2, p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;->onAttach(Lorg/telegram/ui/Components/Bulletin$Layout;Lorg/telegram/ui/Components/Bulletin;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 842
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 843
    invoke-direct {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->updateSize()V

    return-void
.end method

.method protected onDetach()V
    .locals 3

    const/4 v0, 0x0

    .line 917
    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    .line 918
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 919
    iget-object v2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;

    invoke-interface {v2, p0}, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;->onDetach(Lorg/telegram/ui/Components/Bulletin$Layout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 921
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->blurVisibilityDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    if-eqz v0, :cond_1

    .line 922
    invoke-virtual {v0}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;->recycle()V

    :cond_1
    return-void
.end method

.method protected onEnterTransitionEnd()V
    .locals 3

    .line 949
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 950
    iget-object v2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;

    invoke-interface {v2, p0}, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;->onEnterTransitionEnd(Lorg/telegram/ui/Components/Bulletin$Layout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onEnterTransitionStart()V
    .locals 3

    .line 942
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 943
    iget-object v2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;

    invoke-interface {v2, p0}, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;->onEnterTransitionStart(Lorg/telegram/ui/Components/Bulletin$Layout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onExitTransitionEnd()V
    .locals 3

    .line 963
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 964
    iget-object v2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;

    invoke-interface {v2, p0}, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;->onExitTransitionEnd(Lorg/telegram/ui/Components/Bulletin$Layout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onExitTransitionStart()V
    .locals 3

    .line 956
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 957
    iget-object v2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;

    invoke-interface {v2, p0}, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;->onExitTransitionStart(Lorg/telegram/ui/Components/Bulletin$Layout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onHide()V
    .locals 3

    .line 935
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 936
    iget-object v2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;

    invoke-interface {v2, p0}, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;->onHide(Lorg/telegram/ui/Components/Bulletin$Layout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onShow()V
    .locals 3

    .line 928
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 929
    iget-object v2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;

    invoke-interface {v2, p0}, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;->onShow(Lorg/telegram/ui/Components/Bulletin$Layout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeCallback(Lorg/telegram/ui/Components/Bulletin$Layout$Callback;)V
    .locals 1

    .line 974
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected setBackground(I)V
    .locals 1

    const/16 v0, 0x10

    .line 808
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/Bulletin$Layout;->setBackground(II)V

    return-void
.end method

.method public setBackground(II)V
    .locals 0

    int-to-float p2, p2

    .line 812
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->background:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 782
    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setTop(Z)V
    .locals 1

    .line 847
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->top:Z

    if-eq v0, p1, :cond_0

    .line 848
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->top:Z

    .line 849
    invoke-direct {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->updateSize()V

    :cond_0
    return-void
.end method

.method public updatePosition()V
    .locals 3

    .line 979
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->delegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 980
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->top:Z

    if-eqz v2, :cond_1

    .line 981
    iget-object v2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v2, :cond_0

    iget v2, v2, Lorg/telegram/ui/Components/Bulletin;->tag:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v2}, Lorg/telegram/ui/Components/Bulletin$Delegate;->getTopOffset(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    goto :goto_1

    .line 983
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->getBottomOffset()F

    move-result v0

    add-float/2addr v1, v0

    :cond_2
    :goto_1
    neg-float v0, v1

    .line 986
    iget v1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->inOutOffset:F

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->top:Z

    if-eqz v2, :cond_3

    const/4 v2, -0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    :goto_2
    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 804
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->background:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
