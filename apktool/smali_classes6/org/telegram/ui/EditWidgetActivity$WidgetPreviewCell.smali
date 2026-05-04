.class public Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/EditWidgetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WidgetPreviewCell"
.end annotation


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

.field private bitmapRect:Landroid/graphics/RectF;

.field private cells:[Landroid/view/ViewGroup;

.field private oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

.field private roundPaint:Landroid/graphics/Paint;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lorg/telegram/ui/EditWidgetActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/EditWidgetActivity;Landroid/content/Context;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 197
    iput-object v1, v0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    .line 198
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 193
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->roundPaint:Landroid/graphics/Paint;

    .line 194
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->bitmapRect:Landroid/graphics/RectF;

    const/4 v3, 0x2

    .line 195
    new-array v5, v3, [Landroid/view/ViewGroup;

    iput-object v5, v0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    const/4 v5, 0x0

    .line 200
    invoke-virtual {v0, v5}, Landroid/view/View;->setWillNotDraw(Z)V

    const/high16 v6, 0x41c00000    # 24.0f

    .line 201
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v0, v5, v7, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 203
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 204
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v7, -0x2

    const/16 v8, 0x11

    .line 205
    invoke-static {v7, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    new-instance v9, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-direct {v9, v2}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;)V

    .line 208
    sget v10, Lorg/telegram/messenger/R$string;->WidgetPreview:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Cells/ChatActionCell;->setCustomText(Ljava/lang/CharSequence;)V

    const/16 v16, 0x0

    const/16 v17, 0x4

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/16 v13, 0x11

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 209
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 213
    sget v10, Lorg/telegram/messenger/R$drawable;->widget_bg:I

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v16, 0xa

    const/16 v17, 0x0

    const/16 v14, 0xa

    .line 214
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v6}, Lorg/telegram/ui/EditWidgetActivity;->-$$Nest$fputpreviewImageView(Lorg/telegram/ui/EditWidgetActivity;Landroid/widget/ImageView;)V

    .line 218
    invoke-static {v1}, Lorg/telegram/ui/EditWidgetActivity;->-$$Nest$fgetwidgetType(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v6

    const/4 v10, 0x0

    const/16 v11, 0xa0

    if-nez v6, :cond_1

    :goto_0
    if-ge v5, v3, :cond_0

    .line 220
    iget-object v4, v0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    sget v12, Lorg/telegram/messenger/R$layout;->shortcut_widget_item:I

    invoke-virtual {v6, v12, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    aput-object v6, v4, v5

    .line 221
    iget-object v4, v0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v4, v4, v5

    const/4 v6, -0x1

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v9, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 223
    :cond_0
    invoke-static {v1}, Lorg/telegram/ui/EditWidgetActivity;->-$$Nest$fgetpreviewImageView(Lorg/telegram/ui/EditWidgetActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const/16 v4, 0xda

    invoke-static {v4, v11, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    invoke-static {v1}, Lorg/telegram/ui/EditWidgetActivity;->-$$Nest$fgetpreviewImageView(Lorg/telegram/ui/EditWidgetActivity;)Landroid/widget/ImageView;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->chats_widget_preview:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 225
    :cond_1
    invoke-static {v1}, Lorg/telegram/ui/EditWidgetActivity;->-$$Nest$fgetwidgetType(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v6

    if-ne v6, v4, :cond_3

    :goto_1
    if-ge v5, v3, :cond_2

    .line 227
    iget-object v4, v0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    sget v12, Lorg/telegram/messenger/R$layout;->contacts_widget_item:I

    invoke-virtual {v6, v12, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    aput-object v6, v4, v5

    .line 228
    iget-object v4, v0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v4, v4, v5

    invoke-static {v11, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v9, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 230
    :cond_2
    invoke-static {v1}, Lorg/telegram/ui/EditWidgetActivity;->-$$Nest$fgetpreviewImageView(Lorg/telegram/ui/EditWidgetActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v11, v11, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    invoke-static {v1}, Lorg/telegram/ui/EditWidgetActivity;->-$$Nest$fgetpreviewImageView(Lorg/telegram/ui/EditWidgetActivity;)Landroid/widget/ImageView;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->contacts_widget_preview:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->updateDialogs()V

    .line 235
    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 696
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 697
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 698
    invoke-interface {v0}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;->dispose()V

    .line 699
    iput-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    .line 701
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    if-eqz v0, :cond_1

    .line 702
    invoke-interface {v0}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;->dispose()V

    .line 703
    iput-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 628
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 629
    iget-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    .line 630
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isAnimatingColor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    iget-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 632
    iget-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    iput-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    goto :goto_0

    .line 633
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    if-eqz v1, :cond_1

    .line 634
    invoke-interface {v1}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;->dispose()V

    .line 635
    iput-object v2, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    .line 637
    :cond_1
    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 639
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->access$000(Lorg/telegram/ui/EditWidgetActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getThemeAnimationValue()F

    move-result v0

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    const/4 v4, 0x2

    if-ge v3, v4, :cond_d

    if-nez v3, :cond_3

    .line 641
    iget-object v5, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_2
    if-nez v5, :cond_4

    goto/16 :goto_7

    :cond_4
    const/4 v6, 0x1

    if-ne v3, v6, :cond_5

    .line 645
    iget-object v6, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v6}, Lorg/telegram/ui/EditWidgetActivity;->access$100(Lorg/telegram/ui/EditWidgetActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v6

    if-eqz v6, :cond_5

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v6, v0

    float-to-int v6, v6

    .line 646
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    :cond_5
    const/16 v6, 0xff

    .line 648
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 650
    :goto_3
    instance-of v6, v5, Landroid/graphics/drawable/ColorDrawable;

    if-nez v6, :cond_8

    instance-of v6, v5, Landroid/graphics/drawable/GradientDrawable;

    if-nez v6, :cond_8

    instance-of v6, v5, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v6, :cond_6

    goto/16 :goto_5

    .line 658
    :cond_6
    instance-of v6, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_a

    .line 659
    move-object v6, v5

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 660
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getTileModeX()Landroid/graphics/Shader$TileMode;

    move-result-object v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    if-ne v6, v7, :cond_7

    .line 661
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v4, 0x40000000    # 2.0f

    .line 662
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v4, v6

    .line 663
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 664
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v4, v7

    invoke-virtual {v5, v1, v1, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4

    .line 666
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 667
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v8, v6

    .line 668
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 669
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 670
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 671
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    .line 672
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v9, v8

    div-int/2addr v9, v4

    sub-int/2addr v6, v7

    .line 673
    div-int/2addr v6, v4

    .line 674
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 675
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p1, v1, v1, v8, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    add-int/2addr v8, v9

    add-int/2addr v7, v6

    .line 676
    invoke-virtual {v5, v9, v6, v8, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 678
    :goto_4
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 679
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    .line 651
    :cond_8
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v5, v1, v1, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 652
    instance-of v4, v5, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    if-eqz v4, :cond_9

    .line 653
    check-cast v5, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    .line 654
    invoke-virtual {v5, p1, p0}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->drawExactBoundsSize(Landroid/graphics/Canvas;Landroid/view/View;)Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    goto :goto_6

    .line 656
    :cond_9
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_a
    :goto_6
    if-nez v3, :cond_c

    .line 681
    iget-object v4, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_c

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_c

    .line 682
    iget-object v4, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    if-eqz v4, :cond_b

    .line 683
    invoke-interface {v4}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;->dispose()V

    .line 684
    iput-object v2, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    .line 686
    :cond_b
    iput-object v2, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 687
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_c
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 690
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 691
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 623
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x43840000    # 264.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public updateDialogs()V
    .locals 26

    move-object/from16 v1, p0

    .line 239
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->-$$Nest$fgetwidgetType(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v0

    const-string v2, "%d"

    const/16 v3, 0xc

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v0, :cond_3a

    move v13, v12

    :goto_0
    if-ge v13, v9, :cond_39

    .line 242
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->-$$Nest$fgetselectedDialogs(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_0

    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Dialog;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_1
    move-object v14, v0

    goto :goto_2

    .line 245
    :cond_2
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->-$$Nest$fgetselectedDialogs(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_3

    .line 246
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-object v14, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v14}, Lorg/telegram/ui/EditWidgetActivity;->-$$Nest$fgetselectedDialogs(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v0, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 249
    iget-object v14, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v14}, Lorg/telegram/ui/EditWidgetActivity;->-$$Nest$fgetselectedDialogs(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iput-wide v14, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    :goto_2
    if-nez v14, :cond_4

    .line 256
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    const/high16 v19, 0x42400000    # 48.0f

    goto/16 :goto_21

    .line 259
    :cond_4
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v16, 0x0

    .line 265
    iget-wide v6, v14, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    const-string v6, ""

    if-eqz v0, :cond_a

    .line 266
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v7, v14, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 268
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 269
    sget v7, Lorg/telegram/messenger/R$string;->SavedMessages:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 270
    :cond_5
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 271
    sget v7, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 272
    :cond_6
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 273
    sget v7, Lorg/telegram/messenger/R$string;->HiddenName:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 275
    :cond_7
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 277
    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v8, :cond_8

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v8, :cond_8

    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v9, v9, v16

    if-eqz v9, :cond_8

    iget v9, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz v9, :cond_8

    :goto_4
    const/4 v9, 0x0

    goto :goto_7

    :cond_8
    :goto_5
    const/4 v8, 0x0

    goto :goto_4

    :cond_9
    move-object v7, v6

    goto :goto_5

    .line 282
    :cond_a
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v7, v14, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 284
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 285
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v8, :cond_b

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v8, :cond_b

    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v9, v9, v16

    if-eqz v9, :cond_b

    iget v9, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz v9, :cond_b

    move-object v9, v0

    const/4 v0, 0x0

    goto :goto_7

    :cond_b
    move-object v9, v0

    :goto_6
    const/4 v0, 0x0

    const/4 v8, 0x0

    goto :goto_7

    :cond_c
    move-object v9, v0

    move-object v7, v6

    goto :goto_6

    .line 290
    :goto_7
    iget-object v10, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v10, v10, v13

    const/high16 v19, 0x42400000    # 48.0f

    sget v4, Lorg/telegram/messenger/R$id;->shortcut_widget_item_text:I

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v8, :cond_d

    .line 295
    :try_start_0
    iget-object v4, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v8, v11}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    .line 296
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :cond_d
    const/4 v4, 0x0

    .line 299
    :goto_8
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    .line 300
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 301
    invoke-virtual {v8, v12}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 302
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-nez v4, :cond_12

    if-eqz v0, :cond_f

    .line 306
    new-instance v4, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 307
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 308
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_9

    .line 309
    :cond_e
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 310
    invoke-virtual {v4, v11}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_9

    .line 313
    :cond_f
    new-instance v4, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v4, v9}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    :cond_10
    :goto_9
    int-to-float v0, v7

    if-eqz v9, :cond_11

    .line 315
    iget-boolean v15, v9, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v15, :cond_11

    move v15, v11

    goto :goto_a

    :cond_11
    move v15, v12

    :goto_a
    invoke-static {v0, v11, v15}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZ)I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setRoundRadius(I)V

    .line 316
    invoke-virtual {v4, v12, v12, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 317
    invoke-virtual {v4, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_b
    const/4 v4, 0x0

    goto :goto_d

    .line 319
    :cond_12
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v4, v15, v15}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 320
    iget-object v15, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->roundPaint:Landroid/graphics/Paint;

    if-nez v15, :cond_13

    .line 321
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v15, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->roundPaint:Landroid/graphics/Paint;

    .line 322
    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15}, Landroid/graphics/RectF;-><init>()V

    iput-object v15, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->bitmapRect:Landroid/graphics/RectF;

    :cond_13
    int-to-float v7, v7

    .line 324
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v7, v15

    .line 325
    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    .line 326
    invoke-virtual {v10, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 327
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    if-eqz v9, :cond_14

    iget-boolean v15, v9, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v15, :cond_14

    move v15, v11

    goto :goto_c

    :cond_14
    move v15, v12

    :goto_c
    invoke-static {v7, v11, v15}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZ)I

    move-result v7

    int-to-float v7, v7

    .line 328
    iget-object v15, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 329
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v5, v5, v15, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 330
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->bitmapRect:Landroid/graphics/RectF;

    iget-object v4, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v0, v7, v7, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 331
    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    goto :goto_b

    .line 333
    :goto_d
    invoke-virtual {v10, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 334
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    sget v4, Lorg/telegram/messenger/R$id;->shortcut_widget_item_avatar:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_f

    .line 336
    :goto_e
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 339
    :goto_f
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Landroidx/collection/LongSparseArray;

    iget-wide v7, v14, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v0, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 340
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_15

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    move-object v4, v0

    goto :goto_10

    :cond_15
    const/4 v4, 0x0

    :goto_10
    if-eqz v4, :cond_35

    .line 344
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v7

    cmp-long v0, v7, v16

    if-lez v0, :cond_16

    .line 346
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    move-object v7, v0

    const/4 v0, 0x0

    goto :goto_11

    .line 348
    :cond_16
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    const/4 v7, 0x0

    .line 352
    :goto_11
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v10, Lorg/telegram/messenger/R$color;->widget_text:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 353
    iget-object v10, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v10, v10, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v10, :cond_19

    .line 354
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v7, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    if-nez v7, :cond_18

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;

    if-eqz v0, :cond_17

    goto :goto_12

    .line 358
    :cond_17
    iget-object v6, v4, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 360
    :cond_18
    :goto_12
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lorg/telegram/messenger/R$color;->widget_action_text:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    goto/16 :goto_1e

    .line 363
    :cond_19
    const-string v15, "\ud83d\udcce "

    const-string v21, "\ud83d\uddbc "

    const-string v22, "\ud83c\udfa7 "

    const-string v23, "\ud83c\udfa4 "

    const-string v24, "\ud83d\udcf9 "

    if-eqz v9, :cond_29

    move/from16 v25, v11

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v10, v10, v16

    if-lez v10, :cond_29

    if-nez v0, :cond_29

    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 364
    :cond_1a
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 365
    sget v0, Lorg/telegram/messenger/R$string;->FromYou:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_13
    move-object v7, v0

    goto :goto_14

    :cond_1b
    if-eqz v7, :cond_1c

    .line 367
    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "\n"

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 369
    :cond_1c
    const-string v0, "DELETED"

    goto :goto_13

    .line 373
    :goto_14
    iget-object v0, v4, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    const/16 v9, 0x21

    const/16 v10, 0x20

    const/16 v11, 0xa

    const/16 v5, 0x96

    const-string v3, "%2$s: \u2068%1$s\u2069"

    if-eqz v0, :cond_22

    .line 374
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v5, :cond_1d

    .line 376
    invoke-virtual {v0, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 379
    :cond_1d
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_1e

    move-object/from16 v15, v24

    goto :goto_15

    .line 381
    :cond_1e
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v5

    if-eqz v5, :cond_1f

    move-object/from16 v15, v23

    goto :goto_15

    .line 383
    :cond_1f
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v5

    if-eqz v5, :cond_20

    move-object/from16 v15, v22

    goto :goto_15

    .line 385
    :cond_20
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v5

    if-eqz v5, :cond_21

    move-object/from16 v15, v21

    .line 390
    :cond_21
    :goto_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v0, v6, v12

    aput-object v7, v6, v25

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :goto_16
    move-object v6, v0

    goto/16 :goto_1a

    .line 391
    :cond_22
    iget-object v0, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_26

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 392
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/R$color;->widget_action_text:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 394
    iget-object v0, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v5, :cond_23

    .line 395
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 396
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    move/from16 v5, v25

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v0, v6, v12

    const-string v0, "\ud83d\udcca \u2068%s\u2069"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_17
    const/4 v15, 0x2

    goto :goto_18

    :cond_23
    move/from16 v5, v25

    .line 397
    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v6, :cond_24

    .line 398
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v0, v6, v12

    const-string v0, "\ud83c\udfae \u2068%s\u2069"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move/from16 v25, v5

    goto :goto_17

    .line 399
    :cond_24
    iget v0, v4, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xe

    if-ne v0, v6, :cond_25

    .line 400
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v6

    move/from16 v25, v5

    const/4 v15, 0x2

    new-array v5, v15, [Ljava/lang/Object;

    aput-object v0, v5, v12

    aput-object v6, v5, v25

    const-string v0, "\ud83c\udfa7 \u2068%s - %s\u2069"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_25
    move/from16 v25, v5

    const/4 v15, 0x2

    .line 402
    iget-object v0, v4, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    :goto_18
    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 405
    new-array v5, v15, [Ljava/lang/Object;

    aput-object v0, v5, v12

    aput-object v7, v5, v25

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 407
    :try_start_1
    new-instance v0, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_attachMessage:I

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/16 v18, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v3, v0, v5, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_19

    :catch_0
    move-exception v0

    .line 409
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_19
    move-object v6, v3

    goto :goto_1a

    .line 411
    :cond_26
    iget-object v0, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 413
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v5, :cond_27

    .line 414
    invoke-virtual {v0, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 416
    :cond_27
    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x2

    .line 417
    new-array v5, v15, [Ljava/lang/Object;

    aput-object v0, v5, v12

    const/16 v25, 0x1

    aput-object v7, v5, v25

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_16

    .line 419
    :cond_28
    invoke-static {v6}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_16

    .line 422
    :goto_1a
    :try_start_2
    new-instance v0, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v25, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v0, v12, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1e

    :catch_1
    move-exception v0

    .line 424
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 428
    :cond_29
    iget-object v0, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v3, :cond_2a

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-eqz v3, :cond_2a

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v3, :cond_2a

    .line 429
    sget v0, Lorg/telegram/messenger/R$string;->AttachPhotoExpired:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1e

    .line 430
    :cond_2a
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v3, :cond_2b

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-eqz v3, :cond_2b

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v3, :cond_2b

    .line 431
    sget v0, Lorg/telegram/messenger/R$string;->AttachVideoExpired:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1e

    .line 432
    :cond_2b
    iget-object v3, v4, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v3, :cond_30

    .line 434
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_2c

    move-object/from16 v15, v24

    goto :goto_1b

    .line 436
    :cond_2c
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_2d

    move-object/from16 v15, v23

    goto :goto_1b

    .line 438
    :cond_2d
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_2e

    move-object/from16 v15, v22

    goto :goto_1b

    .line 440
    :cond_2e
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v0

    if-eqz v0, :cond_2f

    move-object/from16 v15, v21

    .line 445
    :cond_2f
    :goto_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1e

    .line 447
    :cond_30
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v3, :cond_31

    .line 448
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\ud83d\udcca "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    move-object v6, v0

    goto :goto_1d

    .line 450
    :cond_31
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v0, :cond_32

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ud83c\udfae "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 452
    :cond_32
    iget v0, v4, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xe

    if-ne v0, v6, :cond_33

    .line 453
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x2

    new-array v5, v15, [Ljava/lang/Object;

    aput-object v0, v5, v12

    const/16 v25, 0x1

    aput-object v3, v5, v25

    const-string v0, "\ud83c\udfa7 %s - %s"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 455
    :cond_33
    iget-object v0, v4, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 456
    iget-object v3, v4, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    goto :goto_1c

    .line 458
    :goto_1d
    iget-object v0, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_34

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 459
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$color;->widget_action_text:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 465
    :cond_34
    :goto_1e
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    sget v3, Lorg/telegram/messenger/R$id;->shortcut_widget_item_time:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    sget v3, Lorg/telegram/messenger/R$id;->shortcut_widget_item_message:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    sget v3, Lorg/telegram/messenger/R$id;->shortcut_widget_item_message:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_20

    .line 469
    :cond_35
    iget v0, v14, Lorg/telegram/tgnet/TLRPC$Dialog;->last_message_date:I

    if-eqz v0, :cond_36

    .line 470
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    sget v3, Lorg/telegram/messenger/R$id;->shortcut_widget_item_time:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v3, v14, Lorg/telegram/tgnet/TLRPC$Dialog;->last_message_date:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f

    .line 472
    :cond_36
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    sget v3, Lorg/telegram/messenger/R$id;->shortcut_widget_item_time:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    :goto_1f
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    sget v3, Lorg/telegram/messenger/R$id;->shortcut_widget_item_message:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    :goto_20
    iget v0, v14, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    if-lez v0, :cond_38

    .line 477
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    sget v3, Lorg/telegram/messenger/R$id;->shortcut_widget_item_badge:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v3, v14, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v3, v4, v12

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    sget v3, Lorg/telegram/messenger/R$id;->shortcut_widget_item_badge:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 479
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, v14, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    move-wide/from16 v5, v16

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 480
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    sget v3, Lorg/telegram/messenger/R$id;->shortcut_widget_item_badge:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->widget_counter_muted:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_21

    .line 482
    :cond_37
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    sget v3, Lorg/telegram/messenger/R$id;->shortcut_widget_item_badge:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->widget_counter:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_21

    .line 485
    :cond_38
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    sget v3, Lorg/telegram/messenger/R$id;->shortcut_widget_item_badge:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v15, 0x8

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    :goto_21
    add-int/lit8 v13, v13, 0x1

    const/16 v3, 0xc

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v9, 0x2

    const/4 v11, 0x1

    goto/16 :goto_0

    .line 488
    :cond_39
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v12

    sget v2, Lorg/telegram/messenger/R$id;->shortcut_widget_item_divider:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v5

    sget v2, Lorg/telegram/messenger/R$id;->shortcut_widget_item_divider:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v15, 0x8

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_40

    :cond_3a
    move v5, v11

    const/high16 v19, 0x42400000    # 48.0f

    .line 490
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->-$$Nest$fgetwidgetType(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v0

    if-ne v0, v5, :cond_5c

    move v3, v12

    const/4 v5, 0x2

    :goto_22
    if-ge v3, v5, :cond_5c

    move v4, v12

    :goto_23
    if-ge v4, v5, :cond_5b

    mul-int/lit8 v0, v3, 0x2

    add-int/2addr v0, v4

    .line 495
    iget-object v5, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v5}, Lorg/telegram/ui/EditWidgetActivity;->-$$Nest$fgetselectedDialogs(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 496
    iget-object v5, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MediaDataController;->hints:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3c

    .line 497
    iget-object v5, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MediaDataController;->hints:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 498
    iget-object v7, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v7, :cond_3b

    .line 500
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 501
    iput-wide v5, v7, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    :cond_3b
    move-object v5, v7

    goto :goto_24

    :cond_3c
    const/4 v5, 0x0

    goto :goto_24

    .line 507
    :cond_3d
    iget-object v5, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v5}, Lorg/telegram/ui/EditWidgetActivity;->-$$Nest$fgetselectedDialogs(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3c

    .line 508
    iget-object v5, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-object v6, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v6}, Lorg/telegram/ui/EditWidgetActivity;->-$$Nest$fgetselectedDialogs(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v5, :cond_3e

    .line 510
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 511
    iget-object v6, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v6}, Lorg/telegram/ui/EditWidgetActivity;->-$$Nest$fgetselectedDialogs(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    :cond_3e
    :goto_24
    if-nez v5, :cond_42

    .line 518
    iget-object v5, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v5, v5, v3

    if-nez v4, :cond_3f

    sget v6, Lorg/telegram/messenger/R$id;->contacts_widget_item1:I

    goto :goto_25

    :cond_3f
    sget v6, Lorg/telegram/messenger/R$id;->contacts_widget_item2:I

    :goto_25
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_41

    const/4 v5, 0x2

    if-ne v0, v5, :cond_40

    goto :goto_27

    :cond_40
    move v6, v5

    const/4 v5, 0x1

    :goto_26
    const/4 v7, 0x0

    const/16 v13, 0xc

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    goto/16 :goto_3f

    .line 520
    :cond_41
    :goto_27
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v3

    const/16 v15, 0x8

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x1

    const/4 v6, 0x2

    goto :goto_26

    .line 524
    :cond_42
    iget-object v6, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v6, v6, v3

    if-nez v4, :cond_43

    sget v7, Lorg/telegram/messenger/R$id;->contacts_widget_item1:I

    goto :goto_28

    :cond_43
    sget v7, Lorg/telegram/messenger/R$id;->contacts_widget_item2:I

    :goto_28
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    const/4 v6, 0x2

    if-eqz v0, :cond_44

    if-ne v0, v6, :cond_45

    .line 526
    :cond_44
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v3

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 534
    :cond_45
    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 535
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 536
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 537
    sget v7, Lorg/telegram/messenger/R$string;->SavedMessages:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_29

    .line 538
    :cond_46
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 539
    sget v7, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_29

    .line 540
    :cond_47
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 541
    sget v7, Lorg/telegram/messenger/R$string;->HiddenName:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_29

    .line 543
    :cond_48
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    .line 545
    :goto_29
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-nez v8, :cond_49

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-nez v8, :cond_49

    if-eqz v0, :cond_49

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v8, :cond_49

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v8, :cond_49

    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/16 v16, 0x0

    cmp-long v9, v9, v16

    if-eqz v9, :cond_49

    iget v9, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz v9, :cond_49

    move-object v9, v7

    const/4 v7, 0x0

    :goto_2a
    const-wide/16 v16, 0x0

    goto :goto_2c

    :cond_49
    move-object v9, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_2a

    .line 549
    :cond_4a
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 550
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 551
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v8, :cond_4b

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v8, :cond_4b

    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/16 v16, 0x0

    cmp-long v9, v9, v16

    if-eqz v9, :cond_4c

    iget v9, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz v9, :cond_4c

    move-object v9, v7

    :goto_2b
    move-object v7, v0

    const/4 v0, 0x0

    goto :goto_2c

    :cond_4b
    const-wide/16 v16, 0x0

    :cond_4c
    move-object v9, v7

    const/4 v8, 0x0

    goto :goto_2b

    .line 555
    :goto_2c
    iget-object v10, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v10, v10, v3

    if-nez v4, :cond_4d

    sget v11, Lorg/telegram/messenger/R$id;->contacts_widget_item_text1:I

    goto :goto_2d

    :cond_4d
    sget v11, Lorg/telegram/messenger/R$id;->contacts_widget_item_text2:I

    :goto_2d
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v8, :cond_4e

    .line 559
    :try_start_3
    iget-object v9, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v8, v10}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v8

    .line 560
    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_2f

    :catchall_1
    move-exception v0

    const/4 v7, 0x0

    const/16 v13, 0xc

    :goto_2e
    const/4 v14, 0x0

    goto/16 :goto_39

    :cond_4e
    const/4 v8, 0x0

    .line 563
    :goto_2f
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    .line 564
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 565
    invoke-virtual {v10, v12}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 566
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v8, :cond_53

    if-eqz v0, :cond_50

    .line 570
    :try_start_4
    new-instance v8, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 571
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v13, :cond_4f

    const/16 v13, 0xc

    .line 572
    :try_start_5
    invoke-virtual {v8, v13}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_31

    :catchall_2
    move-exception v0

    :goto_30
    const/4 v7, 0x0

    goto :goto_2e

    :cond_4f
    const/16 v13, 0xc

    .line 573
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 v14, 0x1

    .line 574
    invoke-virtual {v8, v14}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_31

    :catchall_3
    move-exception v0

    const/16 v13, 0xc

    goto :goto_30

    :cond_50
    const/16 v13, 0xc

    .line 577
    new-instance v8, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v8, v7}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 579
    :cond_51
    :goto_31
    invoke-virtual {v8, v12, v12, v9, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v0, v9

    if-eqz v7, :cond_52

    .line 580
    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v7, :cond_52

    const/4 v7, 0x1

    :goto_32
    const/4 v14, 0x1

    goto :goto_33

    :cond_52
    move v7, v12

    goto :goto_32

    :goto_33
    invoke-static {v0, v14, v7}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZ)I

    move-result v0

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setRoundRadius(I)V

    .line 581
    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/AvatarDrawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v14, 0x0

    :goto_34
    const/4 v7, 0x0

    goto :goto_37

    :cond_53
    const/16 v13, 0xc

    .line 583
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v8, v14, v14}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    int-to-float v9, v9

    .line 584
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v9, v14

    .line 585
    invoke-virtual {v11}, Landroid/graphics/Canvas;->save()I

    .line 586
    invoke-virtual {v11, v9, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 587
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    if-eqz v7, :cond_54

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v7, :cond_54

    const/4 v7, 0x1

    :goto_35
    const/4 v14, 0x1

    goto :goto_36

    :cond_54
    move v7, v12

    goto :goto_35

    :goto_36
    invoke-static {v9, v14, v7}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZ)I

    move-result v7

    int-to-float v7, v7

    .line 588
    iget-object v9, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 589
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    int-to-float v8, v8

    const/4 v14, 0x0

    :try_start_6
    invoke-virtual {v0, v14, v14, v9, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 590
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->bitmapRect:Landroid/graphics/RectF;

    iget-object v8, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v0, v7, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 591
    invoke-virtual {v11}, Landroid/graphics/Canvas;->restore()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_34

    .line 593
    :goto_37
    :try_start_7
    invoke-virtual {v11, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 594
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v3

    if-nez v4, :cond_55

    sget v8, Lorg/telegram/messenger/R$id;->contacts_widget_item_avatar1:I

    goto :goto_38

    :catchall_4
    move-exception v0

    goto :goto_39

    :cond_55
    sget v8, Lorg/telegram/messenger/R$id;->contacts_widget_item_avatar2:I

    :goto_38
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_3a

    :catchall_5
    move-exception v0

    const/4 v7, 0x0

    .line 596
    :goto_39
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 599
    :goto_3a
    iget v0, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    if-lez v0, :cond_59

    const/16 v5, 0x63

    if-le v0, v5, :cond_56

    .line 602
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v0, v8, v12

    const-string v0, "%d+"

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_56
    const/4 v5, 0x1

    .line 604
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v0, v8, v12

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 606
    :goto_3b
    iget-object v8, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v8, v8, v3

    if-nez v4, :cond_57

    sget v9, Lorg/telegram/messenger/R$id;->contacts_widget_item_badge1:I

    goto :goto_3c

    :cond_57
    sget v9, Lorg/telegram/messenger/R$id;->contacts_widget_item_badge2:I

    :goto_3c
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v3

    if-nez v4, :cond_58

    sget v8, Lorg/telegram/messenger/R$id;->contacts_widget_item_badge_bg1:I

    goto :goto_3d

    :cond_58
    sget v8, Lorg/telegram/messenger/R$id;->contacts_widget_item_badge_bg2:I

    :goto_3d
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3f

    :cond_59
    const/4 v5, 0x1

    .line 609
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v3

    if-nez v4, :cond_5a

    sget v8, Lorg/telegram/messenger/R$id;->contacts_widget_item_badge_bg1:I

    goto :goto_3e

    :cond_5a
    sget v8, Lorg/telegram/messenger/R$id;->contacts_widget_item_badge_bg2:I

    :goto_3e
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v15, 0x8

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    :goto_3f
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto/16 :goto_23

    :cond_5b
    move v6, v5

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/16 v13, 0xc

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    add-int/lit8 v3, v3, 0x1

    move v5, v6

    goto/16 :goto_22

    .line 614
    :cond_5c
    :goto_40
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5d

    .line 615
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->-$$Nest$fgetpreviewImageView(Lorg/telegram/ui/EditWidgetActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v15, 0x8

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_41

    .line 617
    :cond_5d
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->-$$Nest$fgetpreviewImageView(Lorg/telegram/ui/EditWidgetActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_41
    return-void
.end method
