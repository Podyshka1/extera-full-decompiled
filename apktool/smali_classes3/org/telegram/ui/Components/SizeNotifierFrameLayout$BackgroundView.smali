.class Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundView"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/content/Context;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 170
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 356
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onBackgroundViewInvalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 175
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbackgroundDrawable(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_24

    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetskipBackgroundDrawing(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_f

    .line 178
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getNewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 179
    iget-object v3, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getNewDrawableMotion()Z

    move-result v3

    .line 180
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbackgroundDrawable(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    if-eq v2, v4, :cond_5

    if-eqz v2, :cond_5

    .line 181
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isAnimatingColor()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 182
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbackgroundDrawable(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fputoldBackgroundDrawable(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbackgroundMotion(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z

    move-result v6

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fputoldBackgroundMotion(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Z)V

    .line 185
    :cond_1
    instance-of v4, v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v4, :cond_2

    .line 186
    move-object v4, v2

    check-cast v4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    .line 187
    iget-object v6, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v6, v6, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setParentView(Landroid/view/View;)V

    .line 189
    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fputbackgroundDrawable(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-boolean v4, v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->attached:Z

    if-eqz v4, :cond_3

    invoke-static {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbackgroundDrawable(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v2, :cond_3

    .line 191
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbackgroundDrawable(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ChatBackgroundDrawable;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ChatBackgroundDrawable;->onAttachedToWindow(Landroid/view/View;)V

    .line 193
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-boolean v4, v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->attached:Z

    if-eqz v4, :cond_4

    invoke-static {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbackgroundDrawable(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v2, :cond_4

    .line 194
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbackgroundDrawable(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->onAttachedToWindow()V

    .line 196
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fputbackgroundMotion(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Z)V

    .line 197
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v2, v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fputthemeAnimationValue(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;F)V

    .line 198
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbackgroundDrawable(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onUpdateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$mcheckMotion(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    goto :goto_0

    .line 200
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbackgroundMotion(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z

    move-result v2

    if-eq v2, v3, :cond_6

    .line 201
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fputbackgroundMotion(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Z)V

    .line 202
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$mcheckMotion(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    .line 204
    :cond_6
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetthemeAnimationValue(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v3

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshTime:F

    const/high16 v6, 0x43480000    # 200.0f

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fputthemeAnimationValue(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;F)V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/4 v6, 0x2

    if-ge v3, v6, :cond_23

    .line 206
    iget-object v7, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-nez v3, :cond_7

    invoke-static {v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetoldBackgroundDrawable(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_2

    :cond_7
    invoke-static {v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbackgroundDrawable(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_2
    if-nez v7, :cond_8

    move/from16 v16, v4

    goto/16 :goto_e

    :cond_8
    const/4 v8, 0x1

    if-ne v3, v8, :cond_9

    .line 210
    iget-object v8, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetoldBackgroundDrawable(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_9

    iget-object v8, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetparentLayout(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 211
    iget-object v8, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetthemeAnimationValue(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v8

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    :cond_9
    const/16 v8, 0xff

    .line 213
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 218
    :goto_3
    iget-object v8, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-nez v3, :cond_a

    invoke-static {v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetoldBackgroundMotion(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z

    move-result v8

    goto :goto_4

    :cond_a
    invoke-static {v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbackgroundMotion(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z

    move-result v8

    :goto_4
    if-eqz v8, :cond_b

    .line 220
    iget-object v8, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetparallaxScale(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v8

    .line 221
    iget-object v9, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgettranslationX(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v9

    .line 222
    iget-object v10, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v10}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgettranslationY(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v10

    goto :goto_5

    :cond_b
    move v8, v4

    move v9, v5

    move v10, v9

    .line 228
    :goto_5
    instance-of v11, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v11, :cond_13

    .line 229
    move-object v11, v7

    check-cast v11, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    .line 230
    invoke-virtual {v11}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->hasPattern()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 231
    iget-object v11, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->isActionBarVisible()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v11

    goto :goto_6

    :cond_c
    move v11, v2

    :goto_6
    iget-object v12, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->isStatusBarVisible()Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v12, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v12}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetoccupyStatusBar(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z

    move-result v12

    if-eqz v12, :cond_d

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_7

    :cond_d
    move v12, v2

    :goto_7
    add-int/2addr v11, v12

    .line 232
    iget-object v12, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->useRootView()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v12, v11

    goto :goto_8

    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 233
    :goto_8
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    int-to-float v14, v12

    .line 234
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    .line 235
    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 236
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v13

    mul-float/2addr v14, v8

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    .line 237
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v13

    mul-float/2addr v15, v8

    move/from16 v16, v4

    float-to-double v4, v15

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 238
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v14

    div-int/2addr v5, v6

    float-to-int v8, v9

    add-int/2addr v5, v8

    .line 239
    iget-object v8, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbackgroundTranslationY(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v8

    sub-int/2addr v12, v4

    div-int/2addr v12, v6

    add-int/2addr v8, v12

    add-int/2addr v8, v11

    float-to-int v6, v10

    add-int/2addr v8, v6

    .line 240
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 241
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v9, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbottomClip(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v9

    sub-int/2addr v6, v9

    invoke-virtual {v1, v2, v11, v14, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    add-int/2addr v14, v5

    add-int/2addr v4, v8

    .line 242
    invoke-virtual {v7, v5, v8, v14, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 243
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 244
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$mcheckSnowflake(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/Canvas;)V

    .line 245
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_d

    :cond_f
    move/from16 v16, v4

    .line 247
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbottomClip(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    if-eqz v4, :cond_10

    .line 248
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 249
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbottomClip(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 251
    :cond_10
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbackgroundTranslationY(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    invoke-virtual {v11, v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setTranslationY(I)V

    .line 252
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbackgroundTranslationY(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v4, v10

    float-to-int v4, v4

    .line 253
    iget-object v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetanimationInProgress(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z

    move-result v5

    if-eqz v5, :cond_11

    int-to-float v4, v4

    .line 254
    iget-object v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetemojiOffset(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    goto :goto_9

    .line 255
    :cond_11
    iget-object v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetemojiHeight(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v5

    if-eqz v5, :cond_12

    .line 256
    iget-object v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetemojiHeight(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 258
    :cond_12
    :goto_9
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v7, v2, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 259
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 260
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbottomClip(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    if-eqz v4, :cond_1f

    .line 261
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_d

    :cond_13
    move/from16 v16, v4

    .line 264
    instance-of v4, v7, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_15

    .line 265
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbottomClip(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    if-eqz v4, :cond_14

    .line 266
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 267
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbottomClip(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 269
    :cond_14
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v7, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 270
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 271
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$mcheckSnowflake(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/Canvas;)V

    .line 272
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbottomClip(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    if-eqz v4, :cond_1f

    .line 273
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_d

    .line 275
    :cond_15
    instance-of v4, v7, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_17

    .line 276
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbottomClip(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    if-eqz v4, :cond_16

    .line 277
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 278
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbottomClip(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 280
    :cond_16
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbackgroundTranslationY(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbackgroundTranslationY(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v6, v8

    invoke-virtual {v7, v2, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 281
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 282
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$mcheckSnowflake(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/Canvas;)V

    .line 283
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbottomClip(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    if-eqz v4, :cond_1f

    .line 284
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_d

    .line 286
    :cond_17
    instance-of v4, v7, Landroid/graphics/drawable/BitmapDrawable;

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v4, :cond_1c

    .line 287
    move-object v4, v7

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 288
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getTileModeX()Landroid/graphics/Shader$TileMode;

    move-result-object v4

    sget-object v11, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    if-ne v4, v11, :cond_18

    .line 289
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 290
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v5, v4

    .line 291
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 292
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v4, v8

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {v7, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 293
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 294
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$mcheckSnowflake(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/Canvas;)V

    .line 295
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_d

    .line 297
    :cond_18
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->isActionBarVisible()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    goto :goto_a

    :cond_19
    move v4, v2

    :goto_a
    iget-object v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->isStatusBarVisible()Z

    move-result v5

    if-eqz v5, :cond_1a

    iget-object v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetoccupyStatusBar(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z

    move-result v5

    if-eqz v5, :cond_1a

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_b

    :cond_1a
    move v5, v2

    :goto_b
    add-int/2addr v4, v5

    .line 298
    iget-object v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->useRootView()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v4

    goto :goto_c

    :cond_1b
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 299
    :goto_c
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    int-to-float v12, v5

    .line 300
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v12, v14

    .line 301
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 302
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v11

    mul-float/2addr v12, v8

    float-to-double v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v12, v14

    .line 303
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v11

    mul-float/2addr v14, v8

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v8, v14

    .line 304
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v11, v12

    div-int/2addr v11, v6

    float-to-int v9, v9

    add-int/2addr v11, v9

    .line 305
    iget-object v9, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbackgroundTranslationY(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v9

    sub-int/2addr v5, v8

    div-int/2addr v5, v6

    add-int/2addr v9, v5

    add-int/2addr v9, v4

    float-to-int v5, v10

    add-int/2addr v9, v5

    .line 306
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 307
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbottomClip(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v4, v12, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    add-int/2addr v12, v11

    add-int/2addr v8, v9

    .line 308
    invoke-virtual {v7, v11, v9, v12, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 309
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 310
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$mcheckSnowflake(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/Canvas;)V

    .line 311
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_d

    .line 314
    :cond_1c
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbottomClip(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    if-eqz v4, :cond_1d

    .line 315
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 316
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v11, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbottomClip(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v11

    sub-int/2addr v6, v11

    invoke-virtual {v1, v2, v2, v4, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 318
    :cond_1d
    instance-of v4, v7, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v4, :cond_1e

    .line 319
    move-object v4, v7

    check-cast v4, Lorg/telegram/ui/ChatBackgroundDrawable;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ChatBackgroundDrawable;->setParent(Landroid/view/View;)V

    .line 321
    :cond_1e
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    sub-float v6, v8, v16

    mul-float/2addr v4, v6

    div-float/2addr v4, v5

    add-float/2addr v4, v9

    .line 322
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    div-float/2addr v9, v5

    add-float/2addr v9, v10

    float-to-int v5, v4

    .line 323
    iget-object v6, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbackgroundTranslationY(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v9

    float-to-int v6, v6

    .line 326
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v8

    add-float/2addr v10, v4

    float-to-int v4, v10

    iget-object v10, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v10}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbackgroundTranslationY(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v10

    int-to-float v10, v10

    .line 327
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    add-float/2addr v10, v9

    float-to-int v8, v10

    .line 323
    invoke-virtual {v7, v5, v6, v4, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 330
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 331
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$mcheckSnowflake(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/Canvas;)V

    .line 332
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetbottomClip(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v4

    if-eqz v4, :cond_1f

    .line 333
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_1f
    :goto_d
    if-nez v3, :cond_22

    .line 336
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetoldBackgroundDrawable(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_22

    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetthemeAnimationValue(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v4

    cmpl-float v4, v4, v16

    if-ltz v4, :cond_22

    .line 337
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-boolean v5, v4, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->attached:Z

    if-eqz v5, :cond_20

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetoldBackgroundDrawable(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v4, :cond_20

    .line 338
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetoldBackgroundDrawable(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ChatBackgroundDrawable;

    iget-object v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v5, v5, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatBackgroundDrawable;->onDetachedFromWindow(Landroid/view/View;)V

    .line 340
    :cond_20
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-boolean v5, v4, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->attached:Z

    if-eqz v5, :cond_21

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetoldBackgroundDrawable(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v4, :cond_21

    .line 341
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetoldBackgroundDrawable(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->onDetachedFromWindow()V

    .line 343
    :cond_21
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fputoldBackgroundDrawable(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/drawable/Drawable;)V

    .line 344
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fputoldBackgroundMotion(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Z)V

    .line 345
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$mcheckMotion(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    .line 346
    iget-object v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    :cond_22
    :goto_e
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v16

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_23
    move/from16 v16, v4

    .line 349
    iget-object v1, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->-$$Nest$fgetthemeAnimationValue(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F

    move-result v1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_24

    .line 350
    iget-object v1, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_24
    :goto_f
    return-void
.end method
