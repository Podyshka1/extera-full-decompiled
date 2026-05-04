.class Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/ai/ui/ResponseAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderView"
.end annotation


# instance fields
.field private final backButton:Landroid/widget/ImageView;

.field public final insertButton:Landroid/widget/ImageView;

.field private final modelSelector:Lorg/telegram/ui/Components/AnimatedTextView;

.field public final optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private final shadow:Landroid/view/View;

.field private final subtitleView:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

.field private final titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;


# direct methods
.method public static synthetic $r8$lambda$32rmXTh4iwijuNxitvvkb6wVcxQ(Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;[Ljava/lang/Runnable;Lcom/exteragram/messenger/ai/data/Service;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->lambda$openModelSelect$7([Ljava/lang/Runnable;Lcom/exteragram/messenger/ai/data/Service;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HG8HKVvXPCSjdDDr2TarKxBTPYA(Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MapJGxGXz_aWda9jJyNUStfmMDw(Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OFlH5jEQCD6W6Ues3A7kMrmenQM(Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WSoMCxUGG6afDyd3sll_MwHbGz4(Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->lambda$new$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aS__IWL7aGc0aAFU04yyhjpiy2o(Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->lambda$new$4(Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hu-_hR5eP7w3JyJzQ7HAXfYHtqo(Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$krakrK8FG7gB8KhFs-y-HFRXaWo(Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->lambda$new$3(Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;)V

    return-void
.end method

.method public constructor <init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Landroid/content/Context;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 589
    iput-object v1, v0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    .line 590
    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 592
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 593
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v1, v4}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->access$500(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x42300000    # 44.0f

    const/16 v7, 0x37

    const/4 v8, 0x0

    const/high16 v9, 0x41400000    # 12.0f

    .line 594
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->backButton:Landroid/widget/ImageView;

    .line 597
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 598
    sget v5, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 599
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v1, v9}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->access$600(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 600
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v1, v10}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->access$700(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 601
    invoke-virtual {v2, v11}, Landroid/view/View;->setAlpha(F)V

    .line 602
    new-instance v5, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v12, 0x36

    const/high16 v13, 0x42580000    # 54.0f

    const/16 v14, 0x30

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    .line 603
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->insertButton:Landroid/widget/ImageView;

    const v5, 0x3e19999a    # 0.15f

    const/high16 v6, 0x3fc00000    # 1.5f

    .line 606
    invoke-static {v2, v5, v6}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 607
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 608
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_send:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 609
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static {v1, v6}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->access$800(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I

    move-result v5

    invoke-direct {v4, v5, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 610
    invoke-static {v1, v10}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->access$900(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v12, 0x8

    .line 611
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 612
    new-instance v4, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v18, 0x42800000    # 64.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v13, 0x30

    const/high16 v14, 0x42580000    # 54.0f

    const/16 v15, 0x35

    .line 616
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v7, 0x0

    invoke-static {v1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->access$1000(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v4, 0x0

    .line 619
    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 620
    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowSubmenuByMove(Z)V

    .line 621
    sget v5, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    const/4 v5, 0x2

    .line 622
    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 623
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 624
    invoke-static {v1, v10}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->access$1100(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I

    move-result v7

    const/high16 v8, 0x41900000    # 18.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/4 v10, 0x1

    invoke-static {v7, v10, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v17, 0x41800000    # 16.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v12, 0x30

    const/high16 v13, 0x42580000    # 54.0f

    const/16 v14, 0x35

    const/high16 v15, 0x3f800000    # 1.0f

    .line 625
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 626
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    sget v8, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v10, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 627
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_retry:I

    sget v8, Lorg/telegram/messenger/R$string;->Retry:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v5, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 628
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    sget v7, Lorg/telegram/messenger/R$string;->Edit:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v2, v8, v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 629
    invoke-static {v1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetuseHistory(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 630
    sget v5, Lorg/telegram/messenger/R$drawable;->menu_reply:I

    sget v7, Lorg/telegram/messenger/R$string;->Reply:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v2, v8, v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 632
    :cond_0
    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowedFromBottom(Z)V

    .line 633
    new-instance v5, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    new-instance v5, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 667
    sget v5, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 669
    new-instance v2, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v2, v3, v10, v10, v4}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v2, v0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    .line 670
    invoke-static {v1, v9}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->access$1200(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    const/high16 v4, 0x41a00000    # 20.0f

    .line 671
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 672
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 673
    sget v4, Lorg/telegram/messenger/R$string;->AIChat:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    invoke-virtual {v2, v11}, Landroid/view/View;->setPivotX(F)V

    .line 675
    invoke-virtual {v2, v11}, Landroid/view/View;->setPivotY(F)V

    const/high16 v17, 0x41b00000    # 22.0f

    const/16 v18, 0x0

    const/4 v12, -0x1

    const/high16 v13, 0x41f00000    # 30.0f

    const/16 v14, 0x37

    const/high16 v15, 0x41b00000    # 22.0f

    const/high16 v16, 0x41a00000    # 20.0f

    .line 676
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 678
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    .line 679
    invoke-virtual {v2, v11}, Landroid/view/View;->setPivotX(F)V

    .line 680
    invoke-virtual {v2, v11}, Landroid/view/View;->setPivotY(F)V

    .line 682
    new-instance v12, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$1;

    invoke-direct {v12, v0, v3, v1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$1;-><init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;Landroid/content/Context;Lcom/exteragram/messenger/ai/ui/ResponseAlert;)V

    iput-object v12, v0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->modelSelector:Lorg/telegram/ui/Components/AnimatedTextView;

    const-wide/16 v16, 0x15e

    .line 721
    sget-object v18, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/high16 v13, 0x3e800000    # 0.25f

    const-wide/16 v14, 0x0

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 722
    invoke-static {v1, v6}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->access$1600(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I

    move-result v4

    invoke-virtual {v12, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    const/high16 v4, 0x41600000    # 14.0f

    .line 723
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v12, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 724
    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->getInstance()Lcom/exteragram/messenger/ai/AiController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/exteragram/messenger/ai/AiController;->getSelected()Lcom/exteragram/messenger/ai/data/Service;

    move-result-object v4

    invoke-virtual {v4}, Lcom/exteragram/messenger/ai/data/Service;->getShortModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x40800000    # 4.0f

    .line 725
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v12, v5, v7, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 726
    new-instance v4, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda4;-><init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;)V

    invoke-virtual {v12, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v18, 0x3

    const/16 v19, 0x0

    const/4 v13, -0x2

    const/4 v14, -0x2

    const/16 v15, 0x10

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 728
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v12, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v18, 0x41b00000    # 22.0f

    const/16 v19, 0x0

    const/4 v13, -0x1

    const/high16 v14, -0x40000000    # -2.0f

    const/16 v15, 0x37

    const/high16 v16, 0x41b00000    # 22.0f

    const/high16 v17, 0x422c0000    # 43.0f

    .line 730
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 732
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->shadow:Landroid/view/View;

    .line 733
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v1, v3}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->access$1700(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 734
    invoke-virtual {v2, v11}, Landroid/view/View;->setAlpha(F)V

    .line 735
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    div-float v5, v1, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/16 v6, 0x37

    const/4 v7, 0x0

    const/high16 v8, 0x42600000    # 56.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 602
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 3

    .line 613
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetonInsertPress(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lorg/telegram/messenger/Utilities$Callback2;

    move-result-object p1

    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetprompt(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {v1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetcurrentResponse(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$mformatResponse(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 614
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 633
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$new$3(Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;)V
    .locals 2

    .line 649
    invoke-static {}, Lcom/exteragram/messenger/ai/AiConfig;->removeLastFromHistory()V

    .line 650
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->prompt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->setPrompt(Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->imagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fputimagePath(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->useHistory()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fputuseHistory(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Z)V

    .line 653
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetadapter(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lcom/exteragram/messenger/ai/ui/ResponseAlert$PaddedAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetloadingTextView(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$PaddedAdapter;->updateMainView(Landroid/view/View;)V

    .line 654
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$mupdateMainButton(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Z)V

    .line 655
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$mgenerate(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)V

    return-void
.end method

.method private synthetic lambda$new$4(Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;)V
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->prompt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->setPrompt(Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fputimagePath(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;->useHistory()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fputuseHistory(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Z)V

    .line 661
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetadapter(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lcom/exteragram/messenger/ai/ui/ResponseAlert$PaddedAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetloadingTextView(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$PaddedAdapter;->updateMainView(Landroid/view/View;)V

    .line 662
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$mupdateMainButton(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Z)V

    .line 663
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$mgenerate(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)V

    return-void
.end method

.method private synthetic lambda$new$5(I)V
    .locals 11

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 657
    :cond_0
    new-instance p1, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet;

    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetfragment(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda6;-><init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;)V

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/messenger/Utilities$Callback;Z)V

    .line 664
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void

    .line 648
    :cond_1
    new-instance v4, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet;

    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetprompt(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetimagePath(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetfragment(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda5;

    invoke-direct {v9, p0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda5;-><init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;)V

    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetuseHistory(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Z

    move-result v10

    invoke-direct/range {v4 .. v10}, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/messenger/Utilities$Callback;Z)V

    .line 656
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void

    .line 642
    :cond_2
    invoke-static {}, Lcom/exteragram/messenger/ai/AiConfig;->removeLastFromHistory()V

    .line 643
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetadapter(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lcom/exteragram/messenger/ai/ui/ResponseAlert$PaddedAdapter;

    move-result-object p1

    iget-object v1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {v1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetloadingTextView(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$PaddedAdapter;->updateMainView(Landroid/view/View;)V

    .line 644
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1, v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$mupdateMainButton(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Z)V

    .line 645
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$mgenerate(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)V

    return-void

    .line 637
    :cond_3
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetcurrentResponse(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$mformatResponse(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 638
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->access$2500(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->access$2600(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->TextCopied:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 0

    .line 726
    invoke-virtual {p0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->openModelSelect()V

    return-void
.end method

.method private synthetic lambda$openModelSelect$7([Ljava/lang/Runnable;Lcom/exteragram/messenger/ai/data/Service;Landroid/view/View;)V
    .locals 0

    const/4 p3, 0x0

    .line 775
    aget-object p1, p1, p3

    if-eqz p1, :cond_0

    .line 776
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 779
    :cond_0
    invoke-virtual {p2}, Lcom/exteragram/messenger/ai/data/Service;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 783
    :cond_1
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->modelSelector:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2}, Lcom/exteragram/messenger/ai/data/Service;->getShortModel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetadapter(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lcom/exteragram/messenger/ai/ui/ResponseAlert$PaddedAdapter;

    move-result-object p1

    iget-object p3, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p3}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetloadingTextView(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$PaddedAdapter;->updateMainView(Landroid/view/View;)V

    .line 785
    invoke-static {p2}, Lcom/exteragram/messenger/ai/AiConfig;->setSelectedServices(Lcom/exteragram/messenger/ai/data/Service;)V

    .line 786
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$mupdateMainButton(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Z)V

    .line 787
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$mgenerate(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 852
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 853
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    iget-object v0, v0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    if-eqz v0, :cond_0

    .line 854
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 860
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 861
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    iget-object v0, v0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 845
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x429c0000    # 78.0f

    .line 846
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 844
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public openModelSelect()V
    .locals 13

    .line 739
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetclient(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lcom/exteragram/messenger/ai/network/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/exteragram/messenger/ai/network/Client;->isGenerating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 743
    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/ai/AiConfig;->getServices()Ljava/util/ArrayList;

    move-result-object v0

    .line 745
    new-instance v1, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$2;-><init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 758
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 759
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget-object v4, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v4, v5}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->access$1800(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 760
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    .line 762
    new-array v3, v2, [Ljava/lang/Runnable;

    const/4 v4, 0x0

    move v5, v4

    .line 764
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 765
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/exteragram/messenger/ai/data/Service;

    .line 767
    new-instance v7, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    if-nez v5, :cond_1

    move v10, v2

    goto :goto_1

    :cond_1
    move v10, v4

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v2

    if-ne v5, v9, :cond_2

    move v11, v2

    goto :goto_2

    :cond_2
    move v11, v4

    :goto_2
    iget-object v9, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {v9}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->access$1900(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v12

    const/4 v9, 0x2

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 768
    invoke-virtual {v6}, Lcom/exteragram/messenger/ai/data/Service;->getModel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 769
    invoke-virtual {v6}, Lcom/exteragram/messenger/ai/data/Service;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    .line 770
    iget-object v8, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/exteragram/messenger/ai/data/Service;->isSelected()Z

    move-result v9

    if-eqz v9, :cond_3

    const/high16 v9, 0x42080000    # 34.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    goto :goto_3

    :cond_3
    move v9, v4

    :goto_3
    invoke-virtual {v8, v4, v4, v9, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v8, 0x43440000    # 196.0f

    .line 771
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setMinimumWidth(I)V

    const/16 v8, 0x38

    .line 772
    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setItemHeight(I)V

    .line 773
    invoke-virtual {v6}, Lcom/exteragram/messenger/ai/data/Service;->isSelected()Z

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 774
    new-instance v8, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda7;

    invoke-direct {v8, p0, v3, v6}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda7;-><init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;[Ljava/lang/Runnable;Lcom/exteragram/messenger/ai/data/Service;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 793
    :cond_4
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v5, -0x2

    invoke-direct {v0, v1, v5, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    .line 794
    new-instance v5, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda8;

    invoke-direct {v5, v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    aput-object v5, v3, v4

    .line 795
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    const/16 v3, 0xdc

    .line 796
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 797
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 798
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 799
    sget v3, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 800
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v3, 0x2

    .line 801
    new-array v3, v3, [I

    .line 802
    iget-object v5, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->modelSelector:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v5, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 803
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/view/View;->measure(II)V

    .line 804
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 805
    aget v2, v3, v2

    int-to-float v5, v2

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    const v7, 0x3f666666    # 0.9f

    mul-float/2addr v6, v7

    int-to-float v7, v1

    sub-float/2addr v6, v7

    cmpl-float v5, v5, v6

    const/high16 v6, 0x41000000    # 8.0f

    if-lez v5, :cond_5

    sub-int/2addr v2, v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->modelSelector:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v2, v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v2, v1

    .line 806
    :goto_4
    iget-object v1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {v1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->access$2000(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Landroid/view/ViewGroup;

    move-result-object v1

    aget v3, v3, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    const/16 v4, 0x33

    invoke-virtual {v0, v1, v4, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 10

    .line 811
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 813
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    .line 814
    iget-object v2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {v2}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$mhasEnoughHeight(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Z

    move-result v2

    if-nez v2, :cond_0

    move p1, v1

    .line 817
    :cond_0
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result p1

    .line 819
    iget-object v2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const v3, 0x3f59999a    # 0.85f

    invoke-static {v3, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 820
    iget-object v2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v3, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 821
    iget-object v2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v3, -0x3ec00000    # -12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v3, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 822
    iget-object v2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static {v4, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 823
    iget-object v2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v3, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 825
    iget-object v2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    const/high16 v3, -0x3e500000    # -22.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v3, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 827
    iget-object v2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->backButton:Landroid/widget/ImageView;

    const/high16 v3, -0x3e380000    # -25.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v0, v3, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 828
    iget-object v2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->backButton:Landroid/widget/ImageView;

    sub-float/2addr v1, p1

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 830
    iget-object v2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->insertButton:Landroid/widget/ImageView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    invoke-static {v4, v6, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 831
    iget-object v2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->insertButton:Landroid/widget/ImageView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    invoke-static {v4, v7, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 832
    iget-object v2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->insertButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v4, v7}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->access$2100(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I

    move-result v4

    iget-object v8, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static {v8, v9}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->access$2200(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I

    move-result v8

    invoke-static {v4, v8, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v8}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 834
    iget-object v2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static {v3, v4, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTranslationX(F)V

    .line 835
    iget-object v2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static {v3, v4, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 836
    iget-object v2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v3, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {v3, v7}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->access$2300(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I

    move-result v3

    iget-object v4, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {v4, v9}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->access$2400(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I

    move-result v4

    invoke-static {v3, v4, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 838
    iget-object v2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->shadow:Landroid/view/View;

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v0, v3, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 839
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->shadow:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
