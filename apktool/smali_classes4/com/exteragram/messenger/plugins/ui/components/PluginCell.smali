.class public Lcom/exteragram/messenger/plugins/ui/components/PluginCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/plugins/ui/components/PluginCell$Factory;
    }
.end annotation


# instance fields
.field private final checkBox:Lorg/telegram/ui/Components/Switch;

.field private compact:Z

.field private final deleteButton:Landroid/widget/ImageView;

.field private final descriptionView:Lorg/telegram/ui/Components/EffectsTextView;

.field private final headerLayout:Landroid/widget/LinearLayout;

.field private final imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final openInButton:Landroid/widget/ImageView;

.field private final pinButton:Landroid/widget/ImageView;

.field private plugin:Lcom/exteragram/messenger/plugins/Plugin;

.field private pluginCellDelegate:Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;

.field private final pluginNameView:Landroid/widget/TextView;

.field private final requirementsLayout:Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;

.field private final settingsButton:Landroid/widget/ImageView;

.field private final shareButton:Landroid/widget/ImageView;

.field private final subtitleView:Lorg/telegram/ui/Components/EffectsTextView;


# direct methods
.method public static synthetic $r8$lambda$Io3EOKoAelz2pJdzrZy8cB-YtCU(Lcom/exteragram/messenger/plugins/ui/components/PluginCell;Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->lambda$set$6(Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OYBD-ti5SMhGf-dE1IV5__ip9H0(Lcom/exteragram/messenger/plugins/ui/components/PluginCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W2RlBfJP7_OEGcrkGvhffIKfffY(Lcom/exteragram/messenger/plugins/ui/components/PluginCell;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->lambda$updateLayout$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y2aMaps3o3-LJeIlCPsdotDztJE(Lcom/exteragram/messenger/plugins/ui/components/PluginCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aCxZjxcBHM6EeqHB6FSbMpFrBuI(Lcom/exteragram/messenger/plugins/ui/components/PluginCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->lambda$bindErrorState$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jK3MwaY6HLjWEW-UfokAs7AvUHw(Lcom/exteragram/messenger/plugins/ui/components/PluginCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nV1yPnvhT2aH_pFccHA1RnPhQhE(Lcom/exteragram/messenger/plugins/ui/components/PluginCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uS2pxEusieXqPr6JKNMuOpqf2F4(Lcom/exteragram/messenger/plugins/ui/components/PluginCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vqPrryxz8Fiue1bJkXjQwTVoc2o(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/high16 v2, 0x3fc00000    # 1.5f

    const-wide/16 v3, 0x15e

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    return v5

    .line 373
    :cond_0
    invoke-virtual {p0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 374
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 375
    invoke-virtual {p0, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 376
    invoke-virtual {p0, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 377
    invoke-virtual {p0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 378
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 379
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return v1

    .line 359
    :cond_1
    invoke-virtual {p0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_2

    .line 361
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    .line 363
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 365
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 366
    invoke-virtual {p0, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 367
    invoke-virtual {p0, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 368
    invoke-virtual {p0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 369
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 370
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return v1

    .line 351
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 352
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const p1, 0x3f59999a    # 0.85f

    .line 353
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 354
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v2, 0x50

    .line 355
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 356
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return v1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 86
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 88
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 89
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 90
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 92
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 93
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v10, 0x41800000    # 16.0f

    const/high16 v11, 0x41000000    # 8.0f

    const/4 v5, -0x1

    const/high16 v6, -0x40000000    # -2.0f

    const/16 v7, 0x77

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v9, 0x41800000    # 16.0f

    .line 94
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->headerLayout:Landroid/widget/LinearLayout;

    .line 97
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v6, -0x1

    const/4 v7, -0x2

    .line 98
    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v8, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$1;

    invoke-direct {v8, v0, v1}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$1;-><init>(Lcom/exteragram/messenger/plugins/ui/components/PluginCell;Landroid/content/Context;)V

    iput-object v8, v0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v9, 0x8

    .line 112
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    const/high16 v10, 0x41000000    # 8.0f

    .line 113
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 114
    invoke-virtual {v8}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v10

    invoke-virtual {v10, v4}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    const/16 v16, 0x0

    const/16 v17, 0xc

    const/16 v11, 0x38

    const/16 v12, 0x38

    const/16 v13, 0x33

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 115
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 119
    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->pluginNameView:Landroid/widget/TextView;

    const/4 v10, 0x3

    .line 122
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v11, 0x41900000    # 18.0f

    .line 124
    invoke-virtual {v5, v4, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 125
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 126
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 127
    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v8, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v5, Lorg/telegram/ui/Components/EffectsTextView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/EffectsTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->subtitleView:Lorg/telegram/ui/Components/EffectsTextView;

    .line 130
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    const-wide v12, -0x53130ac31c0974dbL    # -2.776510429612832E-92

    .line 131
    invoke-static {v12, v13}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 132
    new-instance v7, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v7}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 133
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v12, 0x41600000    # 14.0f

    .line 134
    invoke-virtual {v5, v4, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 135
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 136
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v5, v11}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setTextColor(I)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x2

    const/4 v14, 0x0

    const/high16 v15, 0x40000000    # 2.0f

    .line 137
    invoke-static/range {v12 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v8, v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v5, Lorg/telegram/ui/Components/EffectsTextView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/EffectsTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->descriptionView:Lorg/telegram/ui/Components/EffectsTextView;

    .line 140
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    const-wide v10, -0x53130ad61c0974dbL    # -2.776482632159476E-92

    .line 141
    invoke-static {v10, v11}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 142
    new-instance v8, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v8}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 143
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xc

    .line 144
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v5, Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;

    invoke-direct {v5, v1}, Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->requirementsLayout:Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;

    .line 147
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 148
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 151
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v7, 0x3f800000    # 1.0f

    .line 152
    sget v8, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float v11, v7, v8

    const/16 v16, 0x8

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 157
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_share:I

    new-instance v8, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/plugins/ui/components/PluginCell;)V

    invoke-direct {v0, v1, v7, v2, v8}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->createButton(Landroid/content/Context;IZLandroid/view/View$OnClickListener;)Landroid/widget/ImageView;

    move-result-object v7

    iput-object v7, v0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->shareButton:Landroid/widget/ImageView;

    const/high16 v15, 0x41000000    # 8.0f

    const/16 v16, 0x0

    const/16 v10, 0x28

    const/high16 v11, 0x42200000    # 40.0f

    const/16 v12, 0x33

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 158
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_openin:I

    new-instance v8, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$$ExternalSyntheticLambda1;

    invoke-direct {v8, v0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/plugins/ui/components/PluginCell;)V

    invoke-direct {v0, v1, v7, v2, v8}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->createButton(Landroid/content/Context;IZLandroid/view/View$OnClickListener;)Landroid/widget/ImageView;

    move-result-object v7

    iput-object v7, v0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->openInButton:Landroid/widget/ImageView;

    .line 161
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_pin:I

    new-instance v8, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/plugins/ui/components/PluginCell;)V

    invoke-direct {v0, v1, v7, v2, v8}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->createButton(Landroid/content/Context;IZLandroid/view/View$OnClickListener;)Landroid/widget/ImageView;

    move-result-object v7

    iput-object v7, v0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->pinButton:Landroid/widget/ImageView;

    .line 164
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_settings:I

    new-instance v8, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$$ExternalSyntheticLambda3;

    invoke-direct {v8, v0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/plugins/ui/components/PluginCell;)V

    invoke-direct {v0, v1, v7, v2, v8}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->createButton(Landroid/content/Context;IZLandroid/view/View$OnClickListener;)Landroid/widget/ImageView;

    move-result-object v7

    iput-object v7, v0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->settingsButton:Landroid/widget/ImageView;

    .line 167
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    new-instance v8, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$$ExternalSyntheticLambda4;

    invoke-direct {v8, v0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$$ExternalSyntheticLambda4;-><init>(Lcom/exteragram/messenger/plugins/ui/components/PluginCell;)V

    invoke-direct {v0, v1, v7, v4, v8}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->createButton(Landroid/content/Context;IZLandroid/view/View$OnClickListener;)Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, v0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->deleteButton:Landroid/widget/ImageView;

    const/high16 v12, 0x41800000    # 16.0f

    const/high16 v13, 0x41000000    # 8.0f

    const/16 v7, 0x28

    const/high16 v8, 0x42200000    # 40.0f

    const/16 v9, 0x55

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 172
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x28

    const/16 v7, 0x53

    .line 173
    invoke-static {v6, v4, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    new-instance v3, Lorg/telegram/ui/Components/Switch;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    .line 176
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v3, v1, v4, v5, v5}, Lorg/telegram/ui/Components/Switch;->setColors(IIII)V

    .line 177
    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusable(Z)V

    const/high16 v11, 0x41c00000    # 24.0f

    const/4 v12, 0x0

    const/16 v6, 0x25

    const/high16 v7, 0x42200000    # 40.0f

    const/16 v8, 0x35

    const/4 v9, 0x0

    const/high16 v10, 0x41800000    # 16.0f

    .line 178
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->pluginsCompactView:Z

    invoke-virtual {v0, v1}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->setCompact(Z)V

    return-void
.end method

.method private applyClickAnimation(Landroid/view/View;)V
    .locals 1

    .line 348
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private bindErrorState()V
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->descriptionView:Lorg/telegram/ui/Components/EffectsTextView;

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/Plugin;->getError()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->descriptionView:Lorg/telegram/ui/Components/EffectsTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setTextColor(I)V

    .line 297
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->descriptionView:Lorg/telegram/ui/Components/EffectsTextView;

    const-wide v1, -0x53130b091c0974dbL    # -2.776408017942573E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 298
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->descriptionView:Lorg/telegram/ui/Components/EffectsTextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 299
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->descriptionView:Lorg/telegram/ui/Components/EffectsTextView;

    new-instance v1, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$$ExternalSyntheticLambda8;-><init>(Lcom/exteragram/messenger/plugins/ui/components/PluginCell;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->updateDeleteButton()V

    return-void
.end method

.method private bindNormalState()V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->descriptionView:Lorg/telegram/ui/Components/EffectsTextView;

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    .line 311
    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/Plugin;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->fullyFormatText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 310
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->descriptionView:Lorg/telegram/ui/Components/EffectsTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setTextColor(I)V

    .line 314
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->descriptionView:Lorg/telegram/ui/Components/EffectsTextView;

    const-wide v1, -0x53130b191c0974dbL    # -2.7763846095607996E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 315
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->descriptionView:Lorg/telegram/ui/Components/EffectsTextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 316
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->descriptionView:Lorg/telegram/ui/Components/EffectsTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->updateDeleteButton()V

    return-void
.end method

.method private bindNotRespondingState()V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->descriptionView:Lorg/telegram/ui/Components/EffectsTextView;

    sget v1, Lorg/telegram/messenger/R$string;->PluginIsNotResponding:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->descriptionView:Lorg/telegram/ui/Components/EffectsTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setTextColor(I)V

    .line 273
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->descriptionView:Lorg/telegram/ui/Components/EffectsTextView;

    const-wide v1, -0x53130af91c0974dbL    # -2.7764314263243465E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 274
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->descriptionView:Lorg/telegram/ui/Components/EffectsTextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 275
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->descriptionView:Lorg/telegram/ui/Components/EffectsTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->updateDeleteButton()V

    return-void
.end method

.method private createButton(Landroid/content/Context;IZLandroid/view/View$OnClickListener;)Landroid/widget/ImageView;
    .locals 2

    .line 330
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 331
    invoke-direct {p0, v0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->applyClickAnimation(Landroid/view/View;)V

    .line 332
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 333
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 334
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    if-eqz p3, :cond_0

    .line 335
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    :goto_0
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 334
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eqz p3, :cond_1

    .line 339
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    const p2, 0x3df5c28f    # 0.12f

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    goto :goto_1

    :cond_1
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    :goto_1
    const/high16 p2, 0x41a00000    # 20.0f

    .line 341
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/4 p3, 0x1

    .line 338
    invoke-static {p1, p3, p2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 343
    invoke-virtual {v0, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private synthetic lambda$bindErrorState$7(Landroid/view/View;)V
    .locals 1

    .line 300
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lcom/exteragram/messenger/utils/AppUtils;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 301
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 302
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->TextCopied:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->pluginCellDelegate:Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;

    invoke-interface {p1}, Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;->sharePlugin()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 160
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->pluginCellDelegate:Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;

    invoke-interface {p1}, Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;->openInExternalApp()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 163
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->pluginCellDelegate:Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;

    invoke-interface {p1, p0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;->pinPlugin(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    .line 166
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->pluginCellDelegate:Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;

    invoke-interface {p1}, Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;->openPluginSettings()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 0

    .line 170
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->pluginCellDelegate:Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;

    invoke-interface {p1}, Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;->deletePlugin()V

    return-void
.end method

.method private synthetic lambda$set$6(Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;Landroid/view/View;)V
    .locals 0

    .line 265
    invoke-interface {p1, p0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;->togglePlugin(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$updateLayout$5(I)V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->subtitleView:Lorg/telegram/ui/Components/EffectsTextView;

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->pluginNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    move p1, v3

    :cond_0
    invoke-virtual {v0, v3, v3, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private updateDeleteButton()V
    .locals 5

    .line 281
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v0}, Lcom/exteragram/messenger/plugins/Plugin;->isNotResponding()Z

    move-result v0

    .line 282
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->deleteButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    if-nez v0, :cond_0

    .line 283
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    goto :goto_0

    :cond_0
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    :goto_0
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 282
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 286
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->deleteButton:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 287
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const v3, 0x3df5c28f    # 0.12f

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    goto :goto_1

    :cond_1
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    :goto_1
    const/high16 v3, 0x41a00000    # 20.0f

    .line 289
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x1

    .line 286
    invoke-static {v2, v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 291
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->deleteButton:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    goto :goto_2

    :cond_2
    sget v0, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateLayout()V
    .locals 7

    .line 197
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    if-nez v0, :cond_0

    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->headerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 202
    iget-object v2, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->headerLayout:Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->compact:Z

    xor-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 204
    iget-object v2, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 205
    iget-boolean v3, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->compact:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 206
    iget-boolean v3, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->compact:Z

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_1
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 207
    iget-boolean v3, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->compact:Z

    const/high16 v5, 0x42600000    # 56.0f

    const/high16 v6, 0x42440000    # 49.0f

    if-eqz v3, :cond_3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_2

    :cond_3
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_2
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 208
    iget-boolean v3, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->compact:Z

    if-eqz v3, :cond_4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_3

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_3
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 210
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 211
    iget-boolean v2, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->compact:Z

    if-eqz v2, :cond_5

    const/16 v3, 0x10

    goto :goto_4

    :cond_5
    const/4 v3, 0x3

    :goto_4
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 213
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->pluginNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 214
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->subtitleView:Lorg/telegram/ui/Components/EffectsTextView;

    iget-boolean v2, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->compact:Z

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 216
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v0}, Lcom/exteragram/messenger/plugins/Plugin;->getPack()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v0}, Lcom/exteragram/messenger/plugins/Plugin;->getIndex()I

    move-result v0

    if-ltz v0, :cond_6

    goto :goto_5

    :cond_6
    move v1, v4

    .line 217
    :goto_5
    iget-boolean v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->compact:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v0}, Lcom/exteragram/messenger/plugins/Plugin;->hasError()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-boolean v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->compact:Z

    if-nez v0, :cond_9

    if-nez v1, :cond_9

    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v0}, Lcom/exteragram/messenger/plugins/Plugin;->hasError()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/high16 v0, 0x42740000    # 61.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_6

    :cond_9
    move v0, v4

    .line 218
    :goto_6
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->pluginNameView:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 219
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->pluginNameView:Landroid/widget/TextView;

    new-instance v2, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$$ExternalSyntheticLambda7;-><init>(Lcom/exteragram/messenger/plugins/ui/components/PluginCell;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 402
    sget p2, Lorg/telegram/messenger/NotificationCenter;->pluginSettingsRegistered:I

    if-eq p1, p2, :cond_0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->pluginSettingsUnregistered:I

    if-ne p1, p2, :cond_2

    .line 403
    :cond_0
    array-length p2, p3

    if-lez p2, :cond_2

    const/4 p2, 0x0

    aget-object p3, p3, p2

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p3, Ljava/lang/String;

    .line 404
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v0}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 405
    iget-object p3, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->settingsButton:Landroid/widget/ImageView;

    sget v0, Lorg/telegram/messenger/NotificationCenter;->pluginSettingsRegistered:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    move p2, v1

    :cond_1
    const/high16 p1, 0x3f000000    # 0.5f

    invoke-static {p3, p2, p1, v1, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 388
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 389
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pluginSettingsRegistered:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 390
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pluginSettingsUnregistered:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 395
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 396
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pluginSettingsRegistered:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 397
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pluginSettingsUnregistered:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 193
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public set(Lcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;)V
    .locals 13

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_6

    .line 229
    :cond_0
    iput-object p2, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->pluginCellDelegate:Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;

    .line 230
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    .line 232
    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/PluginsController;->isPluginPinned(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->setPinned(Z)V

    .line 234
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->openInButton:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;->canOpenInExternalApp()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->getPack()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->getIndex()I

    move-result v0

    if-ltz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v3

    .line 237
    :goto_1
    iget-object v4, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_4

    .line 240
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v2, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 241
    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->getPack()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->getIndex()I

    move-result v5

    const-wide v6, -0x53130ae91c0974dbL    # -2.77645483470612E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v4, v5, v6}, Lorg/telegram/messenger/MediaDataController;->setPlaceholderImageByIndex(Lorg/telegram/ui/Components/BackupImageView;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 243
    :cond_4
    iget-object v7, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    .line 246
    :goto_2
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->pluginNameView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->subtitleView:Lorg/telegram/ui/Components/EffectsTextView;

    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-boolean v4, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->compact:Z

    if-eqz v4, :cond_5

    const-wide v4, -0x53130af11c0974dbL    # -2.7764431305152332E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lorg/telegram/messenger/R$string;->PluginVersion:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v5, -0x53130af31c0974dbL    # -2.7764402044675116E-92

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-wide v4, -0x53130af51c0974dbL    # -2.77643727841979E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 250
    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->formatWithUsernames(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 247
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->isNotResponding()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 253
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->bindNotRespondingState()V

    goto :goto_4

    .line 254
    :cond_6
    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->hasError()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 255
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->bindErrorState()V

    goto :goto_4

    .line 257
    :cond_7
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->bindNormalState()V

    .line 260
    :goto_4
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->requirementsLayout:Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;

    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->getRequirements()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;->setRequirements(Ljava/util/List;)V

    .line 262
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->updateLayout()V

    .line 264
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    .line 265
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    new-instance v2, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p2}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$$ExternalSyntheticLambda6;-><init>(Lcom/exteragram/messenger/plugins/ui/components/PluginCell;Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->settingsButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->hasPluginSettings(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    move p1, v1

    goto :goto_5

    :cond_8
    move p1, v3

    :goto_5
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p2, p1, v0, v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    :cond_9
    :goto_6
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    return-void
.end method

.method public setCompact(Z)V
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->compact:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 187
    :cond_0
    iput-boolean p1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->compact:Z

    .line 188
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->updateLayout()V

    return-void
.end method

.method public setPinned(Z)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->pinButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/messenger/R$drawable;->msg_unpin:I

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_pin:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
