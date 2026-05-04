.class final Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PhoneNumberConfirmView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;
    }
.end annotation


# instance fields
.field private blurredView:Landroid/view/View;

.field private callback:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;

.field private confirmMessageView:Landroid/widget/TextView;

.field private confirmTextView:Landroid/widget/TextView;

.field private dimmView:Landroid/view/View;

.field private dismissed:Z

.field private editTextView:Landroid/widget/TextView;

.field private fabButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

.field private fabContainer:Landroid/view/View;

.field private fabTransform:Lorg/telegram/ui/Components/TransformableLoginButtonView;

.field private fragmentView:Landroid/view/ViewGroup;

.field private numberView:Landroid/widget/TextView;

.field private final pointF:Landroid/graphics/PointF;

.field private popupLayout:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$5rb8l_z8G9uNXknYXFpKq8PotKg(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->lambda$show$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QKkri-IawBOCvOcgVwuWkCv56MI(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->lambda$dismiss$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RbKgo67VelYaYXWa4VXMlCn8VBM(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X6vtwy8PSiKm8o2YPWq5pR3ZTLc(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->lambda$new$1(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lO6d_kF4SChZHuJlZUtABOzAqO8(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->lambda$new$2(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qcE672WeKzr4H1E8WHcpLidvP-E(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->lambda$new$3(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetblurredView(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->blurredView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfabButton(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Lorg/telegram/ui/Components/FragmentFloatingButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fabButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfabContainer(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fabContainer:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfragmentView(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Landroid/view/ViewGroup;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fragmentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$manimateProgress(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->animateProgress(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdismiss(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->dismiss()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshow(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->show()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateColors(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->updateColors()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFabPosition(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->updateFabPosition()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    .line 8562
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 8633
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->pointF:Landroid/graphics/PointF;

    move-object/from16 v3, p2

    .line 8564
    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fragmentView:Landroid/view/ViewGroup;

    move-object/from16 v3, p3

    .line 8565
    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fabContainer:Landroid/view/View;

    .line 8566
    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->callback:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;

    .line 8568
    new-instance v3, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->blurredView:Landroid/view/View;

    .line 8569
    new-instance v4, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8570
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->blurredView:Landroid/view/View;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8572
    new-instance v3, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->dimmView:Landroid/view/View;

    const/high16 v6, 0x40000000    # 2.0f

    .line 8573
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8574
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->dimmView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    .line 8575
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->dimmView:Landroid/view/View;

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8577
    new-instance v3, Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/TransformableLoginButtonView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fabTransform:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    const/4 v4, 0x1

    .line 8578
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setTransformType(I)V

    .line 8579
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fabTransform:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setDrawBackground(Z)V

    .line 8582
    new-instance v3, Lorg/telegram/ui/Components/FragmentFloatingButton;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v5}, Lorg/telegram/ui/Components/FragmentFloatingButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fabButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    .line 8583
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fabTransform:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    const/16 v6, 0x11

    const/16 v7, 0x38

    invoke-static {v7, v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8584
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fabButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fabTransform:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/FragmentFloatingButton;->addAdditionalView(Landroid/view/View;)V

    .line 8585
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fabButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    new-instance v5, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0, v2}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8586
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fabButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    sget v5, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8587
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fabButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    const/16 v5, 0x33

    invoke-static {v7, v7, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8589
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->popupLayout:Landroid/widget/FrameLayout;

    const/high16 v10, 0x41c00000    # 24.0f

    const/4 v11, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x430c0000    # 140.0f

    const/16 v7, 0x31

    const/high16 v8, 0x41c00000    # 24.0f

    const/4 v9, 0x0

    .line 8591
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8593
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->confirmMessageView:Landroid/widget/TextView;

    .line 8594
    sget v5, Lorg/telegram/messenger/R$string;->ConfirmCorrectNumber:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8595
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->confirmMessageView:Landroid/widget/TextView;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8596
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->confirmMessageView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 8597
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->popupLayout:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->confirmMessageView:Landroid/widget/TextView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v7, 0x3

    const/4 v8, 0x5

    if-eqz v6, :cond_0

    move v11, v8

    goto :goto_0

    :cond_0
    move v11, v7

    :goto_0
    const/high16 v14, 0x41c00000    # 24.0f

    const/4 v15, 0x0

    const/4 v9, -0x1

    const/high16 v10, -0x40000000    # -2.0f

    const/high16 v12, 0x41c00000    # 24.0f

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8599
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->numberView:Landroid/widget/TextView;

    move-object/from16 v5, p4

    .line 8600
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8601
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->numberView:Landroid/widget/TextView;

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8602
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->numberView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8603
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->numberView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 8604
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->popupLayout:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->numberView:Landroid/widget/TextView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_1

    move v11, v8

    goto :goto_1

    :cond_1
    move v11, v7

    :goto_1
    const/high16 v14, 0x41c00000    # 24.0f

    const/4 v15, 0x0

    const/4 v9, -0x1

    const/high16 v10, -0x40000000    # -2.0f

    const/high16 v12, 0x41c00000    # 24.0f

    const/high16 v13, 0x42400000    # 48.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v3, 0x41800000    # 16.0f

    .line 8606
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 8609
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->editTextView:Landroid/widget/TextView;

    .line 8610
    sget v9, Lorg/telegram/messenger/R$string;->Edit:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8611
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->editTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->setSingleLine()V

    .line 8612
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->editTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8613
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->editTextView:Landroid/widget/TextView;

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_changephoneinfo_image2:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-static {v10, v12}, Lorg/telegram/ui/ActionBar/Theme;->getRoundRectSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8614
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->editTextView:Landroid/widget/TextView;

    new-instance v10, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$$ExternalSyntheticLambda4;

    invoke-direct {v10, v0, v2}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8615
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->editTextView:Landroid/widget/TextView;

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8616
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->editTextView:Landroid/widget/TextView;

    div-int/lit8 v12, v5, 0x2

    invoke-virtual {v6, v5, v12, v5, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 8617
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->popupLayout:Landroid/widget/FrameLayout;

    iget-object v13, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->editTextView:Landroid/widget/TextView;

    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_2

    move v14, v8

    goto :goto_2

    :cond_2
    move v14, v7

    :goto_2
    or-int/lit8 v17, v14, 0x50

    const/16 v14, 0x8

    int-to-float v14, v14

    const/4 v15, -0x2

    const/high16 v16, -0x40000000    # -2.0f

    move/from16 v19, v14

    move/from16 v20, v14

    move/from16 v21, v14

    move/from16 v18, v14

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8619
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->confirmTextView:Landroid/widget/TextView;

    .line 8620
    sget v1, Lorg/telegram/messenger/R$string;->CheckPhoneNumberYes:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8621
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->confirmTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 8622
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->confirmTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8623
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->confirmTextView:Landroid/widget/TextView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getRoundRectSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8624
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->confirmTextView:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0, v2}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8625
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->confirmTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8626
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->confirmTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v12, v5, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 8627
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->popupLayout:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->confirmTextView:Landroid/widget/TextView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v7, v8

    :goto_3
    or-int/lit8 v20, v7, 0x50

    move/from16 v21, v18

    const/16 v18, -0x2

    const/high16 v19, -0x40000000    # -2.0f

    move/from16 v22, v21

    move/from16 v23, v21

    move/from16 v24, v21

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8629
    invoke-direct {v0}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->updateFabPosition()V

    .line 8630
    invoke-direct {v0}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->updateColors()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;Lorg/telegram/ui/LoginActivity-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;)V

    return-void
.end method

.method private animateProgress(Ljava/lang/Runnable;)V
    .locals 2

    .line 8708
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fabButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setProgressVisible(ZZ)V

    const-wide/16 v0, 0x190

    .line 8709
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private dismiss()V
    .locals 3

    .line 8713
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 8714
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->dismissed:Z

    .line 8716
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->callback:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;

    invoke-interface {v0, p0}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;->onDismiss(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    const/4 v0, 0x2

    .line 8718
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 8719
    new-instance v1, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$2;-><init>(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8728
    new-instance v1, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8739
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8740
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private synthetic lambda$dismiss$5(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 8729
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 8730
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->blurredView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 8731
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->dimmView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 8732
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fabTransform:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setProgress(F)V

    .line 8733
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->popupLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    add-float/2addr p1, v0

    .line 8736
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->popupLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 8737
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->popupLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 8569
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;Landroid/view/View;)V
    .locals 0

    .line 8585
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fabTransform:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-interface {p1, p0, p2}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;->onFabPressed(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Lorg/telegram/ui/Components/TransformableLoginButtonView;)V

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;Landroid/view/View;)V
    .locals 0

    .line 8614
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->editTextView:Landroid/widget/TextView;

    invoke-interface {p1, p0, p2}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;->onEditPressed(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Landroid/widget/TextView;)V

    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;Landroid/view/View;)V
    .locals 0

    .line 8624
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->confirmTextView:Landroid/widget/TextView;

    invoke-interface {p1, p0, p2}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;->onConfirmPressed(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Landroid/widget/TextView;)V

    return-void
.end method

.method private synthetic lambda$show$4(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 8693
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 8694
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fabTransform:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setProgress(F)V

    .line 8695
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->blurredView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 8696
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->dimmView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 8698
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->popupLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    add-float/2addr p1, v0

    .line 8700
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->popupLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 8701
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->popupLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private show()V
    .locals 3

    const/4 v0, 0x2

    .line 8662
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 8663
    new-instance v1, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$1;-><init>(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8692
    new-instance v1, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8703
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8704
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateColors()V
    .locals 3

    .line 8642
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fabTransform:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setColor(I)V

    .line 8643
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fabTransform:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setBackgroundColor(I)V

    .line 8644
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->popupLayout:Landroid/widget/FrameLayout;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8645
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->confirmMessageView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8646
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->numberView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8647
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->editTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_changephoneinfo_image2:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8648
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->confirmTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8649
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fabButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentFloatingButton;->updateColors()V

    return-void
.end method

.method private updateFabPosition()V
    .locals 3

    .line 8635
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fabContainer:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fragmentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->pointF:Landroid/graphics/PointF;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->computeCoordinatesInParent(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/PointF;)Z

    .line 8636
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fabButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->pointF:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 8637
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fabButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->pointF:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setTranslationY(F)V

    .line 8638
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    .line 8654
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 8656
    iget-object p2, p1, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->popupLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 8657
    iget-object p3, p1, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->fabButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/FragmentFloatingButton;->getTranslationY()F

    move-result p3

    const/high16 p4, 0x42000000    # 32.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p3, p4

    float-to-int p3, p3

    .line 8658
    iget-object p4, p1, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->popupLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result p5

    sub-int p2, p3, p2

    iget-object v0, p1, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->popupLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p4, p5, p2, v0, p3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method
