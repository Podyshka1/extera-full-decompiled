.class Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LiteModeSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchCell"
.end annotation


# instance fields
.field private all:I

.field private arrowView:Landroid/widget/ImageView;

.field private checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

.field private containing:Z

.field private countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private disabled:Z

.field private enabled:I

.field private imageView:Landroid/widget/ImageView;

.field private needDivider:Z

.field private needLine:Z

.field private switchView:Lorg/telegram/ui/Components/Switch;

.field private textView:Landroid/widget/TextView;

.field private textViewLayout:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lorg/telegram/ui/LiteModeSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/LiteModeSettingsActivity;Landroid/content/Context;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 443
    iput-object v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    .line 444
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 446
    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 448
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->imageView:Landroid/widget/ImageView;

    .line 449
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 450
    iget-object v4, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->imageView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 451
    iget-object v4, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->imageView:Landroid/widget/ImageView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v8, 0x3

    const/4 v9, 0x5

    if-eqz v6, :cond_0

    move v6, v9

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    const/16 v10, 0x10

    or-int/lit8 v13, v6, 0x10

    const/high16 v16, 0x41a00000    # 20.0f

    const/16 v17, 0x0

    const/16 v11, 0x18

    const/high16 v12, 0x41c00000    # 24.0f

    const/high16 v14, 0x41a00000    # 20.0f

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    new-instance v4, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell$1;

    invoke-direct {v4, v0, v2, v1}, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell$1;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;Landroid/content/Context;Lorg/telegram/ui/LiteModeSettingsActivity;)V

    iput-object v4, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    .line 462
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 463
    iget-object v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 464
    iget-object v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 465
    iget-object v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 466
    iget-object v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 467
    iget-object v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_1

    move v6, v9

    goto :goto_1

    :cond_1
    move v6, v8

    :goto_1
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 468
    iget-object v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 470
    new-instance v11, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v1, 0x0

    invoke-direct {v11, v2, v1, v3, v3}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v11, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-wide/16 v15, 0xc8

    .line 471
    sget-object v17, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v12, 0x3eb33333    # 0.35f

    const-wide/16 v13, 0x0

    invoke-virtual/range {v11 .. v17}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 472
    iget-object v11, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 473
    iget-object v11, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v12, 0x41600000    # 14.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 474
    iget-object v11, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 475
    iget-object v11, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v11, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 477
    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->arrowView:Landroid/widget/ImageView;

    .line 478
    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 479
    iget-object v11, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->arrowView:Landroid/widget/ImageView;

    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-direct {v12, v4, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 480
    iget-object v4, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->arrowView:Landroid/widget/ImageView;

    sget v7, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 482
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    .line 483
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 484
    iget-object v4, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_2

    move v7, v9

    goto :goto_2

    :cond_2
    move v7, v8

    :goto_2
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 485
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v11, -0x2

    if-eqz v4, :cond_3

    .line 486
    iget-object v4, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->arrowView:Landroid/widget/ImageView;

    const/16 v19, 0x6

    const/16 v20, 0x0

    const/16 v13, 0x10

    const/16 v14, 0x10

    const/4 v15, 0x0

    const/16 v16, 0x10

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v13 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    iget-object v4, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-static/range {v13 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    iget-object v4, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    invoke-static {v11, v11, v7, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v12, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 490
    :cond_3
    iget-object v4, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    invoke-static {v11, v11, v7, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v12, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    iget-object v4, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/4 v13, 0x0

    const/16 v14, 0x10

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v11 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    iget-object v4, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->arrowView:Landroid/widget/ImageView;

    const/16 v11, 0x10

    const/16 v12, 0x10

    const/4 v15, 0x2

    invoke-static/range {v11 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    :goto_3
    iget-object v4, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_4

    move v7, v9

    goto :goto_4

    :cond_4
    move v7, v8

    :goto_4
    or-int/lit8 v13, v7, 0x10

    const/high16 v16, 0x41000000    # 8.0f

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/high16 v12, -0x40000000    # -2.0f

    const/high16 v14, 0x42800000    # 64.0f

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    new-instance v4, Lorg/telegram/ui/Components/Switch;

    invoke-direct {v4, v2}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->switchView:Lorg/telegram/ui/Components/Switch;

    .line 497
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 498
    iget-object v4, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->switchView:Lorg/telegram/ui/Components/Switch;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v4, v7, v11, v12, v12}, Lorg/telegram/ui/Components/Switch;->setColors(IIII)V

    .line 499
    iget-object v4, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->switchView:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v4, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 500
    iget-object v4, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->switchView:Lorg/telegram/ui/Components/Switch;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_5

    move v7, v8

    goto :goto_5

    :cond_5
    move v7, v9

    :goto_5
    or-int/lit8 v13, v7, 0x10

    const/high16 v16, 0x41980000    # 19.0f

    const/16 v17, 0x0

    const/16 v11, 0x25

    const/high16 v12, 0x42480000    # 50.0f

    const/high16 v14, 0x41980000    # 19.0f

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    new-instance v4, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v7, 0x15

    invoke-direct {v4, v2, v7}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;I)V

    iput-object v4, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    .line 503
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxDisabled:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v4, v2, v7, v11}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 504
    iget-object v2, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 505
    iget-object v2, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 506
    iget-object v2, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 507
    iget-object v2, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 508
    iget-object v2, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v2, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 509
    iget-object v2, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_6

    move v8, v9

    :cond_6
    or-int/lit8 v13, v8, 0x10

    const/high16 v5, 0x42800000    # 64.0f

    const/4 v6, 0x0

    if-eqz v4, :cond_7

    move v14, v6

    goto :goto_6

    :cond_7
    move v14, v5

    :goto_6
    if-eqz v4, :cond_8

    move/from16 v16, v5

    goto :goto_7

    :cond_8
    move/from16 v16, v6

    :goto_7
    const/16 v17, 0x0

    const/16 v11, 0x15

    const/high16 v12, 0x41a80000    # 21.0f

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 512
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method private preprocessFlagsCount(I)I
    .locals 4

    .line 607
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    .line 608
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-eqz v0, :cond_2

    and-int/lit16 v0, p1, 0x1000

    if-lez v0, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    and-int/lit16 v0, p1, 0x2000

    if-lez v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    and-int/lit16 v0, p1, 0x4000

    if-lez v0, :cond_5

    :goto_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    and-int/lit8 v0, p1, 0x10

    if-lez v0, :cond_3

    add-int/lit8 v1, v1, -0x1

    :cond_3
    and-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_4

    add-int/lit8 v1, v1, -0x1

    :cond_4
    and-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_5

    goto :goto_0

    .line 624
    :cond_5
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_6

    and-int/lit16 v0, p1, 0x100

    if-lez v0, :cond_6

    add-int/lit8 v1, v1, -0x1

    .line 627
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v0, v3, :cond_7

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-ge v0, v2, :cond_8

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v0, :cond_8

    :cond_7
    const/high16 v0, 0x40000

    and-int/2addr v0, p1

    if-lez v0, :cond_8

    add-int/lit8 v1, v1, -0x1

    .line 630
    :cond_8
    invoke-static {}, Lorg/telegram/ui/Components/ThanosEffect;->supports()Z

    move-result v0

    if-nez v0, :cond_9

    const/high16 v0, 0x10000

    and-int/2addr p1, v0

    if-lez p1, :cond_9

    add-int/lit8 v1, v1, -0x1

    :cond_9
    return v1
.end method

.method private updateCount(Lorg/telegram/ui/LiteModeSettingsActivity$Item;Z)V
    .locals 5

    const/4 v0, 0x1

    .line 601
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->getValue(Z)I

    move-result v1

    iget v2, p1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    and-int/2addr v1, v2

    invoke-direct {p0, v1}, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->preprocessFlagsCount(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->enabled:I

    .line 602
    iget p1, p1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->preprocessFlagsCount(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->all:I

    .line 603
    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->enabled:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->all:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object v2, v3, v0

    const-string v1, "%d/%d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 638
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 639
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v2, 0x42800000    # 64.0f

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x42960000    # 75.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x41a00000    # 20.0f

    if-eqz v1, :cond_2

    .line 640
    iget-boolean v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->needLine:Z

    if-eqz v1, :cond_0

    .line 641
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v10, v1

    .line 642
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v8, v10, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float v9, v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    div-float v11, v1, v5

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 644
    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->needDivider:Z

    if-eqz v1, :cond_4

    .line 645
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    const/high16 v2, -0x3e000000    # -32.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    int-to-float v14, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v15, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    sget-object v18, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/16 v16, 0x0

    move-object/from16 v13, p1

    move/from16 v17, v1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    .line 648
    :cond_2
    iget-boolean v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->needLine:Z

    if-eqz v1, :cond_3

    .line 649
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    .line 650
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v14, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v15, v3, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float v17, v3, v5

    sget-object v18, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move/from16 v16, v1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 652
    :cond_3
    iget-boolean v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->needDivider:Z

    if-eqz v1, :cond_4

    .line 653
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    add-float v14, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v15, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sget-object v18, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move/from16 v16, v1

    move/from16 v17, v2

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    .line 660
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 661
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.widget.CheckBox"

    goto :goto_0

    :cond_0
    const-string v0, "android.widget.Switch"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 662
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 663
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 664
    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 665
    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    goto :goto_1

    .line 667
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->switchView:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 669
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    iget-object v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 671
    iget-boolean v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->containing:Z

    if-eqz v2, :cond_2

    const/16 v2, 0xa

    .line 672
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 673
    sget v2, Lorg/telegram/messenger/R$string;->Of:I

    iget v3, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->enabled:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->all:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    aput-object v4, v5, v0

    const-string v0, "Of"

    invoke-static {v0, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 539
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42480000    # 50.0f

    .line 540
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 538
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public set(Lorg/telegram/ui/LiteModeSettingsActivity$Item;Z)V
    .locals 6

    .line 545
    iget v0, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 546
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->imageView:Landroid/widget/ImageView;

    iget v5, p1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->iconResId:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 549
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    iget-object v5, p1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    invoke-virtual {p1}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->getFlagsCount()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->containing:Z

    if-eqz v0, :cond_1

    .line 551
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->updateCount(Lorg/telegram/ui/LiteModeSettingsActivity$Item;Z)V

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->arrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 555
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->arrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 559
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->switchView:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->switchView:Lorg/telegram/ui/Components/Switch;

    iget v2, p1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    invoke-static {v2}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    .line 561
    invoke-virtual {p1}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->getFlagsCount()I

    move-result v0

    if-le v0, v1, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->needLine:Z

    goto :goto_4

    .line 563
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    iget v5, p1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    invoke-static {v5}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v5

    invoke-virtual {v0, v5, v3}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 565
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->switchView:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->arrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    iget-object v2, p1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    const/high16 v2, 0x42240000    # 41.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_4

    const v5, -0x3ff33333    # -2.2f

    goto :goto_3

    :cond_4
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_3
    mul-float/2addr v2, v5

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 571
    iput-boolean v3, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->containing:Z

    .line 572
    iput-boolean v3, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->needLine:Z

    .line 575
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne p1, v4, :cond_6

    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_5

    const/16 p1, 0x40

    goto :goto_5

    :cond_5
    const/16 p1, 0x4b

    :goto_5
    add-int/lit8 p1, p1, 0x4

    int-to-float p1, p1

    goto :goto_6

    :cond_6
    const/high16 p1, 0x41000000    # 8.0f

    :goto_6
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 577
    iput-boolean p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->needDivider:Z

    if-nez p2, :cond_7

    iget-boolean p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->needLine:Z

    if-nez p1, :cond_7

    goto :goto_7

    :cond_7
    move v1, v3

    :goto_7
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 578
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->isPowerSaverApplied()Z

    move-result p1

    invoke-virtual {p0, p1, v3}, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->setDisabled(ZZ)V

    return-void
.end method

.method public setDisabled(ZZ)V
    .locals 5

    .line 517
    iget-boolean v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->disabled:Z

    if-eq v0, p1, :cond_a

    .line 518
    iput-boolean p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->disabled:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz p2, :cond_5

    .line 520
    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v2, 0xdc

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 521
    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 522
    sget-boolean p2, Lcom/exteragram/messenger/ExteraConfig;->newSwitchStyle:Z

    if-nez p2, :cond_3

    .line 523
    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->switchView:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 525
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_6

    .line 527
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    move v2, v1

    goto :goto_3

    :cond_6
    move v2, v0

    :goto_3
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 528
    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_7

    move v2, v1

    goto :goto_4

    :cond_7
    move v2, v0

    :goto_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 529
    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->switchView:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_8

    move v2, v1

    goto :goto_5

    :cond_8
    move v2, v0

    :goto_5
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/Switch;->setAlpha(F)V

    .line 530
    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p1, :cond_9

    move v0, v1

    :cond_9
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_6
    xor-int/lit8 p1, p1, 0x1

    .line 532
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_a
    return-void
.end method

.method public update(Lorg/telegram/ui/LiteModeSettingsActivity$Item;)V
    .locals 5

    .line 582
    iget v0, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 583
    invoke-virtual {p1}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->getFlagsCount()I

    move-result v0

    if-le v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->containing:Z

    if-eqz v0, :cond_2

    .line 584
    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->updateCount(Lorg/telegram/ui/LiteModeSettingsActivity$Item;Z)V

    .line 585
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    iget v1, p1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    invoke-static {v0, v1}, Lorg/telegram/ui/LiteModeSettingsActivity;->-$$Nest$mgetExpandedIndex(Lorg/telegram/ui/LiteModeSettingsActivity;I)I

    move-result v0

    .line 586
    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->arrowView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 587
    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->arrowView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-ltz v0, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/LiteModeSettingsActivity;->-$$Nest$fgetexpanded(Lorg/telegram/ui/LiteModeSettingsActivity;)[Z

    move-result-object v3

    aget-boolean v0, v3, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0xf0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 589
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->switchView:Lorg/telegram/ui/Components/Switch;

    iget p1, p1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p1

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    goto :goto_2

    .line 591
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    iget p1, p1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p1

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 594
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->isPowerSaverApplied()Z

    move-result p1

    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->setDisabled(ZZ)V

    return-void
.end method
