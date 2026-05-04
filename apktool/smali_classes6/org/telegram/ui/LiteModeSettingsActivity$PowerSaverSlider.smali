.class Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LiteModeSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerSaverSlider"
.end annotation


# instance fields
.field batteryIcon:Lorg/telegram/ui/Components/BatteryDrawable;

.field batteryText:Landroid/text/SpannableStringBuilder;

.field headerLayout:Landroid/widget/LinearLayout;

.field headerOnView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private headerOnVisible:Z

.field headerTextView:Landroid/widget/TextView;

.field leftTextView:Landroid/widget/TextView;

.field middleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private offActiveAnimator:Landroid/animation/ValueAnimator;

.field private offActiveT:F

.field private onActiveAnimator:Landroid/animation/ValueAnimator;

.field private onActiveT:F

.field rightTextView:Landroid/widget/TextView;

.field private seekBarAccessibilityDelegate:Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

.field seekBarView:Lorg/telegram/ui/Components/SeekBarView;

.field final synthetic this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

.field valuesView:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$2PVjpA80_J5XbwzaQtcE02H2S38(Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->lambda$updateOffActive$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h0kQ-owmGOPhMfgHtZM27Mot5t0(Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->lambda$updateOnActive$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoffActiveT(Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->offActiveT:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputonActiveT(Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->onActiveT:F

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/LiteModeSettingsActivity;Landroid/content/Context;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v2, p2

    .line 695
    iput-object v6, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    .line 696
    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 698
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->headerLayout:Landroid/widget/LinearLayout;

    .line 699
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v7, 0x3

    const/4 v8, 0x5

    if-eqz v3, :cond_0

    move v3, v8

    goto :goto_0

    :cond_0
    move v3, v7

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 700
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->headerLayout:Landroid/widget/LinearLayout;

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 702
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->headerTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v10, 0x1

    .line 703
    invoke-virtual {v0, v10, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 704
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->headerTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 705
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->headerTextView:Landroid/widget/TextView;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 706
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->headerTextView:Landroid/widget/TextView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_1

    move v3, v8

    goto :goto_1

    :cond_1
    move v3, v7

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 707
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->headerTextView:Landroid/widget/TextView;

    const-string v3, "LiteBatteryTitle"

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->headerLayout:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->headerTextView:Landroid/widget/TextView;

    const/16 v4, 0x10

    const/4 v12, -0x2

    invoke-static {v12, v12, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 710
    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$1;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;Landroid/content/Context;ZZZLorg/telegram/ui/LiteModeSettingsActivity;)V

    iput-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->headerOnView:Lorg/telegram/ui/Components/AnimatedTextView;

    .line 721
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 722
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->headerOnView:Lorg/telegram/ui/Components/AnimatedTextView;

    const v3, 0x40aa8f5c    # 5.33f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v4, v13, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 723
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->headerOnView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 724
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->headerOnView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 725
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->headerLayout:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->headerOnView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v13, -0x2

    const/16 v14, 0x11

    const/16 v15, 0x10

    const/16 v16, 0x6

    const/16 v17, 0x1

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->headerLayout:Landroid/widget/LinearLayout;

    const/high16 v18, 0x41a80000    # 21.0f

    const/16 v19, 0x0

    const/4 v13, -0x1

    const/high16 v14, -0x40000000    # -2.0f

    const/16 v15, 0x37

    const/high16 v16, 0x41a80000    # 21.0f

    const/high16 v17, 0x41880000    # 17.0f

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 729
    new-instance v0, Lorg/telegram/ui/Components/SeekBarView;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v10, v3}, Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    .line 730
    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/SeekBarView;->setReportChanges(Z)V

    .line 731
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    new-instance v3, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$2;

    invoke-direct {v3, v1, v6}, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$2;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;Lorg/telegram/ui/LiteModeSettingsActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    .line 754
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getPowerSaverLevel()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    .line 755
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 756
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    const/high16 v18, 0x40c00000    # 6.0f

    const/high16 v14, 0x42300000    # 44.0f

    const/16 v15, 0x30

    const/high16 v16, 0x40c00000    # 6.0f

    const/high16 v17, 0x42880000    # 68.0f

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 758
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->valuesView:Landroid/widget/FrameLayout;

    .line 759
    invoke-virtual {v0, v9}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 761
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->leftTextView:Landroid/widget/TextView;

    const/high16 v9, 0x41500000    # 13.0f

    .line 762
    invoke-virtual {v0, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 763
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->leftTextView:Landroid/widget/TextView;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 764
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->leftTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 765
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->leftTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->LiteBatteryDisabled:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->valuesView:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->leftTextView:Landroid/widget/TextView;

    const/16 v4, 0x13

    invoke-static {v12, v12, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    new-instance v13, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$3;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$3;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;Landroid/content/Context;ZZZLorg/telegram/ui/LiteModeSettingsActivity;)V

    iput-object v13, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->middleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-wide/16 v17, 0xf0

    .line 780
    sget-object v19, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v14, 0x3ee66666    # 0.45f

    const-wide/16 v15, 0x0

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 781
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->middleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 782
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->middleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 783
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->middleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 784
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->valuesView:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->middleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v4, 0x11

    invoke-static {v12, v12, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v3, "b"

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->batteryText:Landroid/text/SpannableStringBuilder;

    .line 787
    new-instance v0, Lorg/telegram/ui/Components/BatteryDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/BatteryDrawable;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->batteryIcon:Lorg/telegram/ui/Components/BatteryDrawable;

    .line 788
    iget-object v3, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->middleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/BatteryDrawable;->colorFromPaint(Landroid/graphics/Paint;)V

    .line 789
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->batteryIcon:Lorg/telegram/ui/Components/BatteryDrawable;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/BatteryDrawable;->setTranslationY(F)V

    .line 790
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->batteryIcon:Lorg/telegram/ui/Components/BatteryDrawable;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, -0x3e600000    # -20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41b80000    # 23.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 791
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->batteryText:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/ImageSpan;

    iget-object v4, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->batteryIcon:Lorg/telegram/ui/Components/BatteryDrawable;

    invoke-direct {v3, v4, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iget-object v4, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->batteryText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v7, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 793
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->rightTextView:Landroid/widget/TextView;

    .line 794
    invoke-virtual {v0, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 795
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->rightTextView:Landroid/widget/TextView;

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 796
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->rightTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 797
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->rightTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->LiteBatteryEnabled:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->valuesView:Landroid/widget/FrameLayout;

    iget-object v2, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->rightTextView:Landroid/widget/TextView;

    const/16 v3, 0x15

    invoke-static {v12, v12, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 800
    iget-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->valuesView:Landroid/widget/FrameLayout;

    const/high16 v12, 0x41a80000    # 21.0f

    const/4 v13, 0x0

    const/4 v7, -0x1

    const/high16 v8, -0x40000000    # -2.0f

    const/16 v9, 0x37

    const/high16 v10, 0x41a80000    # 21.0f

    const/high16 v11, 0x42500000    # 52.0f

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 802
    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$4;

    invoke-direct {v0, v1, v6}, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$4;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;Lorg/telegram/ui/LiteModeSettingsActivity;)V

    iput-object v0, v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->seekBarAccessibilityDelegate:Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

    .line 850
    invoke-virtual {v1}, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->update()V

    return-void
.end method

.method private synthetic lambda$updateOffActive$1(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 948
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->leftTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    .line 949
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    .line 950
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 951
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->offActiveT:F

    .line 948
    invoke-static {v1, v2, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private synthetic lambda$updateOnActive$0(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 914
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->rightTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    .line 915
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    .line 916
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 917
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->onActiveT:F

    .line 914
    invoke-static {v1, v2, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateHeaderOnVisibility(Z)V
    .locals 2

    .line 894
    iget-boolean v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->headerOnVisible:Z

    if-eq p1, v0, :cond_1

    .line 895
    iput-boolean p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->headerOnVisible:Z

    .line 896
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->headerOnView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 897
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->headerOnView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xdc

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method private updateOffActive(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 939
    :goto_0
    iget v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->offActiveT:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 940
    iput p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->offActiveT:F

    .line 942
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->offActiveAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 943
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 944
    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->offActiveAnimator:Landroid/animation/ValueAnimator;

    .line 947
    :cond_1
    iget v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->offActiveT:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->offActiveAnimator:Landroid/animation/ValueAnimator;

    .line 948
    new-instance v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 953
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->offActiveAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$6;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 963
    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->offActiveAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 964
    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->offActiveAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 965
    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->offActiveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method private updateOnActive(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 905
    :goto_0
    iget v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->onActiveT:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 906
    iput p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->onActiveT:F

    .line 908
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->onActiveAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 909
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 910
    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->onActiveAnimator:Landroid/animation/ValueAnimator;

    .line 913
    :cond_1
    iget v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->onActiveT:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->onActiveAnimator:Landroid/animation/ValueAnimator;

    .line 914
    new-instance v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 919
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->onActiveAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$5;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 929
    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->onActiveAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 930
    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->onActiveAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 931
    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->onActiveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 855
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 857
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->seekBarAccessibilityDelegate:Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 972
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42e00000    # 112.0f

    .line 973
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 971
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 862
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 864
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->seekBarAccessibilityDelegate:Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 869
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->seekBarAccessibilityDelegate:Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public update()V
    .locals 9

    .line 873
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getPowerSaverLevel()I

    move-result v0

    .line 875
    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->middleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->cancelAnimation()V

    const/4 v1, 0x0

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-gtz v0, :cond_0

    .line 877
    iget-object v4, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->middleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v5, Lorg/telegram/messenger/R$string;->LiteBatteryAlwaysDisabled:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    xor-int/2addr v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_0
    if-lt v0, v2, :cond_1

    .line 879
    iget-object v4, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->middleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v5, Lorg/telegram/messenger/R$string;->LiteBatteryAlwaysEnabled:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    xor-int/2addr v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 881
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->batteryIcon:Lorg/telegram/ui/Components/BatteryDrawable;

    int-to-float v5, v0

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v6, v5, v6

    invoke-virtual {v4, v6, v3}, Lorg/telegram/ui/Components/BatteryDrawable;->setFillValue(FZ)V

    .line 882
    iget-object v4, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->middleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v6, Lorg/telegram/messenger/R$string;->LiteBatteryWhenBelow:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v5, v7, v1

    const-string v5, "%d%% "

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->batteryText:Landroid/text/SpannableStringBuilder;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/CharSequence;

    aput-object v5, v8, v1

    aput-object v7, v8, v3

    invoke-static {v8}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    const-string v7, "%s"

    invoke-static {v7, v6, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    xor-int/2addr v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 885
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->headerOnView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/LiteMode;->isPowerSaverApplied()Z

    move-result v5

    if-eqz v5, :cond_2

    sget v5, Lorg/telegram/messenger/R$string;->LiteBatteryEnabled:I

    :goto_1
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    sget v5, Lorg/telegram/messenger/R$string;->LiteBatteryDisabled:I

    goto :goto_1

    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v0, :cond_3

    if-ge v0, v2, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v1

    .line 886
    :goto_3
    invoke-direct {p0, v4}, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->updateHeaderOnVisibility(Z)V

    if-lt v0, v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    move v2, v1

    .line 888
    :goto_4
    invoke-direct {p0, v2}, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->updateOnActive(Z)V

    if-gtz v0, :cond_5

    move v1, v3

    .line 889
    :cond_5
    invoke-direct {p0, v1}, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->updateOffActive(Z)V

    return-void
.end method
