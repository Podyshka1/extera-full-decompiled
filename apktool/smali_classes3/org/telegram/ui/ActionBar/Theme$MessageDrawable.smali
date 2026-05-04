.class public Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/Theme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;
    }
.end annotation


# static fields
.field public static motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;


# instance fields
.field private alpha:I

.field private backgroundDrawable:[[Landroid/graphics/drawable/Drawable;

.field private backgroundDrawableColor:[[I

.field private backupRect:Landroid/graphics/Rect;

.field private botButtonsBottom:Z

.field private crosfadeFromBitmap:Landroid/graphics/Bitmap;

.field private crosfadeFromBitmapShader:Landroid/graphics/Shader;

.field public crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field public crossfadeProgress:F

.field private currentAnimateGradient:Z

.field private currentBackgroundDrawableRadius:[[I

.field private currentBackgroundHeight:I

.field private currentColor:I

.field private currentGradientColor1:I

.field private currentGradientColor2:I

.field private currentGradientColor3:I

.field private currentShadowDrawableRadius:[I

.field private currentType:I

.field private drawFullBubble:Z

.field private gradientShader:Landroid/graphics/Shader;

.field private isBottomNear:Z

.field public isCrossfadeBackground:Z

.field private final isOut:Z

.field public isSelected:Z

.field private isTopNear:Z

.field public lastDrawWithShadow:Z

.field private matrix:Landroid/graphics/Matrix;

.field private overrideRoundRadius:I

.field private overrideRounding:F

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

.field private rect:Landroid/graphics/RectF;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectedPaint:Landroid/graphics/Paint;

.field private shadowDrawable:[Landroid/graphics/drawable/Drawable;

.field private shadowDrawableBitmap:[Landroid/graphics/Bitmap;

.field private shadowDrawableColor:[I

.field public themePreview:Z

.field private topY:I

.field transitionDrawable:Landroid/graphics/drawable/Drawable;

.field transitionDrawableColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 231
    new-array v0, v0, [Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    sput-object v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 274
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    .line 278
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 202
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    .line 210
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    .line 211
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    .line 220
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backupRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 233
    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentShadowDrawableRadius:[I

    const/4 v2, 0x4

    .line 234
    new-array v3, v2, [Landroid/graphics/Bitmap;

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableBitmap:[Landroid/graphics/Bitmap;

    .line 235
    new-array v3, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawable:[Landroid/graphics/drawable/Drawable;

    .line 236
    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableColor:[I

    .line 238
    new-array v3, v2, [[I

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v4

    aput-object v4, v3, v1

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v3, v7

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundDrawableRadius:[[I

    .line 244
    new-array v3, v6, [I

    aput v2, v3, v1

    aput v2, v3, v5

    const-class v4, Landroid/graphics/drawable/Drawable;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawable:[[Landroid/graphics/drawable/Drawable;

    .line 245
    new-array v2, v2, [[I

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v3

    aput-object v3, v2, v5

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v3

    aput-object v3, v2, v1

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v3

    aput-object v3, v2, v6

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v0

    aput-object v0, v2, v7

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawableColor:[[I

    .line 279
    iput-object p4, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 280
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    .line 281
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    .line 282
    iput-boolean p3, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    .line 283
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->path:Landroid/graphics/Path;

    .line 284
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->selectedPaint:Landroid/graphics/Paint;

    const/16 p1, 0xff

    .line 285
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->alpha:I

    return-void
.end method

.method private dp(F)I
    .locals 2

    .line 466
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 467
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1

    .line 469
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1
.end method

.method private generatePath(Landroid/graphics/Path;Landroid/graphics/Rect;IIIIIZZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 864
    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 865
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, v3, p3

    const/4 v4, 0x1

    shr-int/2addr v3, v4

    move/from16 v5, p4

    if-le v5, v3, :cond_0

    move v5, v3

    .line 869
    :cond_0
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    const v11, 0x40266666    # 2.6f

    const/high16 v14, 0x40000000    # 2.0f

    const/high16 v15, 0x42b40000    # 90.0f

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x41000000    # 8.0f

    if-eqz v3, :cond_13

    .line 871
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    if-nez v3, :cond_2

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-eq v3, v7, :cond_2

    if-nez p10, :cond_2

    if-eqz p8, :cond_1

    goto :goto_0

    .line 882
    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    sub-int/2addr v3, v11

    int-to-float v3, v3

    iget v11, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v11, p7, v11

    iget v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v11, v9

    int-to-float v9, v11

    invoke-virtual {v1, v3, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 883
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int v3, v3, p3

    int-to-float v3, v3

    iget v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v9, p7, v9

    iget v11, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v9, v11

    int-to-float v9, v9

    invoke-virtual {v1, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4

    .line 872
    :cond_2
    :goto_0
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->botButtonsBottom:Z

    if-eqz v3, :cond_3

    move/from16 v3, p6

    goto :goto_1

    :cond_3
    move v3, v5

    .line 873
    :goto_1
    iget v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-eq v9, v4, :cond_5

    sget-boolean v9, Lcom/exteragram/messenger/ExteraConfig;->removeMessageTail:Z

    if-eqz v9, :cond_4

    goto :goto_2

    .line 876
    :cond_4
    iget v9, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v11}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    sub-int/2addr v9, v11

    int-to-float v9, v9

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v11, p3

    int-to-float v11, v11

    invoke-virtual {v1, v9, v11}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_3

    .line 874
    :cond_5
    :goto_2
    iget v9, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    sub-int/2addr v9, v11

    sub-int/2addr v9, v3

    int-to-float v9, v9

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v11, p3

    int-to-float v11, v11

    invoke-virtual {v1, v9, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 878
    :goto_3
    iget v9, v2, Landroid/graphics/Rect;->left:I

    add-int v9, v9, p3

    add-int/2addr v9, v3

    int-to-float v9, v9

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v11, p3

    int-to-float v11, v11

    invoke-virtual {v1, v9, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 879
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int v12, v11, p3

    int-to-float v12, v12

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v16, v10, p3

    mul-int/2addr v3, v7

    sub-int v13, v16, v3

    int-to-float v13, v13

    add-int v11, v11, p3

    add-int/2addr v11, v3

    int-to-float v3, v11

    sub-int v10, v10, p3

    int-to-float v10, v10

    invoke-virtual {v9, v12, v13, v3, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 880
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v3, v15, v15, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 885
    :goto_4
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    if-nez v3, :cond_8

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-eq v3, v7, :cond_8

    if-nez p10, :cond_8

    if-eqz p9, :cond_6

    goto :goto_5

    .line 903
    :cond_6
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int v3, v3, p3

    int-to-float v3, v3

    iget v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v9, p7, v9

    invoke-direct {v0, v14}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v1, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 906
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v3, v4, :cond_7

    .line 907
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int v3, v3, p3

    int-to-float v3, v3

    iget v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v9, p7, v9

    invoke-direct {v0, v14}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v1, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_8

    .line 909
    :cond_7
    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    sub-int/2addr v3, v9

    int-to-float v3, v3

    iget v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v9, p7, v9

    invoke-direct {v0, v14}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v1, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_8

    .line 887
    :cond_8
    :goto_5
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int v3, v3, p3

    int-to-float v3, v3

    iget v9, v2, Landroid/graphics/Rect;->top:I

    add-int v9, v9, p3

    add-int/2addr v9, v5

    int-to-float v9, v9

    invoke-virtual {v1, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 888
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v9, v2, Landroid/graphics/Rect;->left:I

    add-int v10, v9, p3

    int-to-float v10, v10

    iget v11, v2, Landroid/graphics/Rect;->top:I

    add-int v12, v11, p3

    int-to-float v12, v12

    add-int v9, v9, p3

    mul-int/lit8 v13, v5, 0x2

    add-int/2addr v9, v13

    int-to-float v9, v9

    add-int v11, v11, p3

    add-int/2addr v11, v13

    int-to-float v11, v11

    invoke-virtual {v3, v10, v12, v9, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 889
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v9, 0x43340000    # 180.0f

    invoke-virtual {v1, v3, v9, v15, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 892
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isTopNear:Z

    if-eqz v3, :cond_9

    move/from16 v3, p6

    goto :goto_6

    :cond_9
    move v3, v5

    .line 893
    :goto_6
    iget v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v9, v4, :cond_a

    .line 894
    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int v9, v9, p3

    sub-int/2addr v9, v3

    int-to-float v9, v9

    iget v10, v2, Landroid/graphics/Rect;->top:I

    add-int v10, v10, p3

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 895
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v10, v2, Landroid/graphics/Rect;->right:I

    sub-int v11, v10, p3

    mul-int/2addr v3, v7

    sub-int/2addr v11, v3

    int-to-float v11, v11

    iget v12, v2, Landroid/graphics/Rect;->top:I

    add-int v13, v12, p3

    int-to-float v13, v13

    sub-int v10, v10, p3

    int-to-float v10, v10

    add-int v12, v12, p3

    add-int/2addr v12, v3

    int-to-float v3, v12

    invoke-virtual {v9, v11, v13, v10, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_7

    .line 897
    :cond_a
    iget v9, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v3

    int-to-float v9, v9

    iget v10, v2, Landroid/graphics/Rect;->top:I

    add-int v10, v10, p3

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 898
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v10, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    sub-int/2addr v10, v11

    mul-int/2addr v3, v7

    sub-int/2addr v10, v3

    int-to-float v10, v10

    iget v11, v2, Landroid/graphics/Rect;->top:I

    add-int v11, v11, p3

    int-to-float v11, v11

    iget v12, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    iget v13, v2, Landroid/graphics/Rect;->top:I

    add-int v13, v13, p3

    add-int/2addr v13, v3

    int-to-float v3, v13

    invoke-virtual {v9, v10, v11, v12, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 900
    :goto_7
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v9, 0x43870000    # 270.0f

    invoke-virtual {v1, v3, v9, v15, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 913
    :goto_8
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v3, v4, :cond_e

    if-nez p10, :cond_c

    if-eqz p8, :cond_b

    goto :goto_9

    .line 921
    :cond_b
    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v2, v2, p3

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v3, p7, v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_16

    .line 915
    :cond_c
    :goto_9
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-eqz v3, :cond_d

    move/from16 v5, p6

    .line 917
    :cond_d
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int v3, v3, p3

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v4, p3

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 918
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v4, p3

    mul-int/2addr v5, v7

    sub-int/2addr v8, v5

    int-to-float v7, v8

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v2, p3

    sub-int/2addr v8, v5

    int-to-float v5, v8

    sub-int v4, v4, p3

    int-to-float v4, v4

    sub-int v2, v2, p3

    int-to-float v2, v2

    invoke-virtual {v3, v7, v5, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 919
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v15, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    goto/16 :goto_16

    .line 924
    :cond_e
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    if-nez v4, :cond_10

    if-eq v3, v7, :cond_10

    if-nez p10, :cond_10

    if-eqz p8, :cond_f

    goto :goto_a

    .line 937
    :cond_f
    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v3, p7, v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_16

    .line 925
    :cond_10
    :goto_a
    sget-boolean v3, Lcom/exteragram/messenger/ExteraConfig;->removeMessageTail:Z

    if-eqz v3, :cond_12

    .line 926
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-eqz v3, :cond_11

    move/from16 v5, p6

    .line 927
    :cond_11
    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v4, p3

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 928
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    sub-int/2addr v4, v9

    mul-int/2addr v5, v7

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v7, p3

    sub-int/2addr v7, v5

    int-to-float v5, v7

    iget v7, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v2, p3

    int-to-float v2, v2

    invoke-virtual {v3, v4, v5, v7, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 929
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v15, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    goto/16 :goto_16

    .line 931
    :cond_12
    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v4, p3

    sub-int v4, v4, p5

    const/high16 v5, 0x40400000    # 3.0f

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 932
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v5, p3

    mul-int/lit8 v7, p5, 0x2

    sub-int/2addr v5, v7

    const/high16 v8, 0x41100000    # 9.0f

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    sub-int/2addr v5, v8

    int-to-float v5, v5

    iget v8, v2, Landroid/graphics/Rect;->right:I

    const/high16 v9, 0x40e00000    # 7.0f

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v8, v7

    int-to-float v7, v8

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v2, p3

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    sub-int/2addr v2, v8

    int-to-float v2, v2

    invoke-virtual {v3, v4, v5, v7, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 933
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v3, -0x3d5a0000    # -83.0f

    const/high16 v9, 0x43340000    # 180.0f

    invoke-virtual {v1, v2, v9, v3, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    goto/16 :goto_16

    .line 941
    :cond_13
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    const/high16 v9, -0x3d4c0000    # -90.0f

    if-nez v3, :cond_15

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-eq v3, v7, :cond_15

    if-nez p10, :cond_15

    if-eqz p8, :cond_14

    goto :goto_b

    .line 953
    :cond_14
    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v10

    add-int/2addr v3, v10

    int-to-float v3, v3

    iget v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v10, p7, v10

    iget v11, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v1, v3, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 954
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int v3, v3, p3

    int-to-float v3, v3

    iget v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v10, p7, v10

    iget v11, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v1, v3, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_f

    .line 942
    :cond_15
    :goto_b
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->botButtonsBottom:Z

    if-eqz v3, :cond_16

    move/from16 v3, p6

    goto :goto_c

    :cond_16
    move v3, v5

    .line 944
    :goto_c
    iget v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-eq v10, v4, :cond_18

    sget-boolean v10, Lcom/exteragram/messenger/ExteraConfig;->removeMessageTail:Z

    if-eqz v10, :cond_17

    goto :goto_d

    .line 947
    :cond_17
    iget v10, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v11}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v11, p3

    int-to-float v11, v11

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_e

    .line 945
    :cond_18
    :goto_d
    iget v10, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, v3

    int-to-float v10, v10

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v11, p3

    int-to-float v11, v11

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 949
    :goto_e
    iget v10, v2, Landroid/graphics/Rect;->right:I

    sub-int v10, v10, p3

    sub-int/2addr v10, v3

    int-to-float v10, v10

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v11, p3

    int-to-float v11, v11

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 950
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v11, v2, Landroid/graphics/Rect;->right:I

    sub-int v12, v11, p3

    mul-int/2addr v3, v7

    sub-int/2addr v12, v3

    int-to-float v12, v12

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v16, v13, p3

    sub-int v3, v16, v3

    int-to-float v3, v3

    sub-int v11, v11, p3

    int-to-float v11, v11

    sub-int v13, v13, p3

    int-to-float v13, v13

    invoke-virtual {v10, v12, v3, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 951
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v3, v15, v9, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 956
    :goto_f
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    if-nez v3, :cond_1b

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-eq v3, v7, :cond_1b

    if-nez p10, :cond_1b

    if-eqz p9, :cond_19

    goto :goto_10

    .line 971
    :cond_19
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int v3, v3, p3

    int-to-float v3, v3

    iget v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v10, p7, v10

    invoke-direct {v0, v14}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v1, v3, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 972
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v3, v4, :cond_1a

    .line 973
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int v3, v3, p3

    int-to-float v3, v3

    iget v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v10, p7, v10

    invoke-direct {v0, v14}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v1, v3, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_13

    .line 975
    :cond_1a
    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v10

    add-int/2addr v3, v10

    int-to-float v3, v3

    iget v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v10, p7, v10

    invoke-direct {v0, v14}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v1, v3, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_13

    .line 957
    :cond_1b
    :goto_10
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int v3, v3, p3

    int-to-float v3, v3

    iget v10, v2, Landroid/graphics/Rect;->top:I

    add-int v10, v10, p3

    add-int/2addr v10, v5

    int-to-float v10, v10

    invoke-virtual {v1, v3, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 958
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v10, v2, Landroid/graphics/Rect;->right:I

    sub-int v11, v10, p3

    mul-int/lit8 v12, v5, 0x2

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iget v13, v2, Landroid/graphics/Rect;->top:I

    add-int v14, v13, p3

    int-to-float v14, v14

    sub-int v10, v10, p3

    int-to-float v10, v10

    add-int v13, v13, p3

    add-int/2addr v13, v12

    int-to-float v12, v13

    invoke-virtual {v3, v11, v14, v10, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 959
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/4 v10, 0x0

    invoke-virtual {v1, v3, v10, v9, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 961
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isTopNear:Z

    if-eqz v3, :cond_1c

    move/from16 v3, p6

    goto :goto_11

    :cond_1c
    move v3, v5

    .line 962
    :goto_11
    iget v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v10, v4, :cond_1d

    .line 963
    iget v10, v2, Landroid/graphics/Rect;->left:I

    add-int v10, v10, p3

    add-int/2addr v10, v3

    int-to-float v10, v10

    iget v11, v2, Landroid/graphics/Rect;->top:I

    add-int v11, v11, p3

    int-to-float v11, v11

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 964
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int v12, v11, p3

    int-to-float v12, v12

    iget v13, v2, Landroid/graphics/Rect;->top:I

    add-int v14, v13, p3

    int-to-float v14, v14

    add-int v11, v11, p3

    mul-int/2addr v3, v7

    add-int/2addr v11, v3

    int-to-float v11, v11

    add-int v13, v13, p3

    add-int/2addr v13, v3

    int-to-float v3, v13

    invoke-virtual {v10, v12, v14, v11, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_12

    .line 966
    :cond_1d
    iget v10, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, v3

    int-to-float v10, v10

    iget v11, v2, Landroid/graphics/Rect;->top:I

    add-int v11, v11, p3

    int-to-float v11, v11

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 967
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, v2, Landroid/graphics/Rect;->top:I

    add-int v12, v12, p3

    int-to-float v12, v12

    iget v13, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v14

    add-int/2addr v13, v14

    mul-int/2addr v3, v7

    add-int/2addr v13, v3

    int-to-float v13, v13

    iget v14, v2, Landroid/graphics/Rect;->top:I

    add-int v14, v14, p3

    add-int/2addr v14, v3

    int-to-float v3, v14

    invoke-virtual {v10, v11, v12, v13, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 969
    :goto_12
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v10, 0x43870000    # 270.0f

    invoke-virtual {v1, v3, v10, v9, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 978
    :goto_13
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v3, v4, :cond_22

    if-nez p10, :cond_1f

    if-eqz p8, :cond_1e

    goto :goto_14

    .line 986
    :cond_1e
    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int v2, v2, p3

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v3, p7, v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_16

    .line 980
    :cond_1f
    :goto_14
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-nez v3, :cond_20

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->botButtonsBottom:Z

    if-eqz v3, :cond_21

    :cond_20
    move/from16 v5, p6

    .line 982
    :cond_21
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int v3, v3, p3

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v4, p3

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 983
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int v8, v4, p3

    int-to-float v8, v8

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v2, p3

    mul-int/2addr v5, v7

    sub-int/2addr v10, v5

    int-to-float v7, v10

    add-int v4, v4, p3

    add-int/2addr v4, v5

    int-to-float v4, v4

    sub-int v2, v2, p3

    int-to-float v2, v2

    invoke-virtual {v3, v8, v7, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 984
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v1, v2, v3, v9, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    goto/16 :goto_16

    .line 989
    :cond_22
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    if-nez v4, :cond_24

    if-eq v3, v7, :cond_24

    if-nez p10, :cond_24

    if-eqz p8, :cond_23

    goto :goto_15

    .line 1001
    :cond_23
    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v3, p7, v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_16

    .line 990
    :cond_24
    :goto_15
    sget-boolean v3, Lcom/exteragram/messenger/ExteraConfig;->removeMessageTail:Z

    if-eqz v3, :cond_27

    .line 991
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-nez v3, :cond_25

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->botButtonsBottom:Z

    if-eqz v3, :cond_26

    :cond_25
    move/from16 v5, p6

    .line 992
    :cond_26
    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v4, p3

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 993
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v10

    add-int/2addr v4, v10

    int-to-float v4, v4

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v10, p3

    mul-int/2addr v5, v7

    sub-int/2addr v10, v5

    int-to-float v7, v10

    iget v10, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    add-int/2addr v10, v8

    add-int/2addr v10, v5

    int-to-float v5, v10

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v2, p3

    int-to-float v2, v2

    invoke-virtual {v3, v4, v7, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 994
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v1, v2, v3, v9, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    goto :goto_16

    .line 996
    :cond_27
    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v4, p3

    sub-int v4, v4, p5

    const/high16 v5, 0x40400000    # 3.0f

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 997
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    const/high16 v9, 0x40e00000    # 7.0f

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    mul-int/lit8 v5, p5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v7, p3

    sub-int/2addr v7, v5

    const/high16 v5, 0x41100000    # 9.0f

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    sub-int/2addr v7, v5

    int-to-float v5, v7

    iget v7, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v2, p3

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    sub-int/2addr v2, v8

    int-to-float v2, v2

    invoke-virtual {v3, v4, v5, v7, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 998
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x42a60000    # 83.0f

    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10, v3, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 1005
    :goto_16
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private static getByteBuffer(IIII)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x54

    .line 685
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    .line 686
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    .line 687
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 688
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x9

    .line 689
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 691
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 692
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 694
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 695
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 696
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 697
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 699
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 701
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 702
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 704
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 705
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 707
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 708
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 709
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 710
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 711
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 712
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 713
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 714
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 715
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public applyMatrixScale()V
    .locals 6

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    instance-of v0, v0, Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_4

    .line 294
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 295
    iget v5, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v5, v4, :cond_0

    move v2, v3

    .line 296
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 297
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 298
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v1, v0

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-void

    .line 302
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 305
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v0, v4, :cond_3

    move v2, v3

    :cond_3
    move v4, v2

    .line 307
    :goto_0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 309
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 310
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v1, v0

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_4
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 738
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 739
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;)V

    const/high16 v0, 0x437f0000    # 255.0f

    .line 740
    iget v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeProgress:F

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setAlpha(I)V

    .line 741
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    const/16 p1, 0xff

    .line 742
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setAlpha(I)V

    return-void

    .line 744
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 13

    .line 749
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 750
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_0

    .line 751
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 753
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 754
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 759
    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v3

    .line 762
    iget v1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    const/high16 v4, 0x40c00000    # 6.0f

    if-eqz v1, :cond_1

    move v6, v1

    goto :goto_1

    .line 765
    :cond_1
    iget v1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    cmpl-float v1, v1, v0

    const/4 v5, 0x6

    const/4 v6, 0x2

    if-lez v1, :cond_2

    .line 766
    sget v1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    div-int/2addr v7, v6

    iget v8, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    invoke-static {v1, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    .line 767
    sget v7, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    div-int/2addr v7, v6

    iget v6, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    invoke-static {v5, v7, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    :goto_0
    move v6, v5

    goto :goto_1

    .line 768
    :cond_2
    iget v1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v1, v6, :cond_3

    .line 769
    invoke-direct {p0, v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v1

    .line 770
    invoke-direct {p0, v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    goto :goto_0

    .line 772
    :cond_3
    sget v1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v1

    .line 773
    sget v6, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    goto :goto_0

    .line 775
    :goto_1
    invoke-direct {p0, v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    if-nez p2, :cond_4

    .line 777
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    move-object v11, v4

    goto :goto_2

    :cond_4
    move-object v11, p2

    :goto_2
    if-nez p2, :cond_5

    .line 779
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-eqz v4, :cond_5

    .line 780
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 781
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->applyMatrixScale()V

    .line 782
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    iget v7, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v4, v0, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 783
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 786
    :cond_5
    iget v0, v2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 788
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v8, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    .line 797
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    const/4 v8, 0x1

    const/4 v9, 0x1

    move v10, v8

    if-eqz v0, :cond_7

    .line 798
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;->path:Landroid/graphics/Path;

    .line 799
    invoke-virtual {v0, v2, v8, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;->invalidatePath(Landroid/graphics/Rect;ZZ)Z

    move-result v0

    goto :goto_3

    .line 801
    :cond_7
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->path:Landroid/graphics/Path;

    move v0, v10

    :goto_3
    if-nez v0, :cond_9

    .line 804
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    move-object v0, p0

    move-object v1, v12

    goto :goto_7

    :cond_9
    :goto_4
    if-eqz p2, :cond_a

    :goto_5
    move-object v0, p0

    move v4, v1

    move-object v1, v12

    goto :goto_6

    :cond_a
    move v10, v4

    goto :goto_5

    .line 805
    :goto_6
    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->generatePath(Landroid/graphics/Path;Landroid/graphics/Rect;IIIIIZZZ)V

    .line 808
    :goto_7
    invoke-virtual {p1, v1, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 809
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-eqz v2, :cond_b

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    if-eqz v2, :cond_b

    if-nez p2, :cond_b

    .line 810
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradientSelectedOverlay:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result p2

    .line 811
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->selectedPaint:Landroid/graphics/Paint;

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->alpha:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {p2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 812
    iget-object p2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_b
    return-void
.end method

.method public drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 733
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V
    .locals 1

    .line 721
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    .line 722
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v0, :cond_0

    .line 723
    iput-object p2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    .line 725
    :cond_0
    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    const/4 p1, 0x0

    .line 726
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    .line 727
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz p2, :cond_1

    .line 728
    iput-object p1, p2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 4

    .line 670
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableBitmap:[Landroid/graphics/Bitmap;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 674
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 677
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableBitmap:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 678
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawable:[Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 679
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentShadowDrawableRadius:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 23

    move-object/from16 v0, p0

    .line 483
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 485
    :cond_0
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    move v1, v3

    goto :goto_0

    .line 488
    :cond_1
    sget v1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v1

    .line 491
    :goto_0
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isTopNear:Z

    const/4 v5, 0x3

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    iget-boolean v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-eqz v8, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    const/4 v4, 0x2

    goto :goto_1

    .line 495
    :cond_3
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-eqz v4, :cond_4

    move v4, v7

    goto :goto_1

    :cond_4
    move v4, v3

    .line 501
    :goto_1
    iget-boolean v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    if-eqz v8, :cond_5

    iget-boolean v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->botButtonsBottom:Z

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v8, :cond_6

    move v5, v7

    goto :goto_2

    .line 505
    :cond_6
    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->botButtonsBottom:Z

    if-eqz v5, :cond_7

    const/4 v5, 0x2

    goto :goto_2

    :cond_7
    move v5, v3

    .line 512
    :goto_2
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-nez v9, :cond_8

    if-nez v8, :cond_8

    iget-boolean v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    if-nez v8, :cond_8

    move v8, v7

    goto :goto_3

    :cond_8
    move v8, v3

    .line 513
    :goto_3
    iget-boolean v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    if-eqz v9, :cond_9

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleShadow:I

    goto :goto_4

    :cond_9
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleShadow:I

    :goto_4
    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v9

    .line 514
    iget-boolean v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->lastDrawWithShadow:Z

    if-ne v10, v8, :cond_a

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundDrawableRadius:[[I

    aget-object v10, v10, v5

    aget v10, v10, v4

    if-ne v10, v1, :cond_a

    if-eqz v8, :cond_e

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableColor:[I

    aget v10, v10, v4

    if-eq v10, v9, :cond_e

    .line 515
    :cond_a
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundDrawableRadius:[[I

    aget-object v10, v10, v5

    aput v1, v10, v4

    const/high16 v1, 0x42480000    # 50.0f

    .line 517
    :try_start_0
    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v1

    const/high16 v10, 0x42200000    # 40.0f

    invoke-direct {v0, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 518
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 520
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backupRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v12, -0x1

    if-eqz v8, :cond_c

    .line 523
    iget-object v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableColor:[I

    aput v9, v13, v4

    .line 525
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 527
    new-instance v14, Landroid/graphics/LinearGradient;

    invoke-direct {v0, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v10

    int-to-float v10, v10

    const v15, 0x155f6569

    const/16 v22, 0x2

    const v6, 0x295f6569

    filled-new-array {v15, v6}, [I

    move-result-object v19

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move/from16 v18, v10

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 528
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 529
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v9, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 531
    invoke-virtual {v13, v6, v2, v9, v12}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 532
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_b

    .line 533
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v0, v12, v12, v6, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    goto :goto_5

    .line 535
    :cond_b
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v0, v3, v3, v6, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    .line 537
    :goto_5
    invoke-virtual {v0, v11, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 539
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_d

    .line 540
    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 541
    invoke-virtual {v13, v2, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 542
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 543
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v0, v3, v3, v2, v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    .line 544
    invoke-virtual {v0, v11, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_c
    const/16 v22, 0x2

    .line 548
    :cond_d
    :goto_6
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 549
    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 550
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v0, v3, v3, v6, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    .line 551
    invoke-virtual {v0, v11, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 553
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v5

    new-instance v6, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v9, v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v11, v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v7

    invoke-static {v9, v10, v11, v12}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getByteBuffer(IIII)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    const/4 v11, 0x0

    invoke-direct {v6, v1, v9, v10, v11}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    aput-object v6, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 555
    :try_start_1
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backupRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move v3, v7

    .line 560
    :catchall_1
    :cond_e
    iput-boolean v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->lastDrawWithShadow:Z

    .line 562
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    if-eqz v1, :cond_10

    .line 563
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    if-eqz v1, :cond_f

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleSelected:I

    goto :goto_7

    :cond_f
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleSelected:I

    :goto_7
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v1

    goto :goto_9

    .line 565
    :cond_10
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    if-eqz v1, :cond_11

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    goto :goto_8

    :cond_11
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    :goto_8
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v1

    .line 567
    :goto_9
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    if-eqz v2, :cond_13

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawableColor:[[I

    aget-object v6, v6, v5

    aget v6, v6, v4

    if-ne v6, v1, :cond_12

    if-eqz v3, :cond_13

    .line 568
    :cond_12
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 569
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawableColor:[[I

    aget-object v2, v2, v5

    aput v1, v2, v4

    .line 571
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    return-object v1
.end method

.method protected getColor(I)I
    .locals 2

    .line 325
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 326
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1

    .line 328
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_1

    .line 329
    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p1

    return p1

    .line 331
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1
.end method

.method protected getCurrentColor(I)I
    .locals 2

    .line 335
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 336
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1

    .line 338
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getCurrentColor(I)I

    move-result p1

    return p1

    :cond_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$sfgetcurrentColors()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1
.end method

.method public getGradientShader()Landroid/graphics/Shader;
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMotionBackgroundDrawable()Lorg/telegram/ui/Components/MotionBackgroundDrawable;
    .locals 3

    .line 598
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 599
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v0, v0, v1

    return-object v0

    .line 601
    :cond_0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    aget-object v0, v0, v1

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 474
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getShadowDrawable()Landroid/graphics/drawable/Drawable;
    .locals 18

    move-object/from16 v0, p0

    .line 605
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 608
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-nez v1, :cond_1

    return-object v2

    .line 611
    :cond_1
    sget v1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v1

    .line 613
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isTopNear:Z

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    iget-boolean v7, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-eqz v7, :cond_2

    const/4 v3, 0x3

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_0

    .line 617
    :cond_3
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-eqz v3, :cond_4

    move v3, v6

    goto :goto_0

    :cond_4
    move v3, v5

    .line 623
    :goto_0
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentShadowDrawableRadius:[I

    aget v8, v7, v3

    if-eq v8, v1, :cond_8

    .line 624
    aput v1, v7, v3

    .line 625
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v3

    if-eqz v1, :cond_5

    .line 626
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    const/high16 v1, 0x42480000    # 50.0f

    .line 629
    :try_start_0
    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v1

    const/high16 v7, 0x42200000    # 40.0f

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 630
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 632
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 634
    new-instance v10, Landroid/graphics/LinearGradient;

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v7

    int-to-float v14, v7

    const v7, 0x155f6569

    const v11, 0x295f6569

    filled-new-array {v7, v11}, [I

    move-result-object v15

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 635
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v10, -0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    .line 637
    invoke-virtual {v9, v7, v12, v11, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 638
    sget v7, Lorg/telegram/messenger/AndroidUtilities;->density:F

    cmpl-float v7, v7, v11

    if-lez v7, :cond_6

    .line 639
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    add-int/2addr v13, v6

    invoke-virtual {v0, v10, v10, v7, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    goto :goto_1

    .line 641
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v0, v5, v5, v7, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    .line 643
    :goto_1
    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 645
    sget v7, Lorg/telegram/messenger/AndroidUtilities;->density:F

    cmpl-float v7, v7, v11

    if-lez v7, :cond_7

    .line 646
    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 647
    invoke-virtual {v9, v12, v12, v12, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 648
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 649
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v0, v5, v5, v7, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    .line 650
    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 653
    :cond_7
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableBitmap:[Landroid/graphics/Bitmap;

    aput-object v1, v7, v3

    .line 654
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawable:[Landroid/graphics/drawable/Drawable;

    new-instance v8, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/2addr v9, v4

    sub-int/2addr v9, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/2addr v10, v4

    add-int/2addr v10, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/2addr v11, v4

    sub-int/2addr v11, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int/2addr v12, v4

    add-int/2addr v12, v6

    invoke-static {v9, v10, v11, v12}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getByteBuffer(IIII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v8, v1, v4, v9, v2}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    aput-object v8, v7, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v6

    .line 660
    :catchall_0
    :cond_8
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    if-eqz v1, :cond_9

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleShadow:I

    goto :goto_2

    :cond_9
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleShadow:I

    :goto_2
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v1

    .line 661
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    if-eqz v2, :cond_b

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableColor:[I

    aget v4, v4, v3

    if-ne v4, v1, :cond_a

    if-eqz v5, :cond_b

    .line 662
    :cond_a
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 663
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableColor:[I

    aput v1, v2, v3

    .line 665
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v3

    return-object v1
.end method

.method public getShadowDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawable:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTopY()I
    .locals 1

    .line 462
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    return v0
.end method

.method public getTransitionDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 575
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->transitionDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/high16 v0, 0x42480000    # 50.0f

    .line 576
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 577
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 579
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backupRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 581
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v4, -0x1

    .line 582
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 583
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v6, v4, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    .line 584
    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 586
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    invoke-static {v2, v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getByteBuffer(IIII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->transitionDrawable:Landroid/graphics/drawable/Drawable;

    .line 587
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backupRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 589
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->transitionDrawableColor:I

    if-eq v0, p1, :cond_1

    .line 590
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->transitionDrawableColor:I

    .line 591
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->transitionDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 594
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->transitionDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public hasGradient()Z
    .locals 1

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$sfgetshouldDrawGradientIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public makePath()Landroid/graphics/Path;
    .locals 1

    .line 817
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->makePath(Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public makePath(Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;)Landroid/graphics/Path;
    .locals 11

    .line 821
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/high16 v0, 0x40000000    # 2.0f

    .line 822
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v3

    .line 825
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    const/high16 v1, 0x40c00000    # 6.0f

    if-eqz v0, :cond_0

    move v4, v0

    move v6, v4

    goto :goto_1

    .line 828
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    const/4 v4, 0x6

    const/4 v5, 0x2

    if-lez v0, :cond_1

    .line 829
    sget v0, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    div-int/2addr v6, v5

    iget v7, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    invoke-static {v0, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    .line 830
    sget v6, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    div-int/2addr v6, v5

    iget v5, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    invoke-static {v4, v6, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    :goto_0
    move v6, v4

    move v4, v0

    goto :goto_1

    .line 831
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v0, v5, :cond_2

    .line 832
    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v0

    .line 833
    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v4

    goto :goto_0

    .line 835
    :cond_2
    sget v0, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v0

    .line 836
    sget v5, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v4

    goto :goto_0

    .line 838
    :goto_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    .line 839
    iget v0, v2, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 841
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget v9, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    if-ge v8, v9, :cond_3

    move v8, v0

    move v9, v8

    goto :goto_4

    .line 845
    :cond_3
    iget v8, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v8, v0, :cond_5

    iget v8, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    mul-int/lit8 v9, v5, 0x2

    sub-int/2addr v8, v9

    iget v9, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    if-ge v8, v9, :cond_4

    :goto_2
    move v8, v0

    goto :goto_3

    :cond_4
    move v8, v1

    goto :goto_3

    :cond_5
    iget v8, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    sub-int/2addr v8, v4

    iget v9, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    if-ge v8, v9, :cond_4

    goto :goto_2

    .line 846
    :goto_3
    iget v9, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    mul-int/lit8 v10, v4, 0x2

    add-int/2addr v9, v10

    if-ltz v9, :cond_6

    move v1, v0

    :cond_6
    move v9, v1

    :goto_4
    if-eqz p1, :cond_7

    .line 851
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;->path:Landroid/graphics/Path;

    .line 852
    invoke-virtual {p1, v2, v8, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;->invalidatePath(Landroid/graphics/Rect;ZZ)Z

    move-result p1

    move-object v1, v0

    move v0, p1

    goto :goto_5

    .line 854
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->path:Landroid/graphics/Path;

    move-object v1, p1

    :goto_5
    if-nez v0, :cond_9

    .line 857
    iget p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    if-eqz p1, :cond_8

    goto :goto_6

    :cond_8
    return-object v1

    :cond_9
    :goto_6
    const/4 v10, 0x1

    move-object v0, p0

    .line 858
    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->generatePath(Landroid/graphics/Path;Landroid/graphics/Rect;IIIIIZZZ)V

    return-object v1
.end method

.method public setAlpha(I)V
    .locals 4

    .line 1014
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->alpha:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1015
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->alpha:I

    .line 1016
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1017
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    if-eqz v0, :cond_1

    .line 1018
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->selectedPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradientSelectedOverlay:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1021
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-nez v0, :cond_2

    .line 1022
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1023
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    if-eq v1, p1, :cond_2

    .line 1024
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    return-void
.end method

.method public setBotButtonsBottom(Z)V
    .locals 0

    .line 342
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->botButtonsBottom:Z

    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 1046
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1047
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v0, :cond_0

    .line 1048
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setDrawFullBubble(Z)V
    .locals 0

    .line 1009
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    return-void
.end method

.method public setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1061
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method public setRoundRadius(I)V
    .locals 0

    .line 1053
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    return-void
.end method

.method public setRoundingRadius(F)V
    .locals 0

    .line 1057
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    return-void
.end method

.method public setTop(IIIIIIZZ)V
    .locals 24

    move-object/from16 v0, p0

    .line 350
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v1, :cond_0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 351
    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setTop(IIIIIIZZ)V

    goto :goto_0

    :cond_0
    move/from16 v4, p3

    move/from16 v6, p5

    .line 358
    :goto_0
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 359
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleSelected:I

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    :goto_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v1

    .line 360
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient1:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getCurrentColor(I)I

    move-result v5

    .line 361
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient2:I

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getCurrentColor(I)I

    move-result v7

    .line 362
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient3:I

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getCurrentColor(I)I

    move-result v8

    .line 363
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradientAnimated:I

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getCurrentColor(I)I

    move-result v9

    if-eqz v9, :cond_2

    move v9, v2

    goto :goto_2

    :cond_2
    move v9, v3

    :goto_2
    move v10, v9

    move v9, v5

    move v5, v10

    move v10, v7

    move v11, v8

    goto :goto_4

    .line 365
    :cond_3
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    if-eqz v1, :cond_4

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleSelected:I

    goto :goto_3

    :cond_4
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    :goto_3
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v1

    move v5, v3

    move v9, v5

    move v10, v9

    move v11, v10

    :goto_4
    if-eqz v9, :cond_5

    .line 372
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v1

    :cond_5
    move v8, v1

    .line 375
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    const/4 v7, 0x2

    if-eqz v1, :cond_6

    move v1, v7

    goto :goto_5

    .line 378
    :cond_6
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v1, v7, :cond_7

    move v1, v2

    goto :goto_5

    :cond_7
    move v1, v3

    .line 380
    :goto_5
    iget-boolean v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    const/4 v13, 0x3

    if-nez v12, :cond_8

    if-eqz v10, :cond_8

    if-eqz v5, :cond_8

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v12, v12, v1

    if-eqz v12, :cond_8

    .line 381
    invoke-virtual {v12}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getColors()[I

    move-result-object v12

    .line 382
    aget v14, v12, v3

    iput v14, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentColor:I

    .line 383
    aget v14, v12, v2

    iput v14, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor1:I

    .line 384
    aget v14, v12, v7

    iput v14, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor2:I

    .line 385
    aget v12, v12, v13

    iput v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor3:I

    .line 387
    :cond_8
    iget-boolean v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    const/4 v14, -0x1

    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v12, :cond_e

    if-eqz v10, :cond_e

    if-eqz v5, :cond_e

    .line 388
    iget v5, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    if-ne v4, v5, :cond_9

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmapShader:Landroid/graphics/Shader;

    if-eqz v5, :cond_9

    iget v5, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentColor:I

    if-ne v5, v8, :cond_9

    iget v5, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor1:I

    if-ne v5, v9, :cond_9

    iget v5, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor2:I

    if-ne v5, v10, :cond_9

    iget v5, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor3:I

    if-ne v5, v11, :cond_9

    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentAnimateGradient:Z

    if-nez v5, :cond_d

    .line 389
    :cond_9
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_a

    const/16 v5, 0x50

    .line 390
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v13, 0x3c

    invoke-static {v13, v5, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmap:Landroid/graphics/Bitmap;

    .line 391
    invoke-virtual {v5, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 392
    new-instance v5, Landroid/graphics/BitmapShader;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmap:Landroid/graphics/Bitmap;

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v12, v13, v13}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v5, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmapShader:Landroid/graphics/Shader;

    .line 394
    :cond_a
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v12, v5, v1

    if-nez v12, :cond_c

    .line 395
    new-instance v12, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {v12}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    aput-object v12, v5, v1

    .line 396
    iget v5, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-eq v5, v7, :cond_b

    .line 397
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v5, v5, v1

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPostInvalidateParent(Z)V

    .line 399
    :cond_b
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v5, v5, v1

    invoke-direct {v0, v15}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setRoundRadius(I)V

    .line 401
    :cond_c
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v7, v5, v1

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIIILandroid/graphics/Bitmap;)V

    .line 402
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmapShader:Landroid/graphics/Shader;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v7}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 404
    :cond_d
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmapShader:Landroid/graphics/Shader;

    iput-object v5, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    .line 405
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 406
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 407
    iput v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentColor:I

    .line 408
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentAnimateGradient:Z

    .line 409
    iput v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor1:I

    .line 410
    iput v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor2:I

    .line 411
    iput v11, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor3:I

    goto/16 :goto_9

    :cond_e
    if-eqz v9, :cond_15

    .line 412
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-eqz v12, :cond_f

    iget v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    if-ne v4, v12, :cond_f

    iget v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentColor:I

    if-ne v12, v8, :cond_f

    iget v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor1:I

    if-ne v12, v9, :cond_f

    iget v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor2:I

    if-ne v12, v10, :cond_f

    iget v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor3:I

    if-ne v12, v11, :cond_f

    iget-boolean v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentAnimateGradient:Z

    if-eq v12, v5, :cond_15

    :cond_f
    if-eqz v10, :cond_12

    if-eqz v5, :cond_12

    .line 414
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v13, v12, v1

    if-nez v13, :cond_11

    .line 415
    new-instance v13, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {v13}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    aput-object v13, v12, v1

    .line 416
    iget v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-eq v12, v7, :cond_10

    .line 417
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v7, v7, v1

    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPostInvalidateParent(Z)V

    .line 419
    :cond_10
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v2, v2, v1

    invoke-direct {v0, v15}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v7

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setRoundRadius(I)V

    .line 421
    :cond_11
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v2, v2, v1

    invoke-virtual {v2, v8, v9, v10, v11}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIII)V

    .line 422
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmapShader()Landroid/graphics/BitmapShader;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    goto :goto_8

    :cond_12
    if-eqz v10, :cond_14

    if-eqz v11, :cond_13

    const/4 v12, 0x4

    .line 427
    new-array v12, v12, [I

    aput v11, v12, v3

    aput v10, v12, v2

    aput v9, v12, v7

    aput v8, v12, v13

    :goto_6
    move-object/from16 v20, v12

    goto :goto_7

    .line 429
    :cond_13
    new-array v12, v13, [I

    aput v10, v12, v3

    aput v9, v12, v2

    aput v8, v12, v7

    goto :goto_6

    .line 431
    :goto_7
    new-instance v15, Landroid/graphics/LinearGradient;

    int-to-float v2, v6

    int-to-float v7, v4

    const/16 v21, 0x0

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v17, v2

    move/from16 v19, v7

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v15, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    goto :goto_8

    .line 433
    :cond_14
    filled-new-array {v9, v8}, [I

    move-result-object v21

    .line 434
    new-instance v16, Landroid/graphics/LinearGradient;

    int-to-float v2, v6

    int-to-float v7, v4

    const/16 v22, 0x0

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v18, v2

    move/from16 v20, v7

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v2, v16

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    .line 437
    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 438
    iput v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentColor:I

    .line 439
    iput-boolean v5, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentAnimateGradient:Z

    .line 440
    iput v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor1:I

    .line 441
    iput v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor2:I

    .line 442
    iput v11, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor3:I

    .line 443
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9

    :cond_15
    if-nez v9, :cond_17

    .line 445
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-eqz v2, :cond_16

    const/4 v2, 0x0

    .line 446
    iput-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    .line 447
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 449
    :cond_16
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 451
    :cond_17
    :goto_9
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    instance-of v2, v2, Landroid/graphics/BitmapShader;

    if-eqz v2, :cond_18

    .line 452
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v1, v2, v1

    sub-int v2, v4, p4

    move/from16 v5, p2

    invoke-virtual {v1, v3, v6, v5, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBounds(IIII)V

    .line 454
    :cond_18
    iput v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    .line 456
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    instance-of v1, v1, Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_19

    move/from16 v3, p4

    :cond_19
    sub-int v1, p1, v3

    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    move/from16 v8, p7

    .line 457
    iput-boolean v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isTopNear:Z

    move/from16 v9, p8

    .line 458
    iput-boolean v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    return-void
.end method

.method public setTop(IIIZZ)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v7, p4

    move v8, p5

    .line 346
    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setTop(IIIIIIZZ)V

    return-void
.end method
