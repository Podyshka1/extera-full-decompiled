.class public Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;
    }
.end annotation


# instance fields
.field private final animatedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final blurLocation:[I

.field private blurRenderNode:Ljava/lang/Object;

.field private blurView:Landroid/view/View;

.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final bounds:Landroid/graphics/RectF;

.field private clickListener:Lorg/telegram/messenger/Utilities$Callback;

.field private final clipBounds:Landroid/graphics/RectF;

.field private final clipPath:Landroid/graphics/Path;

.field private final currentAccount:I

.field private currentCancel:Ljava/lang/Runnable;

.field private currentLink:Ljava/lang/String;

.field private hasImage:Z

.field private hasResolved:Z

.field private final imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

.field private final resolvedListener:Ljava/lang/Runnable;

.field private subtitle:Lorg/telegram/ui/Components/Text;

.field private final thisLocation:[I

.field private title:Lorg/telegram/ui/Components/Text;

.field private touch:Z


# direct methods
.method public static synthetic $r8$lambda$07arbdd1QF1Jc7kwj_P0g_oh_cU(Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->lambda$dispatchTouchEvent$1(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2mf_sGXmI_SlIu_FSf4uuAzjOGs(Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->lambda$setLink$0(Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/Runnable;)V
    .locals 7

    .line 74
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x140

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->animatedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 61
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, v1, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounds:Landroid/graphics/RectF;

    .line 62
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, v1, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clipBounds:Landroid/graphics/RectF;

    .line 63
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p1, v1, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 66
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, v1, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clipPath:Landroid/graphics/Path;

    .line 67
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, v1, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->backgroundPaint:Landroid/graphics/Paint;

    .line 68
    new-instance p1, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object p1, v1, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const/4 p1, 0x2

    .line 167
    new-array v0, p1, [I

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->thisLocation:[I

    .line 168
    new-array p1, p1, [I

    iput-object p1, v1, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->blurLocation:[I

    .line 75
    iput p2, v1, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentAccount:I

    .line 76
    iput-object p3, v1, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolvedListener:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$dispatchTouchEvent$1(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 266
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;->open(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private synthetic lambda$setLink$0(Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentCancel:Ljava/lang/Runnable;

    .line 118
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 119
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasResolved:Z

    .line 120
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->setup()V

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 122
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolvedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 123
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private setup()V
    .locals 5

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/Text;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->title:Lorg/telegram/ui/Components/Text;

    .line 152
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 155
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 157
    :cond_1
    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 158
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 159
    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v2, Lorg/telegram/messenger/R$drawable;->settings_arrow:I

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/high16 v2, 0x3fa00000    # 1.25f

    .line 160
    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    .line 161
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 163
    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/Text;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->subtitle:Lorg/telegram/ui/Components/Text;

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;->setImage(Lorg/telegram/messenger/ImageReceiver;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasImage:Z

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 172
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->animatedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasResolved:Z

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v6

    .line 173
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->title:Lorg/telegram/ui/Components/Text;

    if-eqz v1, :cond_8

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->subtitle:Lorg/telegram/ui/Components/Text;

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v7, 0x0

    cmpg-float v3, v6, v7

    if-gtz v3, :cond_1

    goto/16 :goto_4

    .line 176
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    .line 177
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    const/high16 v1, 0x40a00000    # 5.0f

    .line 179
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v8, v1

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x42000000    # 32.0f

    .line 180
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    .line 181
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v11, v3

    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v12, v3

    const/high16 v3, 0x43480000    # 200.0f

    .line 183
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasImage:Z

    if-eqz v4, :cond_2

    add-float v4, v12, v9

    add-float/2addr v4, v12

    goto :goto_0

    :cond_2
    move v4, v7

    :goto_0
    add-float/2addr v4, v8

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v5

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v13

    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v4, v13

    add-float/2addr v4, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 184
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasImage:Z

    if-eqz v4, :cond_3

    move v4, v9

    goto :goto_1

    :cond_3
    move v4, v7

    :goto_1
    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v13

    add-float/2addr v13, v11

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v14

    add-float/2addr v13, v14

    invoke-static {v4, v13}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v4, v1

    add-float/2addr v4, v1

    .line 186
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v13, 0x3d4ccccd    # 0.05f

    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    const v13, 0x3f19999a    # 0.6f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v13, v14, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v13

    mul-float/2addr v1, v13

    .line 187
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v14, v6

    mul-float/2addr v5, v14

    .line 189
    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v14, v3

    div-float/2addr v14, v10

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v15, v4

    div-float/2addr v15, v10

    move/from16 v16, v10

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v3

    div-float v10, v10, v16

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v4

    div-float v3, v3, v16

    invoke-virtual {v13, v14, v15, v10, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 190
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clipBounds:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 191
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clipBounds:Landroid/graphics/RectF;

    invoke-static {v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->scaleRect(Landroid/graphics/RectF;F)V

    .line 192
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clipBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v7, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 193
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    const/high16 v10, 0x41400000    # 12.0f

    if-lt v3, v4, :cond_4

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->blurRenderNode:Ljava/lang/Object;

    if-eqz v3, :cond_4

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->blurView:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 194
    invoke-static {v3}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    move-result-object v3

    .line 195
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 196
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clipPath:Landroid/graphics/Path;

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clipBounds:Landroid/graphics/RectF;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    move/from16 v17, v10

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v13, v14, v15, v10}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 197
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->thisLocation:[I

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 198
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->blurView:Landroid/view/View;

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->blurLocation:[I

    invoke-virtual {v4, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 199
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clipBounds:Landroid/graphics/RectF;

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    float-to-int v10, v10

    const/16 v13, 0x1f

    invoke-virtual {v2, v4, v10, v13}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 200
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 201
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->blurLocation:[I

    const/4 v10, 0x0

    aget v13, v4, v10

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->thisLocation:[I

    aget v10, v14, v10

    sub-int/2addr v13, v10

    int-to-float v10, v13

    const/4 v13, 0x1

    aget v4, v4, v13

    aget v13, v14, v13

    sub-int/2addr v4, v13

    int-to-float v4, v4

    invoke-virtual {v2, v10, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 202
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->blurView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v4, v10

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->blurView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v3}, Landroid/graphics/RenderNode;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v10, v13

    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 203
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 204
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 205
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 206
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x70000000

    invoke-static {v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clipBounds:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v10, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    move/from16 v17, v10

    .line 209
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x23000000

    invoke-static {v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clipBounds:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v10, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 213
    :goto_2
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 214
    invoke-virtual {v2, v7, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 215
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 217
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasImage:Z

    if-eqz v1, :cond_5

    .line 218
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    div-float v3, v9, v16

    float-to-int v4, v3

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 219
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounds:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v8

    add-float/2addr v5, v12

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float/2addr v4, v3

    invoke-virtual {v1, v5, v4, v9, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 220
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 221
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 223
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v3

    add-float/2addr v3, v11

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    div-float v3, v3, v16

    sub-float v10, v1, v3

    .line 224
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->title:Lorg/telegram/ui/Components/Text;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasImage:Z

    if-eqz v4, :cond_6

    add-float v4, v12, v9

    add-float/2addr v4, v12

    goto :goto_3

    :cond_6
    move v4, v7

    :goto_3
    add-float/2addr v3, v4

    add-float/2addr v3, v8

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v4

    div-float v4, v4, v16

    add-float/2addr v4, v10

    const/4 v5, -0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    .line 225
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->subtitle:Lorg/telegram/ui/Components/Text;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasImage:Z

    if-eqz v3, :cond_7

    add-float/2addr v9, v12

    add-float v7, v9, v12

    :cond_7
    add-float/2addr v2, v7

    add-float v3, v2, v8

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v2

    add-float/2addr v10, v2

    add-float/2addr v10, v11

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v2

    div-float v2, v2, v16

    add-float v4, v10, v2

    const/high16 v2, -0x1000000

    const v5, -0x60000001

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    .line 227
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    :goto_4
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 249
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasResolved:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 253
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v3, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 255
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->touch:Z

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v3, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_5

    .line 259
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 262
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 263
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clickListener:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

    if-eqz v0, :cond_3

    .line 264
    new-instance v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;)V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 271
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 272
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->touch:Z

    goto :goto_0

    .line 273
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 274
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 275
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->touch:Z

    .line 277
    :cond_5
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->touch:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    return v1

    :cond_7
    :goto_1
    return v2

    .line 250
    :cond_8
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->touch:Z

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return v1
.end method

.method public inTouch()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->touch:Z

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

.method public isResolved()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasResolved:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 232
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 238
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method public setBlurRenderNode(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->blurView:Landroid/view/View;

    .line 87
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->blurRenderNode:Ljava/lang/Object;

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 3

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 99
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentCancel:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 100
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 101
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentCancel:Ljava/lang/Runnable;

    .line 103
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasResolved:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasResolved:Z

    .line 105
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentLink:Ljava/lang/String;

    .line 106
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolvedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_7

    .line 107
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 109
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

    if-nez v0, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentCancel:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    :cond_3
    if-eqz v0, :cond_6

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;->sourceLink:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentLink:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 110
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentCancel:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 111
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 112
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentCancel:Ljava/lang/Runnable;

    .line 114
    :cond_5
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

    .line 115
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentLink:Ljava/lang/String;

    .line 116
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentAccount:I

    new-instance v1, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;)V

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;->resolve(ILjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentCancel:Ljava/lang/Runnable;

    return-void

    .line 126
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasResolved:Z

    if-nez v1, :cond_7

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;->sourceLink:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasResolved:Z

    .line 128
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->setup()V

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 130
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolvedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_7

    .line 131
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method

.method public whenClicked(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clickListener:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method
