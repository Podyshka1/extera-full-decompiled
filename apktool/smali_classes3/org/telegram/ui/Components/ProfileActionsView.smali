.class public abstract Lorg/telegram/ui/Components/ProfileActionsView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ProfileActionsView$Action;,
        Lorg/telegram/ui/Components/ProfileActionsView$OnActionClickListener;,
        Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;
    }
.end annotation


# instance fields
.field private final actions:Ljava/util/List;

.field private activeCount:I

.field private final allAvailableActions:Ljava/util/Set;

.field private avatarView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

.field private callAction:Lorg/telegram/ui/Components/ProfileActionsView$Action;

.field private callAnimationStateLoaded:Z

.field private callBackwardAnimateFromX:F

.field private callBackwardAnimateFromY:F

.field private final clipAvatarPath:Landroid/graphics/Path;

.field public clipHeight:F

.field private final clipPath:Landroid/graphics/Path;

.field private color:I

.field private currentHeight:F

.field private downTime:J

.field private downX:F

.field private downY:F

.field private firstAction:Lorg/telegram/ui/Components/ProfileActionsView$Action;

.field private hasColorById:Z

.field private hit:Lorg/telegram/ui/Components/ProfileActionsView$Action;

.field private ignoreRect:Z

.field public isAnimatingCallAction:Z

.field private isApplying:Z

.field private isNotificationsEnabled:Z

.field public isOpeningLayout:Z

.field private lastAction:Lorg/telegram/ui/Components/ProfileActionsView$Action;

.field private lastColorFilter:Landroid/graphics/ColorFilter;

.field private lastColorFilterColor:I

.field private final matrix:Landroid/graphics/Matrix;

.field public mode:I

.field private onActionClickListener:Lorg/telegram/ui/Components/ProfileActionsView$OnActionClickListener;

.field private final paint:Landroid/graphics/Paint;

.field private parentExpanded:F

.field private final pathTmp:Landroid/graphics/Path;

.field private radialGradient:Landroid/graphics/RadialGradient;

.field private renderNode:Landroid/graphics/RenderNode;

.field private renderNodeScale:F

.field private renderNodeTranslateY:F

.field private final shaderPaint:Landroid/graphics/Paint;

.field private final targetHeight:I

.field private textColor:I

.field final textPadding:F

.field final top:F

.field final xpadding:F

.field final ypadding:F


# direct methods
.method public static synthetic $r8$lambda$6l_EqQDYfg9tJMBcXflockeZmGs(Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/Components/ProfileActionsView$Action;)Z
    .locals 0

    .line 644
    invoke-static {p1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetrippleDrawable(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$8ngVJAgRu6XSMWkZKDLMOiF7er0(Lorg/telegram/ui/Components/ProfileActionsView;Lorg/telegram/ui/Components/ProfileActionsView$Action;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ProfileActionsView;->lambda$onTouchEvent$0(Lorg/telegram/ui/Components/ProfileActionsView$Action;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cu0RL9KbDHK6dgpS5gypSCcn7bA(Lorg/telegram/ui/Components/ProfileActionsView;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ProfileActionsView;->lambda$applyVisibleActions$2(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetfirstAction(Lorg/telegram/ui/Components/ProfileActionsView;)Lorg/telegram/ui/Components/ProfileActionsView$Action;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->firstAction:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastAction(Lorg/telegram/ui/Components/ProfileActionsView;)Lorg/telegram/ui/Components/ProfileActionsView$Action;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->lastAction:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 140
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->actions:Ljava/util/List;

    .line 55
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->paint:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->shaderPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->isAnimatingCallAction:Z

    const/4 v1, 0x1

    .line 60
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->isOpeningLayout:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 61
    iput v1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->clipHeight:F

    .line 62
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->clipAvatarPath:Landroid/graphics/Path;

    .line 63
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->clipPath:Landroid/graphics/Path;

    .line 65
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->pathTmp:Landroid/graphics/Path;

    .line 83
    iput v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->activeCount:I

    .line 85
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->ignoreRect:Z

    const/4 v2, 0x0

    .line 86
    iput v2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->currentHeight:F

    const/4 v2, 0x0

    .line 88
    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->onActionClickListener:Lorg/telegram/ui/Components/ProfileActionsView$OnActionClickListener;

    .line 90
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/ProfileActionsView;->allAvailableActions:Ljava/util/Set;

    const/4 v3, 0x6

    .line 92
    iput v3, p0, Lorg/telegram/ui/Components/ProfileActionsView;->mode:I

    .line 123
    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->callAction:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    .line 130
    iput v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->color:I

    .line 133
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/ProfileActionsView;->matrix:Landroid/graphics/Matrix;

    const/4 v3, -0x1

    .line 137
    iput v3, p0, Lorg/telegram/ui/Components/ProfileActionsView;->textColor:I

    .line 564
    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hit:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    .line 978
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->callAnimationStateLoaded:Z

    .line 979
    iput v1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->callBackwardAnimateFromX:F

    .line 980
    iput v1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->callBackwardAnimateFromY:F

    const/high16 v1, -0x1000000

    .line 142
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0x28

    .line 143
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 145
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->ypadding:F

    iput p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->xpadding:F

    const/high16 v1, 0x41000000    # 8.0f

    .line 146
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->top:F

    const/high16 v2, 0x40800000    # 4.0f

    .line 147
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->textPadding:F

    int-to-float p2, p2

    sub-float/2addr p2, p1

    sub-float/2addr p2, v1

    float-to-int p1, p2

    .line 149
    iput p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->targetHeight:I

    .line 151
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private applyVisibleActions()V
    .locals 14

    .line 758
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->isApplying:Z

    if-eqz v0, :cond_0

    return-void

    .line 760
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->mode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 761
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->activeCount:I

    .line 762
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 766
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 767
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileActionsView;->hasJoin()Z

    move-result v2

    .line 769
    iget v3, p0, Lorg/telegram/ui/Components/ProfileActionsView;->mode:I

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_b

    const/16 v1, 0x9

    const/16 v8, 0xb

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/16 v13, 0xa

    if-eq v3, v7, :cond_7

    if-eq v3, v12, :cond_6

    if-eq v3, v5, :cond_3

    if-eq v3, v11, :cond_3

    if-eq v3, v4, :cond_2

    goto/16 :goto_2

    .line 778
    :cond_2
    invoke-direct {p0, v0, v6}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfAvailable(Ljava/util/List;I)V

    .line 779
    invoke-direct {p0, v0, v7}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfAvailable(Ljava/util/List;I)V

    goto/16 :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 804
    invoke-direct {p0, v0, v10}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfAvailable(Ljava/util/List;I)V

    goto :goto_0

    .line 806
    :cond_4
    invoke-direct {p0, v0, v6}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfAvailable(Ljava/util/List;I)V

    .line 808
    :goto_0
    invoke-direct {p0, v0, v7}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfAvailable(Ljava/util/List;I)V

    if-eqz v2, :cond_5

    .line 810
    invoke-direct {p0, v9}, Lorg/telegram/ui/Components/ProfileActionsView;->getOrCreate(I)Lorg/telegram/ui/Components/ProfileActionsView$Action;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 812
    :cond_5
    invoke-direct {p0, v0, v13}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfAvailable(Ljava/util/List;I)V

    .line 813
    invoke-direct {p0, v0, v8, v13}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfNotAvailable(Ljava/util/List;II)V

    .line 814
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfAvailable(Ljava/util/List;I)V

    goto :goto_2

    .line 818
    :cond_6
    invoke-direct {p0, v0, v6}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfAvailable(Ljava/util/List;I)V

    .line 819
    invoke-direct {p0, v0, v7}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfAvailable(Ljava/util/List;I)V

    .line 820
    invoke-direct {p0, v0, v11}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfAvailable(Ljava/util/List;I)V

    const/16 v1, 0xd

    .line 821
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ProfileActionsView;->getOrCreate(I)Lorg/telegram/ui/Components/ProfileActionsView$Action;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_8

    .line 783
    invoke-direct {p0, v0, v10}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfAvailable(Ljava/util/List;I)V

    goto :goto_1

    .line 785
    :cond_8
    invoke-direct {p0, v0, v13}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfAvailable(Ljava/util/List;I)V

    .line 786
    invoke-direct {p0, v0, v8, v13}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfNotAvailable(Ljava/util/List;II)V

    .line 788
    :goto_1
    invoke-direct {p0, v0, v7}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfAvailable(Ljava/util/List;I)V

    const/16 v3, 0xc

    if-nez v2, :cond_9

    .line 790
    invoke-direct {p0, v0, v12}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfAvailable(Ljava/util/List;I)V

    .line 791
    invoke-direct {p0, v0, v5, v12, v3}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfNotAvailable2(Ljava/util/List;III)V

    .line 793
    :cond_9
    invoke-direct {p0, v0, v11, v3}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfNotAvailable(Ljava/util/List;II)V

    if-eqz v2, :cond_a

    .line 795
    invoke-direct {p0, v9}, Lorg/telegram/ui/Components/ProfileActionsView;->getOrCreate(I)Lorg/telegram/ui/Components/ProfileActionsView$Action;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 797
    :cond_a
    invoke-direct {p0, v0, v3}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfAvailable(Ljava/util/List;I)V

    .line 798
    invoke-direct {p0, v0, v1, v3}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfNotAvailable(Ljava/util/List;II)V

    goto :goto_2

    .line 771
    :cond_b
    invoke-direct {p0, v0, v6}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfAvailable(Ljava/util/List;I)V

    .line 772
    invoke-direct {p0, v0, v4}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfAvailable(Ljava/util/List;I)V

    .line 773
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfAvailable(Ljava/util/List;I)V

    .line 774
    invoke-direct {p0, v0, v7}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfAvailable(Ljava/util/List;I)V

    .line 775
    invoke-direct {p0, v0, v5, v1}, Lorg/telegram/ui/Components/ProfileActionsView;->insertIfNotAvailable(Ljava/util/List;II)V

    .line 825
    :goto_2
    new-instance v1, Lorg/telegram/ui/Components/ProfileActionsView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/ProfileActionsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ProfileActionsView;Ljava/util/List;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkPaints()V
    .locals 0

    return-void
.end method

.method private createColorShader()V
    .locals 10

    .line 203
    iget v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->color:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hasColorById:Z

    if-nez v1, :cond_1

    .line 205
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    .line 209
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_2

    :goto_0
    return-void

    .line 212
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileActionsView;->getGap()F

    move-result v1

    int-to-float v0, v0

    .line 213
    iget v2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->activeCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->xpadding:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->activeCount:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 215
    new-instance v3, Landroid/graphics/RadialGradient;

    div-float v4, v0, v2

    iget v1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->targetHeight:I

    int-to-float v1, v1

    div-float v5, v1, v2

    .line 218
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hasColorById:Z

    if-eqz v1, :cond_3

    const v1, 0x3f266666    # 0.65f

    mul-float/2addr v0, v1

    :goto_1
    move v6, v0

    goto :goto_2

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :goto_2
    iget v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->color:I

    const v1, 0x3f4ccccd    # 0.8f

    .line 219
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/ProfileActionsView;->color:I

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v3 .. v9}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ProfileActionsView;->radialGradient:Landroid/graphics/RadialGradient;

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->shaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private drawAction(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/ProfileActionsView$Action;FF)V
    .locals 11

    if-eqz p2, :cond_d

    .line 454
    iget-boolean v0, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isDeleted:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 458
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileActionsView;->isButtonColorLight()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    move v3, v2

    goto :goto_0

    .line 459
    :cond_1
    iget v3, p0, Lorg/telegram/ui/Components/ProfileActionsView;->parentExpanded:F

    const/high16 v4, 0x3f400000    # 0.75f

    sub-float/2addr v3, v4

    const/high16 v4, 0x3e800000    # 0.25f

    div-float/2addr v3, v4

    invoke-static {v3, v1, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    :goto_0
    if-eqz v0, :cond_2

    .line 460
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-ge v0, v4, :cond_2

    move v3, v1

    .line 464
    :cond_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const/4 v4, -0x1

    .line 465
    invoke-static {v0, v4, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v9

    .line 466
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->lastColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->lastColorFilterColor:I

    if-eq v0, v9, :cond_4

    .line 467
    :cond_3
    iput v9, p0, Lorg/telegram/ui/Components/ProfileActionsView;->lastColorFilterColor:I

    .line 468
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v9, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->lastColorFilter:Landroid/graphics/ColorFilter;

    .line 471
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 472
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->getAlpha()F

    move-result v0

    mul-float v10, p4, v0

    .line 473
    iget-object p4, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result p4

    .line 474
    iget-object v0, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    .line 475
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->getScale()F

    move-result v4

    mul-float/2addr p3, v4

    .line 476
    invoke-virtual {p1, p3, p3, p4, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 477
    iget-object p3, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 479
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ProfileActionsView;->updateBounds(Lorg/telegram/ui/Components/ProfileActionsView$Action;)V

    .line 481
    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetbounds(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetbounds(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v0

    int-to-float p3, p3

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgettext(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/Text;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v0

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgettextScale(Lorg/telegram/ui/Components/ProfileActionsView$Action;)F

    move-result v4

    mul-float/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    sub-float/2addr p3, v0

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float v8, p3, v0

    .line 482
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 483
    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgettextScale(Lorg/telegram/ui/Components/ProfileActionsView$Action;)F

    move-result p3

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgettextScale(Lorg/telegram/ui/Components/ProfileActionsView$Action;)F

    move-result v0

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgettext(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/Text;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v5

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgettextScale(Lorg/telegram/ui/Components/ProfileActionsView$Action;)F

    move-result v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v4

    add-float/2addr v5, v8

    invoke-virtual {p1, p3, v0, p4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 484
    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgettext(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/Text;

    move-result-object v5

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgettext(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/Text;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result p3

    div-float/2addr p3, v4

    sub-float v7, p4, p3

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    .line 485
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 487
    iget p1, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->iconTranslationY:I

    if-eqz p1, :cond_5

    int-to-float p1, p1

    .line 488
    invoke-virtual {v6, v1, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 491
    :cond_5
    iget p1, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->iconScale:F

    cmpl-float p3, p1, v2

    if-eqz p3, :cond_6

    .line 492
    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetbounds(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    int-to-float p3, p3

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetbounds(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {v6, p1, p1, p3, p4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 494
    :cond_6
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->isAnimatingCallAction:Z

    if-eqz p1, :cond_7

    iget p1, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->key:I

    const/4 p3, 0x5

    if-eq p1, p3, :cond_c

    .line 495
    :cond_7
    sget-object p1, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/exteragram/messenger/icons/IconManager;->isBasePackOnly(I)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    sub-float/2addr v2, v3

    mul-float v1, v2, v10

    :goto_1
    if-nez p1, :cond_9

    move p1, v10

    goto :goto_2

    :cond_9
    mul-float p1, v3, v10

    .line 498
    :goto_2
    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetdrawableAnimated(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 499
    iget p3, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->key:I

    const/4 p4, 0x1

    if-ne p3, p4, :cond_a

    .line 500
    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetdrawableOutline(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {p0, v6, p3, v1}, Lorg/telegram/ui/Components/ProfileActionsView;->drawActionDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;F)V

    .line 501
    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetdrawableAnimated(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p3

    invoke-direct {p0, v6, p3, p1}, Lorg/telegram/ui/Components/ProfileActionsView;->drawActionDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;F)V

    goto :goto_3

    .line 503
    :cond_a
    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetdrawableAnimated(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    invoke-direct {p0, v6, p1, v10}, Lorg/telegram/ui/Components/ProfileActionsView;->drawActionDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;F)V

    goto :goto_3

    .line 506
    :cond_b
    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetdrawableOutline(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {p0, v6, p3, v1}, Lorg/telegram/ui/Components/ProfileActionsView;->drawActionDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;F)V

    .line 507
    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetdrawableFilled(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {p0, v6, p3, p1}, Lorg/telegram/ui/Components/ProfileActionsView;->drawActionDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;F)V

    .line 511
    :cond_c
    :goto_3
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 512
    invoke-direct {p0, v6, p2, v10}, Lorg/telegram/ui/Components/ProfileActionsView;->drawLoading(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/ProfileActionsView$Action;F)V

    :cond_d
    :goto_4
    return-void
.end method

.method private drawActionDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;F)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->lastColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 523
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 524
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawGradient(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/ProfileActionsView$Action;F)V
    .locals 3

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->radialGradient:Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->shaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 378
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->shaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->getAlpha()F

    move-result p2

    mul-float/2addr p2, p3

    int-to-float p3, v0

    mul-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 379
    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->matrix:Landroid/graphics/Matrix;

    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 380
    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->radialGradient:Landroid/graphics/RadialGradient;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 381
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileActionsView;->getRoundRadius()F

    move-result p2

    .line 382
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->shaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, p2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 383
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->shaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method private drawLoading(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/ProfileActionsView$Action;F)V
    .locals 6

    .line 528
    iget v0, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->stopDelay:I

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->stopDelay:I

    int-to-long v2, v2

    iget-wide v4, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->startTime:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 529
    iput-boolean v0, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isLoading:Z

    .line 532
    :cond_0
    iget-boolean v0, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isLoading:Z

    if-eqz v0, :cond_3

    .line 533
    iget-object v0, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-nez v0, :cond_1

    .line 534
    new-instance v0, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>()V

    iput-object v0, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    .line 535
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 536
    iget-object v0, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const v1, 0x3dcccccd    # 0.1f

    const/4 v2, -0x1

    .line 537
    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    const v3, 0x3e99999a    # 0.3f

    .line 538
    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    const v4, 0x3eb33333    # 0.35f

    .line 539
    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    const v5, 0x3f4ccccd    # 0.8f

    .line 540
    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    .line 536
    invoke-virtual {v0, v1, v3, v4, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(IIII)V

    .line 542
    iget-object v0, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setAppearByGradient(Z)V

    .line 543
    iget-object v0, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3fa00000    # 1.25f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 544
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappeared()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappearing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 545
    :cond_2
    iget-object v0, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->reset()V

    .line 546
    iget-object v0, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->resetDisappear()V

    goto :goto_0

    .line 548
    :cond_3
    iget-object v0, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappearing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappeared()Z

    move-result v0

    if-nez v0, :cond_4

    .line 549
    iget-object v0, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->disappear()V

    .line 552
    :cond_4
    :goto_0
    iget-object v0, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz v0, :cond_5

    .line 553
    iget-object v1, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setBounds(Landroid/graphics/RectF;)V

    .line 554
    iget-object v0, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileActionsView;->getRoundRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadii(F)V

    .line 555
    iget-object v0, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p3, v1

    float-to-int p3, p3

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/LoadingDrawable;->setAlpha(I)V

    .line 556
    iget-object p2, p2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    return-void
.end method

.method private drawRenderNode(Landroid/graphics/Canvas;)V
    .locals 10

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->renderNode:Landroid/graphics/RenderNode;

    if-eqz v0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 392
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->avatarView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 395
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v2

    .line 396
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    sub-float v3, v1, v3

    .line 397
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v1, v4

    .line 398
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v5

    mul-float/2addr v4, v5

    .line 400
    iget-object v5, p0, Lorg/telegram/ui/Components/ProfileActionsView;->clipAvatarPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    move v5, v1

    .line 401
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->clipAvatarPath:Landroid/graphics/Path;

    add-float/2addr v5, v2

    add-float/2addr v4, v3

    iget-object v6, p0, Lorg/telegram/ui/Components/ProfileActionsView;->avatarView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    .line 406
    invoke-virtual {v6}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->getRoundRadiusForExpand()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v7

    mul-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/ProfileActionsView;->avatarView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    .line 407
    invoke-virtual {v7}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->getRoundRadiusForExpand()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    mul-float/2addr v7, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move v9, v5

    move v5, v4

    move v4, v9

    .line 401
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 410
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->clipAvatarPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 413
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v0, 0x0

    .line 414
    iget v1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->renderNodeTranslateY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 415
    iget v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->renderNodeScale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 416
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 418
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_0
    return-void
.end method

.method private find(I)Lorg/telegram/ui/Components/ProfileActionsView$Action;
    .locals 1

    .line 960
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->actions:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/ProfileActionsView;->find(Ljava/util/List;I)Lorg/telegram/ui/Components/ProfileActionsView$Action;

    move-result-object p1

    return-object p1
.end method

.method private find(Ljava/util/List;I)Lorg/telegram/ui/Components/ProfileActionsView$Action;
    .locals 4

    .line 964
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 966
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    .line 967
    iget-boolean v3, v2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isDeleting:Z

    if-nez v3, :cond_0

    iget v3, v2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->key:I

    if-ne v3, p2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getGap()F
    .locals 2

    .line 257
    iget v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->xpadding:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getItemWidth()F
    .locals 4

    .line 261
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 262
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileActionsView;->getGap()F

    move-result v1

    int-to-float v0, v0

    .line 263
    iget v2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->activeCount:I

    add-int/lit8 v3, v2, -0x1

    int-to-float v3, v3

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->xpadding:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method private getOrCreate(I)Lorg/telegram/ui/Components/ProfileActionsView$Action;
    .locals 5

    .line 877
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ProfileActionsView;->find(I)Lorg/telegram/ui/Components/ProfileActionsView$Action;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_0

    .line 880
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ProfileActionsView;->updateNotification(Lorg/telegram/ui/Components/ProfileActionsView$Action;Z)V

    :cond_0
    return-object v0

    :cond_1
    const/16 v3, 0x12c

    const/16 v4, 0x1f4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 943
    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->STOP:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;-><init>(Lorg/telegram/ui/Components/ProfileActionsView;Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;)V

    .line 944
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->supportsLoading:Z

    .line 945
    iput v3, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->stopDelay:I

    goto/16 :goto_0

    .line 940
    :pswitch_1
    new-instance v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->STORY:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;-><init>(Lorg/telegram/ui/Components/ProfileActionsView;Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;)V

    goto/16 :goto_0

    .line 934
    :pswitch_2
    new-instance v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->STREAM:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;-><init>(Lorg/telegram/ui/Components/ProfileActionsView;Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;)V

    .line 935
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->supportsLoading:Z

    .line 936
    sget v1, Lorg/telegram/messenger/R$raw;->profile_voicechat:I

    iput v1, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->supportsAnimate:I

    .line 937
    iput v4, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->stopDelay:I

    goto/16 :goto_0

    .line 928
    :pswitch_3
    new-instance v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->VOICE_CHAT:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;-><init>(Lorg/telegram/ui/Components/ProfileActionsView;Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;)V

    .line 929
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->supportsLoading:Z

    .line 930
    sget v1, Lorg/telegram/messenger/R$raw;->profile_voicechat:I

    iput v1, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->supportsAnimate:I

    .line 931
    iput v4, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->stopDelay:I

    goto/16 :goto_0

    .line 922
    :pswitch_4
    new-instance v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->LEAVE:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;-><init>(Lorg/telegram/ui/Components/ProfileActionsView;Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;)V

    .line 923
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->supportsLoading:Z

    .line 924
    sget v1, Lorg/telegram/messenger/R$raw;->profile_leave:I

    iput v1, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->supportsAnimate:I

    .line 925
    iput v3, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->stopDelay:I

    goto :goto_0

    .line 917
    :pswitch_5
    new-instance v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->REPORT:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;-><init>(Lorg/telegram/ui/Components/ProfileActionsView;Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;)V

    .line 918
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->supportsLoading:Z

    .line 919
    iput v4, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->stopDelay:I

    goto :goto_0

    .line 912
    :pswitch_6
    new-instance v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->JOIN:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;-><init>(Lorg/telegram/ui/Components/ProfileActionsView;Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;)V

    .line 913
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->supportsLoading:Z

    .line 914
    iput v3, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->callDelay:I

    goto :goto_0

    .line 907
    :pswitch_7
    new-instance v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->VIDEO:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;-><init>(Lorg/telegram/ui/Components/ProfileActionsView;Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;)V

    .line 908
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->supportsLoading:Z

    .line 909
    iput v4, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->stopDelay:I

    goto :goto_0

    .line 901
    :pswitch_8
    new-instance v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->CALL:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;-><init>(Lorg/telegram/ui/Components/ProfileActionsView;Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;)V

    .line 902
    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->callAction:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    .line 903
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->supportsLoading:Z

    .line 904
    iput v4, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->stopDelay:I

    goto :goto_0

    .line 898
    :pswitch_9
    new-instance v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->SHARE:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;-><init>(Lorg/telegram/ui/Components/ProfileActionsView;Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;)V

    goto :goto_0

    .line 893
    :pswitch_a
    new-instance v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->GIFT:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;-><init>(Lorg/telegram/ui/Components/ProfileActionsView;Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;)V

    .line 894
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->supportsLoading:Z

    const/16 v1, 0xc8

    .line 895
    iput v1, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->stopDelay:I

    goto :goto_0

    .line 890
    :pswitch_b
    new-instance v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->DISCUSS:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;-><init>(Lorg/telegram/ui/Components/ProfileActionsView;Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;)V

    goto :goto_0

    .line 948
    :pswitch_c
    new-instance v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ProfileActionsView$Action;-><init>(Lorg/telegram/ui/Components/ProfileActionsView;)V

    .line 949
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ProfileActionsView;->updateNotification(Lorg/telegram/ui/Components/ProfileActionsView$Action;Z)V

    goto :goto_0

    .line 887
    :pswitch_d
    new-instance v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->MESSAGE:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;-><init>(Lorg/telegram/ui/Components/ProfileActionsView;Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;)V

    :goto_0
    if-eqz v0, :cond_2

    .line 954
    iput p1, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->key:I

    :cond_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hasJoin()Z
    .locals 2

    .line 872
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->allAvailableActions:Ljava/util/Set;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->allAvailableActions:Ljava/util/Set;

    const/16 v1, 0x9

    .line 873
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private insertIfAvailable(Ljava/util/List;I)V
    .locals 2

    .line 851
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->allAvailableActions:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ProfileActionsView;->getOrCreate(I)Lorg/telegram/ui/Components/ProfileActionsView$Action;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private insertIfNotAvailable(Ljava/util/List;II)V
    .locals 2

    .line 857
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->allAvailableActions:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->allAvailableActions:Ljava/util/Set;

    .line 858
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 859
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ProfileActionsView;->getOrCreate(I)Lorg/telegram/ui/Components/ProfileActionsView$Action;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private insertIfNotAvailable2(Ljava/util/List;III)V
    .locals 2

    .line 864
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->allAvailableActions:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->allAvailableActions:Ljava/util/Set;

    .line 865
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Components/ProfileActionsView;->allAvailableActions:Ljava/util/Set;

    .line 866
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 867
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ProfileActionsView;->getOrCreate(I)Lorg/telegram/ui/Components/ProfileActionsView$Action;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private isButtonColorLight()Z
    .locals 2

    .line 195
    iget v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->color:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f3851ec    # 0.72f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$applyVisibleActions$2(Ljava/util/List;)V
    .locals 4

    .line 826
    iget v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->activeCount:I

    .line 827
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->activeCount:I

    if-eq v0, v1, :cond_0

    .line 829
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->radialGradient:Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    .line 830
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileActionsView;->createColorShader()V

    .line 833
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 835
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->actions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    .line 836
    iget-boolean v3, v2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isDeleting:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isDeleted:Z

    if-nez v3, :cond_1

    .line 837
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 838
    :cond_1
    iget v3, v2, Lorg/telegram/ui/Components/ProfileActionsView$Action;->key:I

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Components/ProfileActionsView;->find(Ljava/util/List;I)Lorg/telegram/ui/Components/ProfileActionsView$Action;

    move-result-object v3

    if-nez v3, :cond_2

    .line 839
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->delete()V

    .line 840
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 844
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 845
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->actions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 846
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$0(Lorg/telegram/ui/Components/ProfileActionsView$Action;)V
    .locals 3

    .line 630
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->onActionClickListener:Lorg/telegram/ui/Components/ProfileActionsView$OnActionClickListener;

    iget v1, p1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->key:I

    iget-object p1, p1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-interface {v0, v1, v2, p1}, Lorg/telegram/ui/Components/ProfileActionsView$OnActionClickListener;->onClick(IFF)V

    return-void
.end method

.method private measureActions()V
    .locals 5

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->activeCount:I

    if-gtz v0, :cond_0

    goto :goto_2

    .line 230
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileActionsView;->getItemWidth()F

    move-result v0

    const/4 v1, 0x0

    .line 231
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->actions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 232
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->actions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    .line 233
    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgettext(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/Text;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 235
    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgettext(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/Text;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Text;->setMaxWidth(F)Lorg/telegram/ui/Components/Text;

    .line 236
    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgettext(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/Text;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getLineCount()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    const/high16 v3, 0x3f400000    # 0.75f

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgettext(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/Text;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getLineCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    const v3, 0x3f59999a    # 0.85f

    goto :goto_1

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fputtextScale(Lorg/telegram/ui/Components/ProfileActionsView$Action;F)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private stopLoading(Lorg/telegram/ui/Components/ProfileActionsView$Action;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 426
    iget-boolean v0, p1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 427
    iput-boolean v0, p1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isLoading:Z

    .line 428
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private updateBounds(Lorg/telegram/ui/Components/ProfileActionsView$Action;)V
    .locals 6

    .line 433
    iget-object v0, p1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 434
    iget-object v1, p1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    const/high16 v1, 0x41c00000    # 24.0f

    .line 436
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v1

    .line 441
    iget v3, p0, Lorg/telegram/ui/Components/ProfileActionsView;->targetHeight:I

    int-to-float v3, v3

    invoke-static {p1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgettext(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/Text;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v4

    invoke-static {p1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgettextScale(Lorg/telegram/ui/Components/ProfileActionsView$Action;)F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float v4, v0, v2

    float-to-int v4, v4

    float-to-int v5, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-float/2addr v3, v1

    float-to-int v1, v3

    .line 442
    invoke-virtual {p1, v4, v5, v0, v1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->setBounds(IIII)V

    return-void
.end method

.method private updateClipPath(Lorg/telegram/ui/Components/ProfileActionsView$Action;FLandroid/graphics/Path;)V
    .locals 5

    .line 68
    invoke-virtual {p3}, Landroid/graphics/Path;->rewind()V

    .line 69
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 71
    iget-object v1, p1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->getScale()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float/2addr v1, v3

    .line 72
    iget-object v3, p1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->getScale()F

    move-result p1

    sub-float/2addr v4, p1

    mul-float/2addr v3, v4

    .line 73
    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 75
    sget-object p1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p3, v0, p2, p2, p1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private updateNotification(Lorg/telegram/ui/Components/ProfileActionsView$Action;Z)V
    .locals 2

    if-eqz p2, :cond_1

    .line 736
    sget-object p2, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/exteragram/messenger/icons/IconManager;->isBasePackOnly(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 737
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->isNotificationsEnabled:Z

    if-eqz p2, :cond_0

    .line 738
    sget-object p2, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->NOTIFICATION_MUTE:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    iget v0, p2, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->setText(Ljava/lang/CharSequence;)V

    .line 739
    sget v0, Lorg/telegram/messenger/R$raw;->profile_unmuting:I

    iget v1, p2, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->filledIcon:I

    iget p2, p2, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->outlineIcon:I

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->updateDrawable(III)V

    return-void

    .line 745
    :cond_0
    sget-object p2, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->NOTIFICATION_UNMUTE:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    iget v0, p2, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->setText(Ljava/lang/CharSequence;)V

    .line 746
    sget v0, Lorg/telegram/messenger/R$raw;->profile_muting:I

    iget v1, p2, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->filledIcon:I

    iget p2, p2, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->outlineIcon:I

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->updateDrawable(III)V

    return-void

    .line 753
    :cond_1
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->isNotificationsEnabled:Z

    if-eqz p2, :cond_2

    sget-object p2, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->NOTIFICATION_MUTE:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    goto :goto_0

    :cond_2
    sget-object p2, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->NOTIFICATION_UNMUTE:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->update(Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;)V

    return-void
.end method


# virtual methods
.method public addCameraAction()V
    .locals 2

    .line 686
    new-instance v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->SET_PHOTO:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;-><init>(Lorg/telegram/ui/Components/ProfileActionsView;Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;)V

    const/16 v1, 0xe

    .line 687
    iput v1, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->key:I

    .line 688
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEditInfo()V
    .locals 2

    .line 692
    new-instance v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->EDIT_INFO:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;-><init>(Lorg/telegram/ui/Components/ProfileActionsView;Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;)V

    const/16 v1, 0x10

    .line 693
    iput v1, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->key:I

    .line 694
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSettings()V
    .locals 2

    .line 698
    new-instance v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->SETTINGS:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;-><init>(Lorg/telegram/ui/Components/ProfileActionsView;Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;)V

    const/16 v1, 0x11

    .line 699
    iput v1, v0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->key:I

    .line 700
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beginApplyingActions()V
    .locals 1

    const/4 v0, 0x1

    .line 650
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->isApplying:Z

    return-void
.end method

.method public canHaveJoinAction()Z
    .locals 3

    .line 732
    iget v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public commitActions()V
    .locals 1

    .line 654
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->isApplying:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 655
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->isApplying:Z

    .line 656
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileActionsView;->applyVisibleActions()V

    :cond_0
    return-void
.end method

.method public drawingBlur(Landroid/graphics/RenderNode;Lorg/telegram/ui/ProfileActivity$AvatarImageView;FF)V
    .locals 1

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->ignoreRect:Z

    .line 165
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->renderNode:Landroid/graphics/RenderNode;

    .line 166
    iput-object p2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->avatarView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    .line 167
    iput p3, p0, Lorg/telegram/ui/Components/ProfileActionsView;->renderNodeScale:F

    .line 168
    iput p4, p0, Lorg/telegram/ui/Components/ProfileActionsView;->renderNodeTranslateY:F

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public drawingBlur(Z)V
    .locals 1

    .line 155
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->ignoreRect:Z

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->renderNode:Landroid/graphics/RenderNode;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 156
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->ignoreRect:Z

    const/4 p1, 0x0

    .line 157
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->renderNode:Landroid/graphics/RenderNode;

    .line 158
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->avatarView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getRoundRadius()F
    .locals 1

    const/high16 v0, 0x41800000    # 16.0f

    .line 561
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public hasCall()Z
    .locals 2

    .line 975
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->allAvailableActions:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->callAction:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 268
    iget v2, v0, Lorg/telegram/ui/Components/ProfileActionsView;->clipHeight:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-ltz v4, :cond_1

    .line 269
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v4

    sub-float/2addr v2, v4

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_0

    goto/16 :goto_9

    .line 273
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v3, v4, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 276
    :cond_1
    iget v2, v0, Lorg/telegram/ui/Components/ProfileActionsView;->currentHeight:F

    iget v4, v0, Lorg/telegram/ui/Components/ProfileActionsView;->ypadding:F

    sub-float/2addr v2, v4

    iget v4, v0, Lorg/telegram/ui/Components/ProfileActionsView;->top:F

    sub-float/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_2

    goto/16 :goto_9

    .line 282
    :cond_2
    invoke-direct {v0}, Lorg/telegram/ui/Components/ProfileActionsView;->getGap()F

    move-result v4

    .line 283
    invoke-direct {v0}, Lorg/telegram/ui/Components/ProfileActionsView;->getItemWidth()F

    move-result v5

    .line 284
    iget v6, v0, Lorg/telegram/ui/Components/ProfileActionsView;->xpadding:F

    .line 285
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileActionsView;->getRoundRadius()F

    move-result v7

    .line 287
    iget-object v8, v0, Lorg/telegram/ui/Components/ProfileActionsView;->renderNode:Landroid/graphics/RenderNode;

    if-eqz v8, :cond_3

    .line 288
    iget-object v8, v0, Lorg/telegram/ui/Components/ProfileActionsView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->rewind()V

    .line 292
    :cond_3
    iget-object v8, v0, Lorg/telegram/ui/Components/ProfileActionsView;->actions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    move-object v11, v9

    const/4 v12, 0x0

    :goto_0
    const/high16 v13, 0x3f800000    # 1.0f

    if-ge v12, v8, :cond_8

    .line 294
    iget-object v14, v0, Lorg/telegram/ui/Components/ProfileActionsView;->actions:Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    .line 295
    iget-boolean v15, v14, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isDeleted:Z

    if-eqz v15, :cond_4

    move/from16 v16, v3

    goto :goto_2

    .line 297
    :cond_4
    iget-boolean v15, v14, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isDeleting:Z

    if-nez v15, :cond_6

    .line 298
    iget-object v11, v14, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    iget v15, v0, Lorg/telegram/ui/Components/ProfileActionsView;->top:F

    move/from16 v16, v3

    add-float v3, v6, v5

    add-float v10, v15, v2

    invoke-virtual {v11, v6, v15, v3, v10}, Landroid/graphics/RectF;->set(FFFF)V

    add-float v3, v5, v4

    add-float/2addr v6, v3

    if-nez v9, :cond_5

    move-object v9, v14

    :cond_5
    move-object v11, v14

    goto :goto_1

    :cond_6
    move/from16 v16, v3

    .line 307
    :goto_1
    invoke-virtual {v14}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->updatePosition()V

    .line 308
    iget-object v3, v0, Lorg/telegram/ui/Components/ProfileActionsView;->renderNode:Landroid/graphics/RenderNode;

    if-eqz v3, :cond_7

    .line 309
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v10, v14, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 310
    iget-object v10, v14, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    .line 311
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v10, v15

    invoke-virtual {v14}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->getScale()F

    move-result v17

    sub-float v17, v13, v17

    mul-float v10, v10, v17

    move/from16 v17, v13

    iget-object v13, v14, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    .line 312
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float/2addr v13, v15

    invoke-virtual {v14}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->getScale()F

    move-result v14

    sub-float v14, v17, v14

    mul-float/2addr v13, v14

    .line 310
    invoke-virtual {v3, v10, v13}, Landroid/graphics/RectF;->inset(FF)V

    const/high16 v10, -0x40800000    # -1.0f

    .line 314
    invoke-virtual {v3, v10, v10}, Landroid/graphics/RectF;->inset(FF)V

    .line 315
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileActionsView;->clipPath:Landroid/graphics/Path;

    sget-object v13, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v10, v3, v7, v7, v13}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :cond_7
    :goto_2
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v16

    goto :goto_0

    :cond_8
    move/from16 v16, v3

    move/from16 v17, v13

    .line 318
    iput-object v9, v0, Lorg/telegram/ui/Components/ProfileActionsView;->firstAction:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    .line 319
    iput-object v11, v0, Lorg/telegram/ui/Components/ProfileActionsView;->lastAction:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    .line 321
    iget-object v3, v0, Lorg/telegram/ui/Components/ProfileActionsView;->renderNode:Landroid/graphics/RenderNode;

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v8, :cond_a

    .line 323
    iget-object v4, v0, Lorg/telegram/ui/Components/ProfileActionsView;->actions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    .line 324
    iget-boolean v5, v4, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isDeleted:Z

    if-eqz v5, :cond_9

    goto :goto_4

    .line 327
    :cond_9
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileActionsView;->pathTmp:Landroid/graphics/Path;

    invoke-direct {v0, v4, v7, v5}, Lorg/telegram/ui/Components/ProfileActionsView;->updateClipPath(Lorg/telegram/ui/Components/ProfileActionsView$Action;FLandroid/graphics/Path;)V

    .line 328
    iget-object v4, v0, Lorg/telegram/ui/Components/ProfileActionsView;->clipPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileActionsView;->pathTmp:Landroid/graphics/Path;

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 332
    :cond_a
    iget v3, v0, Lorg/telegram/ui/Components/ProfileActionsView;->targetHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v2

    const v3, 0x3e4ccccd    # 0.2f

    sub-float v3, v2, v3

    const v4, 0x3f4ccccd    # 0.8f

    div-float/2addr v3, v4

    .line 333
    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v3

    cmpg-float v4, v3, v16

    if-gtz v4, :cond_b

    goto/16 :goto_9

    .line 338
    :cond_b
    iget-boolean v4, v0, Lorg/telegram/ui/Components/ProfileActionsView;->ignoreRect:Z

    if-nez v4, :cond_f

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v8, :cond_f

    .line 340
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileActionsView;->actions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    .line 341
    iget-boolean v6, v5, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isDeleted:Z

    if-eqz v6, :cond_c

    goto :goto_7

    .line 345
    :cond_c
    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileActionsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    .line 346
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->getAlpha()F

    move-result v9

    mul-float/2addr v9, v3

    int-to-float v10, v6

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 347
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileActionsView;->paint:Landroid/graphics/Paint;

    int-to-float v9, v9

    iget-object v11, v0, Lorg/telegram/ui/Components/ProfileActionsView;->radialGradient:Landroid/graphics/RadialGradient;

    if-eqz v11, :cond_d

    const v11, 0x3dcccccd    # 0.1f

    goto :goto_6

    :cond_d
    move/from16 v11, v17

    :goto_6
    mul-float/2addr v9, v11

    float-to-int v9, v9

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 349
    iget-object v9, v0, Lorg/telegram/ui/Components/ProfileActionsView;->pathTmp:Landroid/graphics/Path;

    invoke-direct {v0, v5, v7, v9}, Lorg/telegram/ui/Components/ProfileActionsView;->updateClipPath(Lorg/telegram/ui/Components/ProfileActionsView$Action;FLandroid/graphics/Path;)V

    .line 350
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileActionsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v7, v7, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 351
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileActionsView;->radialGradient:Landroid/graphics/RadialGradient;

    if-eqz v10, :cond_e

    .line 352
    invoke-direct {v0, v1, v5, v3}, Lorg/telegram/ui/Components/ProfileActionsView;->drawGradient(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/ProfileActionsView$Action;F)V

    .line 354
    :cond_e
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileActionsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 355
    invoke-static {v5}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetrippleDrawable(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget v10, v9, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    iget v11, v9, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    iget v12, v9, Landroid/graphics/RectF;->right:F

    float-to-int v12, v12

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    invoke-virtual {v6, v10, v11, v12, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 361
    invoke-static {v5}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetrippleDrawable(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 365
    :cond_f
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/ProfileActionsView;->drawRenderNode(Landroid/graphics/Canvas;)V

    const v3, 0x3ecccccd    # 0.4f

    sub-float v3, v2, v3

    const v4, 0x3f19999a    # 0.6f

    div-float/2addr v3, v4

    .line 367
    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v3

    cmpl-float v4, v3, v16

    if-lez v4, :cond_10

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v8, :cond_10

    .line 370
    iget-object v4, v0, Lorg/telegram/ui/Components/ProfileActionsView;->actions:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/telegram/ui/Components/ProfileActionsView;->drawAction(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/ProfileActionsView$Action;FF)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_10
    :goto_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 244
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->targetHeight:I

    int-to-float p2, p2

    iget v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->top:F

    add-float/2addr p2, v0

    iget v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->ypadding:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 245
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 243
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 247
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileActionsView;->measureActions()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 570
    iget v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->currentHeight:F

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 574
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 575
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 576
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_2

    .line 579
    iput-object v3, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hit:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    .line 580
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->actions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v3, v1

    :goto_0
    if-ge v3, p1, :cond_b

    .line 582
    iget-object v5, p0, Lorg/telegram/ui/Components/ProfileActionsView;->actions:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    .line 583
    iget-boolean v6, v5, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isDeleting:Z

    if-nez v6, :cond_1

    iget-object v6, v5, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6, v0, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 584
    iput-object v5, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hit:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    .line 585
    iput v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->downX:F

    .line 586
    iput v2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->downY:F

    .line 587
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/telegram/ui/Components/ProfileActionsView;->downTime:J

    .line 588
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hit:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    invoke-static {p1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetbounce(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 589
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hit:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    invoke-static {p1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetrippleDrawable(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 590
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hit:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    invoke-static {p1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetrippleDrawable(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v0, 0x10100a7

    const v2, 0x101009e

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto/16 :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    if-ne p1, v5, :cond_4

    .line 598
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hit:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    if-eqz p1, :cond_b

    .line 599
    iget p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->downX:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->downY:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_b

    .line 600
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hit:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    invoke-static {p1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetbounce(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 601
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hit:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    invoke-static {p1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetrippleDrawable(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-array v0, v1, [I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 602
    iput-object v3, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hit:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    goto/16 :goto_2

    :cond_4
    if-eq p1, v4, :cond_5

    const/4 v5, 0x3

    if-ne p1, v5, :cond_b

    .line 606
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hit:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    if-eqz v5, :cond_b

    .line 607
    invoke-static {v5}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetbounce(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 608
    iget-object v5, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hit:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    invoke-static {v5}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetrippleDrawable(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-array v6, v1, [I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    if-ne p1, v4, :cond_a

    .line 609
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hit:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    iget-object p1, p1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lorg/telegram/ui/Components/ProfileActionsView;->downTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0xfa

    cmp-long p1, v5, v7

    if-lez p1, :cond_6

    .line 612
    :try_start_0
    invoke-static {v1}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->getType(I)I

    move-result p1

    invoke-virtual {p0, p1, v4}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :catch_0
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hit:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->supportsLoading:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isLoading:Z

    if-nez v0, :cond_7

    .line 617
    iput-boolean v4, p1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isLoading:Z

    .line 618
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 620
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hit:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    iget p1, p1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->supportsAnimate:I

    if-eqz p1, :cond_8

    sget-object p1, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    invoke-virtual {p1, v1}, Lcom/exteragram/messenger/icons/IconManager;->isBasePackOnly(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 621
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hit:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    iget v0, p1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->supportsAnimate:I

    invoke-virtual {p1, v4, v0}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->updateDrawable(ZI)V

    .line 623
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hit:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->startTime:J

    .line 624
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hit:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    .line 625
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->onActionClickListener:Lorg/telegram/ui/Components/ProfileActionsView$OnActionClickListener;

    if-eqz v0, :cond_a

    .line 626
    iget v1, p1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->callDelay:I

    if-nez v1, :cond_9

    .line 627
    iget v1, p1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->key:I

    iget-object p1, p1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-interface {v0, v1, v2, p1}, Lorg/telegram/ui/Components/ProfileActionsView$OnActionClickListener;->onClick(IFF)V

    goto :goto_1

    .line 629
    :cond_9
    new-instance v0, Lorg/telegram/ui/Components/ProfileActionsView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ProfileActionsView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ProfileActionsView;Lorg/telegram/ui/Components/ProfileActionsView$Action;)V

    iget p1, p1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->callDelay:I

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 635
    :cond_a
    :goto_1
    iput-object v3, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hit:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    return v4

    .line 639
    :cond_b
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hit:Lorg/telegram/ui/Components/ProfileActionsView$Action;

    if-eqz p1, :cond_c

    return v4

    :cond_c
    return v1
.end method

.method public set(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 663
    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->allAvailableActions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 665
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->allAvailableActions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    .line 668
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileActionsView;->applyVisibleActions()V

    :cond_1
    return-void
.end method

.method public setActionsColor(IIZ)V
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->radialGradient:Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->color:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->textColor:I

    if-ne v0, p2, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hasColorById:Z

    if-eq v0, p3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 186
    :cond_1
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->color:I

    .line 187
    iput p2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->textColor:I

    .line 188
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ProfileActionsView;->hasColorById:Z

    .line 189
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileActionsView;->createColorShader()V

    .line 190
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileActionsView;->checkPaints()V

    return-void
.end method

.method public setNotifications(Z)V
    .locals 2

    .line 673
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->isNotificationsEnabled:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 674
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->isNotificationsEnabled:Z

    .line 675
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ProfileActionsView;->find(I)Lorg/telegram/ui/Components/ProfileActionsView$Action;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 677
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ProfileActionsView;->updateNotification(Lorg/telegram/ui/Components/ProfileActionsView$Action;Z)V

    .line 678
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 680
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->allAvailableActions:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 681
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileActionsView;->applyVisibleActions()V

    return-void
.end method

.method public setOnActionClickListener(Lorg/telegram/ui/Components/ProfileActionsView$OnActionClickListener;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->onActionClickListener:Lorg/telegram/ui/Components/ProfileActionsView$OnActionClickListener;

    return-void
.end method

.method public setParentExpanded(F)V
    .locals 1

    .line 177
    iget v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->parentExpanded:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 178
    iput p1, p0, Lorg/telegram/ui/Components/ProfileActionsView;->parentExpanded:F

    .line 179
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileActionsView;->checkPaints()V

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public startAnimatedActions()V
    .locals 6

    .line 704
    iget v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->mode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 705
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 707
    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileActionsView;->actions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/ProfileActionsView$Action;

    .line 708
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetdrawableAnimated(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 709
    iget v4, v3, Lorg/telegram/ui/Components/ProfileActionsView$Action;->key:I

    const/16 v5, 0xf

    if-ne v4, v5, :cond_0

    .line 710
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetdrawableAnimated(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v4

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_1

    .line 712
    :cond_0
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetdrawableAnimated(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 714
    :goto_1
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetdrawableAnimated(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public startCameraAnimation()V
    .locals 2

    const/16 v0, 0xe

    .line 725
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ProfileActionsView;->find(I)Lorg/telegram/ui/Components/ProfileActionsView$Action;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 726
    invoke-static {v0}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetdrawableAnimated(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 727
    invoke-static {v0}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->-$$Nest$fgetdrawableAnimated(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    :cond_0
    return-void
.end method

.method public stopLoading(I)V
    .locals 0

    .line 422
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ProfileActionsView;->find(I)Lorg/telegram/ui/Components/ProfileActionsView$Action;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ProfileActionsView;->stopLoading(Lorg/telegram/ui/Components/ProfileActionsView$Action;)V

    return-void
.end method

.method public supportsEditInfo()Z
    .locals 2

    .line 721
    iget v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->mode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updatePosition(FF)V
    .locals 0

    .line 251
    iput p2, p0, Lorg/telegram/ui/Components/ProfileActionsView;->currentHeight:F

    .line 252
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 253
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    .line 644
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView;->actions:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ProfileActionsView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/ProfileActionsView$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 645
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of p1, p1, Lorg/telegram/ui/Components/LoadingDrawable;

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
