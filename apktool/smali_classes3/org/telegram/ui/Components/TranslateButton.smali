.class public abstract Lorg/telegram/ui/Components/TranslateButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private accusative:[Z

.field private final currentAccount:I

.field private final dialogId:J

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private menuView:Landroid/widget/ImageView;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private textView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private final translateDrawable:Landroid/graphics/drawable/Drawable;

.field public final translateIcon:Landroid/text/SpannableString;


# direct methods
.method public static synthetic $r8$lambda$7IrBAcGxwA9QBQqZsA5EUoMbDQM([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 466
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 467
    sget p0, Lorg/telegram/messenger/R$string;->CocoonFeature1TextLink:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9w0XAaZqX1OQYTCOJuAp6kUhyMQ(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$11(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JatsdPFLV35vQgFerZd29lewOgU(Lorg/telegram/ui/Components/TranslateButton;IJLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/TranslateButton;->lambda$new$1(IJLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jt6yGtoCbiYFXlVmmJak6tlzyI0(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$9(Lorg/telegram/messenger/TranslateController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PJdC9EYRvEPLSh10Nu-P4BFrUTA(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Landroid/view/View;)V
    .locals 0

    .line 205
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->closeForeground()V

    return-void
.end method

.method public static synthetic $r8$lambda$QOPZCN4BYYZwvBbhxHNM7hs5CeI(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$3(Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TD2I6POaZ7CKHW15KPwYGNPXWkY([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 495
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 496
    sget p0, Lorg/telegram/messenger/R$string;->CocoonFooterLink:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UN7KHYS9rI_6wPq2Azm3zssQWAw(Lorg/telegram/ui/Components/TranslateButton;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$WGN10rdPjHfyFHF5TwR_-w1DlS4(Lorg/telegram/ui/Components/TranslateButton;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TranslateButton;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cNB5kJGCsckrsDzpNWtSzmssJ-c(Lorg/telegram/ui/Components/TranslateButton;Ljava/lang/String;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$8(Ljava/lang/String;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eTgrLI6_9iOaXRFEUubSLGZRyWA(Lorg/telegram/ui/Components/TranslateButton;[ZLjava/lang/String;Landroid/widget/LinearLayout;Ljava/util/ArrayList;Ljava/lang/String;Lorg/telegram/messenger/TranslateController;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$5([ZLjava/lang/String;Landroid/widget/LinearLayout;Ljava/util/ArrayList;Ljava/lang/String;Lorg/telegram/messenger/TranslateController;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eXRBulNztwdcklNHccX9znXgCqQ(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$12(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$esQe9JtamP7M9KjqxifYQ15wmgQ(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILandroid/view/View;)V
    .locals 0

    .line 297
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 298
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->openForeground(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$o3ZwMH9GdLWJXTgzAhqM4vHZ2KE(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$10(Lorg/telegram/messenger/TranslateController;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t6Z43_oSqRjcaerI7uTXt81ruec(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$4(Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vq1vT0FsDR-8gKIoa_OEDM4oa24([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 504
    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$wIFbv-Scs9SbeMJEoA7JlxUZaR8([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 479
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 480
    sget p0, Lorg/telegram/messenger/R$string;->CocoonFeature3TextLink:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/telegram/messenger/browser/Browser;->openUrlInSystemBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v6, p2

    move-wide/from16 v7, p3

    .line 82
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    .line 75
    new-array v0, v9, [Z

    iput-object v0, v1, Lorg/telegram/ui/Components/TranslateButton;->accusative:[Z

    .line 84
    iput v6, v1, Lorg/telegram/ui/Components/TranslateButton;->currentAccount:I

    .line 85
    iput-wide v7, v1, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    move-object/from16 v0, p5

    .line 86
    iput-object v0, v1, Lorg/telegram/ui/Components/TranslateButton;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v0, p6

    .line 87
    iput-object v0, v1, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 89
    new-instance v10, Lorg/telegram/ui/Components/TranslateButton$1;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object/from16 v2, p1

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/TranslateButton$1;-><init>(Lorg/telegram/ui/Components/TranslateButton;Landroid/content/Context;ZZZ)V

    iput-object v10, v1, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-wide/16 v14, 0x1c2

    .line 98
    sget-object v16, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v11, 0x3e99999a    # 0.3f

    const-wide/16 v12, 0x0

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 100
    iget-object v0, v1, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 101
    iget-object v0, v1, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 102
    iget-object v0, v1, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v4, v5, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 103
    iget-object v0, v1, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 104
    iget-object v0, v1, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    xor-int/2addr v3, v9

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setIgnoreRTL(Z)V

    .line 105
    iget-object v0, v1, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-boolean v5, v0, Lorg/telegram/ui/Components/AnimatedTextView;->adaptWidth:Z

    .line 106
    new-instance v3, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/TranslateButton;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, v1, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v15, 0x42080000    # 34.0f

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_translate:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/TranslateButton;->translateDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v3, -0x3f400000    # -6.0f

    .line 110
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 111
    new-instance v2, Landroid/text/SpannableString;

    const-string/jumbo v3, "x"

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/TranslateButton;->translateIcon:Landroid/text/SpannableString;

    .line 112
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v0, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 v0, 0x21

    invoke-virtual {v2, v3, v5, v9, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 114
    new-instance v0, Landroid/widget/ImageView;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    .line 115
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 116
    iget-object v0, v1, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_mini_customize:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    iget-object v0, v1, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v6, v7, v8}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/TranslateButton;IJ)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, v1, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    const/high16 v7, 0x40e00000    # 7.0f

    const/4 v8, 0x0

    const/16 v2, 0x1e

    const/high16 v3, 0x41f00000    # 30.0f

    const/16 v4, 0x15

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    invoke-virtual {v1}, Lorg/telegram/ui/Components/TranslateButton;->updateColors()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 78
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v3

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/TranslateButton;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 106
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranslateButton;->onButtonClick()V

    return-void
.end method

.method private synthetic lambda$new$1(IJLandroid/view/View;)V
    .locals 0

    .line 118
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    neg-long p2, p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    .line 119
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    iget-boolean p1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->autotranslation:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranslateButton;->onCloseClick()V

    return-void

    .line 120
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranslateButton;->onMenuClick()V

    return-void
.end method

.method private synthetic lambda$onMenuClick$10(Lorg/telegram/messenger/TranslateController;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 4

    .line 337
    iget-wide v0, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    const/4 p3, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lorg/telegram/messenger/TranslateController;->setHideTranslateDialog(JZ)V

    .line 338
    iget p3, p0, Lorg/telegram/ui/Components/TranslateButton;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide v0, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 339
    invoke-static {p3}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    sget p3, Lorg/telegram/messenger/R$string;->TranslationBarHiddenForChannel:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 344
    sget p3, Lorg/telegram/messenger/R$string;->TranslationBarHiddenForGroup:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 345
    :cond_1
    sget p3, Lorg/telegram/messenger/R$string;->TranslationBarHiddenForChat:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 340
    :goto_0
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->msg_translate:I

    sget v2, Lorg/telegram/messenger/R$string;->UndoNoCaps:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;)V

    invoke-virtual {v0, v1, p3, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 349
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 350
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onMenuClick$11(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V
    .locals 1

    .line 364
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 365
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/TranslateButton;->showCocoonAlert(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$onMenuClick$12(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 0

    .line 376
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 377
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/TranslateButton;->showCocoonAlert(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$onMenuClick$3(Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 2

    .line 245
    iget-wide v0, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/messenger/TranslateController;->setDialogTranslateTo(JLjava/lang/String;)V

    .line 246
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 247
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranslateButton;->updateText()V

    return-void
.end method

.method private synthetic lambda$onMenuClick$4(Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 2

    .line 275
    iget-wide v0, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/messenger/TranslateController;->setDialogTranslateTo(JLjava/lang/String;)V

    .line 276
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 277
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranslateButton;->updateText()V

    return-void
.end method

.method private synthetic lambda$onMenuClick$5([ZLjava/lang/String;Landroid/widget/LinearLayout;Ljava/util/ArrayList;Ljava/lang/String;Lorg/telegram/messenger/TranslateController;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Ljava/util/ArrayList;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    const/4 v6, 0x0

    .line 222
    aget-boolean v7, p1, v6

    if-eqz v7, :cond_0

    return-void

    :cond_0
    const/4 v7, 0x1

    if-eqz v1, :cond_1

    .line 225
    invoke-static {v1}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 227
    new-instance v9, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v13, 0x0

    iget-object v14, v0, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-direct/range {v9 .. v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 228
    invoke-virtual {v9, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 229
    invoke-virtual {v9, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 233
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v6

    :goto_0
    if-ge v9, v8, :cond_5

    move-object/from16 v10, p4

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    check-cast v11, Lorg/telegram/messenger/TranslateController$Language;

    .line 234
    iget-object v12, v11, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    .line 235
    invoke-static {v12, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_0

    .line 239
    :cond_2
    new-instance v14, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v18, 0x0

    iget-object v13, v0, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object/from16 v19, v13

    invoke-direct/range {v14 .. v19}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz v1, :cond_3

    .line 240
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move v13, v7

    goto :goto_1

    :cond_3
    move v13, v6

    .line 241
    :goto_1
    invoke-virtual {v14, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 242
    iget-object v11, v11, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    invoke-virtual {v14, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    if-nez v13, :cond_4

    .line 244
    new-instance v11, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda15;

    invoke-direct {v11, v0, v4, v12, v5}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    invoke-virtual {v14, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    :cond_4
    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 252
    :cond_5
    new-instance v8, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v0, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v8, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v9, -0x1

    const/16 v10, 0x8

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v6

    :goto_2
    if-ge v9, v8, :cond_9

    move-object/from16 v10, p8

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    check-cast v11, Lorg/telegram/messenger/TranslateController$Language;

    .line 260
    iget-object v12, v11, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    .line 261
    invoke-static {v12, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    .line 264
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    move v13, v7

    goto :goto_3

    :cond_7
    move v13, v6

    .line 270
    :goto_3
    new-instance v14, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v18, 0x0

    move/from16 v20, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object/from16 v19, v6

    invoke-direct/range {v14 .. v19}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 271
    invoke-virtual {v14, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 272
    iget-object v6, v11, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    invoke-virtual {v14, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    if-nez v13, :cond_8

    .line 274
    new-instance v6, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda16;

    invoke-direct {v6, v0, v4, v12, v5}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    invoke-virtual {v14, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    :cond_8
    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move/from16 v6, v20

    goto :goto_2

    :cond_9
    move/from16 v20, v6

    .line 283
    aput-boolean v7, p1, v20

    return-void
.end method

.method private synthetic lambda$onMenuClick$7()V
    .locals 2

    .line 327
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-direct {v1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onMenuClick$8(Ljava/lang/String;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 2

    const/4 p5, 0x1

    .line 312
    invoke-static {p1, p5}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->toggleLanguage(Ljava/lang/String;Z)Z

    .line 313
    invoke-virtual {p2}, Lorg/telegram/messenger/TranslateController;->checkRestrictedLanguagesUpdate()V

    .line 314
    iget-wide v0, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {p2, v0, v1, p5}, Lorg/telegram/messenger/TranslateController;->setHideTranslateDialog(JZ)V

    .line 316
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateButton;->accusative:[Z

    const/4 p2, 0x0

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_0

    .line 317
    sget p1, Lorg/telegram/messenger/R$string;->AddedToDoNotTranslate:I

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p3, p5, p2

    invoke-static {p1, p5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 319
    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->AddedToDoNotTranslateOther:I

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p3, p5, p2

    invoke-static {p1, p5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 321
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 322
    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 323
    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateButton;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$raw;->msg_translate:I

    sget p5, Lorg/telegram/messenger/R$string;->Settings:I

    .line 326
    invoke-static {p5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p5

    new-instance v0, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/TranslateButton;)V

    .line 323
    invoke-virtual {p2, p3, p1, p5, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 328
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 329
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onMenuClick$9(Lorg/telegram/messenger/TranslateController;)V
    .locals 3

    .line 348
    iget-wide v0, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/TranslateController;->setHideTranslateDialog(JZ)V

    return-void
.end method

.method public static showCocoonAlert(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    .line 421
    new-instance v6, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 422
    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyBottomPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 423
    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v8, 0x1

    .line 424
    new-array v9, v8, [Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 426
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 427
    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 429
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 430
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 431
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    const v3, -0xf3df9b

    const v4, -0xf9eed6

    .line 432
    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    const/high16 v3, 0x43160000    # 150.0f

    .line 433
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    const/high16 v11, 0x41400000    # 12.0f

    .line 434
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0x8

    .line 435
    new-array v4, v4, [F

    aput v3, v4, v7

    aput v3, v4, v8

    const/4 v12, 0x2

    aput v3, v4, v12

    const/4 v12, 0x3

    aput v3, v4, v12

    const/4 v3, 0x4

    const/4 v12, 0x0

    aput v12, v4, v3

    const/4 v3, 0x5

    aput v12, v4, v3

    const/4 v3, 0x6

    aput v12, v4, v3

    const/4 v3, 0x7

    aput v12, v4, v3

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 436
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 437
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 438
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x77

    const/4 v4, -0x1

    .line 439
    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 442
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 443
    sget v12, Lorg/telegram/messenger/R$drawable;->cocoon_logo:I

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v13, 0x84

    const/16 v14, 0x84

    const/16 v15, 0x31

    const/16 v16, 0x0

    const/16 v17, 0x21

    .line 444
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v2, v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 447
    sget v12, Lorg/telegram/messenger/R$drawable;->cocoon_text:I

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v18, 0x20

    const/4 v13, -0x2

    const/4 v14, -0x2

    const/16 v16, 0x20

    const/16 v17, 0xc

    .line 448
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v2, v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v12, -0x473611

    .line 451
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v12, 0x41500000    # 13.0f

    .line 452
    invoke-virtual {v3, v8, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v12, 0x11

    .line 453
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 454
    sget v13, Lorg/telegram/messenger/R$string;->CocoonSubtitle:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    .line 455
    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    const-class v15, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-virtual {v13, v7, v14, v15}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lorg/telegram/ui/Components/TypefaceSpan;

    move v15, v7

    .line 456
    :goto_0
    array-length v7, v14

    if-ge v15, v7, :cond_0

    .line 457
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aget-object v12, v14, v15

    invoke-virtual {v13, v12}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    aget-object v8, v14, v15

    invoke-virtual {v13, v8}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    aget-object v11, v14, v15

    invoke-virtual {v13, v11}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v13, v7, v12, v8, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x1

    const/high16 v11, 0x41400000    # 12.0f

    const/16 v12, 0x11

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v25, 0x42000000    # 32.0f

    const/high16 v26, 0x41a00000    # 20.0f

    const/16 v20, -0x1

    const/high16 v21, -0x40000000    # -2.0f

    const/16 v22, 0x31

    const/high16 v23, 0x42000000    # 32.0f

    const/high16 v24, 0x41600000    # 14.0f

    .line 460
    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, -0x40000000    # -2.0f

    .line 462
    invoke-static {v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    new-instance v0, Lorg/telegram/ui/ChannelMonetizationLayout$FeatureCell;

    sget v2, Lorg/telegram/messenger/R$drawable;->menu_privacy:I

    sget v3, Lorg/telegram/messenger/R$string;->CocoonFeature1Title:I

    .line 465
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->CocoonFeature1Text:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda10;

    invoke-direct {v7, v9, v1}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda10;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;)V

    invoke-static {v4, v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChannelMonetizationLayout$FeatureCell;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v25, 0x20

    const/16 v26, 0x10

    const/16 v21, -0x2

    const/16 v23, 0x20

    const/16 v24, 0x10

    .line 469
    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 464
    invoke-virtual {v10, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    new-instance v0, Lorg/telegram/ui/ChannelMonetizationLayout$FeatureCell;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_stats:I

    sget v1, Lorg/telegram/messenger/R$string;->CocoonFeature2Title:I

    .line 473
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v1, Lorg/telegram/messenger/R$string;->CocoonFeature2Text:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChannelMonetizationLayout$FeatureCell;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v24, 0x0

    .line 474
    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 472
    invoke-virtual {v10, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    new-instance v0, Lorg/telegram/ui/ChannelMonetizationLayout$FeatureCell;

    sget v2, Lorg/telegram/messenger/R$drawable;->menu_gift:I

    sget v3, Lorg/telegram/messenger/R$string;->CocoonFeature3Title:I

    .line 478
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->CocoonFeature3Text:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda11;

    invoke-direct {v5, v9, v1}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda11;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;)V

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChannelMonetizationLayout$FeatureCell;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 482
    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 477
    invoke-virtual {v10, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 486
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 487
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float v21, v2, v3

    const/16 v25, 0x18

    const/16 v26, 0x0

    const/16 v22, 0x7

    const/16 v23, 0x18

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    const/high16 v3, 0x41400000    # 12.0f

    .line 490
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 491
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 492
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/16 v2, 0x11

    .line 493
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 494
    sget v2, Lorg/telegram/messenger/R$string;->CocoonFooter:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda12;

    invoke-direct {v3, v9, v1}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda12;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;)V

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41900000    # 18.0f

    .line 498
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    const/4 v2, 0x1

    .line 499
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    const/16 v22, 0x20

    const/16 v23, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x7

    const/16 v20, 0x20

    const/16 v21, 0x0

    .line 500
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    new-instance v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v0, v1, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object v0

    .line 503
    sget v1, Lorg/telegram/messenger/R$string;->Understood:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->replaceUnderstood(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    new-instance v1, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda13;

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda13;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v22, 0x10

    const/16 v23, 0x10

    const/16 v18, 0x30

    const/16 v20, 0x10

    .line 505
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    invoke-virtual {v6, v10}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 508
    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    const/16 v16, 0x0

    aput-object v0, v9, v16

    .line 509
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 510
    aget-object v0, v9, v16

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method


# virtual methods
.method protected abstract onButtonClick()V
.end method

.method protected abstract onCloseClick()V
.end method

.method protected onMenuClick()V
    .locals 18

    move-object/from16 v1, p0

    .line 151
    iget v0, v1, Lorg/telegram/ui/Components/TranslateButton;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v3

    .line 153
    new-instance v10, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert4:I

    iget-object v4, v1, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v11, 0x1

    invoke-direct {v10, v0, v2, v4, v11}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    .line 154
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, -0x2

    invoke-direct {v5, v10, v0, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    .line 155
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    iget-object v2, v1, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 157
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 159
    new-instance v2, Lorg/telegram/ui/Components/TranslateButton$2;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lorg/telegram/ui/Components/TranslateButton$2;-><init>(Lorg/telegram/ui/Components/TranslateButton;Landroid/content/Context;)V

    .line 191
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 192
    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 193
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 194
    iput-boolean v11, v10, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackGravityRight:Z

    .line 195
    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addViewToSwipeBack(Landroid/view/View;)I

    move-result v12

    .line 197
    new-instance v13, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v1, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v14, 0x0

    invoke-direct {v13, v6, v11, v14, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 198
    sget v6, Lorg/telegram/messenger/R$string;->TranslateTo:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_translate:I

    invoke-virtual {v13, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 199
    iget-wide v6, v1, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {v3, v6, v7}, Lorg/telegram/messenger/TranslateController;->getDialogTranslateTo(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    const/16 v6, 0x38

    .line 200
    invoke-virtual {v13, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setItemHeight(I)V

    .line 201
    invoke-virtual {v10, v13}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 203
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v1, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v7, v11, v14, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 204
    sget v7, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 205
    new-instance v7, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda2;

    invoke-direct {v7, v10}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v6, 0x1a4

    const/4 v15, -0x1

    .line 208
    invoke-static {v15, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-wide v6, v1, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {v3, v6, v7}, Lorg/telegram/messenger/TranslateController;->getDialogDetectedLanguage(J)Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-static {v2}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    iget-object v0, v1, Lorg/telegram/ui/Components/TranslateButton;->accusative:[Z

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v16

    .line 213
    iget-wide v6, v1, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {v3, v6, v7}, Lorg/telegram/messenger/TranslateController;->getDialogTranslateTo(J)Ljava/lang/String;

    move-result-object v0

    move-object v8, v5

    .line 215
    invoke-static {v0}, Lorg/telegram/messenger/TranslateController;->getSuggestedLanguages(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 216
    invoke-static {}, Lorg/telegram/messenger/TranslateController;->getLanguages()Ljava/util/ArrayList;

    move-result-object v9

    .line 218
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v14, v1, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v7, v14}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v14, 0x8

    invoke-static {v15, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v6, v2

    .line 220
    new-array v2, v11, [Z

    move-object v7, v3

    move-object v3, v0

    .line 221
    new-instance v0, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda3;

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/TranslateButton;[ZLjava/lang/String;Landroid/widget/LinearLayout;Ljava/util/ArrayList;Ljava/lang/String;Lorg/telegram/messenger/TranslateController;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Ljava/util/ArrayList;)V

    .line 296
    new-instance v2, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0, v10, v12}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;I)V

    invoke-virtual {v13, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget v0, v1, Lorg/telegram/ui/Components/TranslateButton;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v16, :cond_1

    .line 302
    new-instance v9, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    invoke-direct {v9, v0, v3, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 304
    iget-object v0, v1, Lorg/telegram/ui/Components/TranslateButton;->accusative:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_0

    .line 305
    sget v0, Lorg/telegram/messenger/R$string;->DoNotTranslateLanguage:I

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v16, v2, v3

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 307
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->DoNotTranslateLanguageOther:I

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v16, v2, v3

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 309
    :goto_0
    invoke-virtual {v9, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setMultiline(Z)V

    .line 310
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getTextView()Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalfText(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Ljava/lang/CharSequence;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_block2:I

    invoke-virtual {v9, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 311
    new-instance v0, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda5;

    move-object v2, v6

    move-object v3, v7

    move-object v5, v8

    move-object/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/TranslateButton;Ljava/lang/String;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    invoke-virtual {v10, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 334
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 335
    sget v2, Lorg/telegram/messenger/R$string;->Hide:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_cancel:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 336
    new-instance v2, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1, v7, v8}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 354
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->translationProvider:I

    if-nez v0, :cond_2

    move v3, v11

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 355
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v1, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v15, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 357
    :cond_3
    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41500000    # 13.0f

    .line 358
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const v5, 0x410547ae    # 8.33f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v4, v6, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 359
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    .line 360
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v4, v1, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    iget-object v5, v1, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 362
    iget-object v4, v1, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setEmojiColor(I)V

    .line 363
    sget v2, Lorg/telegram/messenger/R$string;->CocoonPoweredBy:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$string;->CocoonPoweredByLink:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda7;

    invoke-direct {v5, v1, v8}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->premiumText(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/CharSequence;

    const/16 v17, 0x0

    aput-object v2, v5, v17

    const-string v2, " "

    aput-object v2, v5, v11

    const/4 v2, 0x2

    aput-object v4, v5, v2

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 367
    new-instance v5, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v6, "\ud83e\udd5a"

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 368
    new-instance v7, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    const-wide v12, 0x482059e9000092b8L    # 2.7820144837866594E39

    invoke-direct {v7, v12, v13, v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/16 v12, 0x21

    const/4 v13, 0x0

    invoke-virtual {v5, v7, v13, v9, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 369
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 370
    const-string/jumbo v9, "\u00a0"

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 371
    const-string/jumbo v9, "\ud83e\udd5a "

    invoke-static {v9, v4, v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 372
    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 373
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalfText(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iget-object v5, v1, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    const/16 v5, 0xc

    const/4 v13, 0x0

    invoke-static {v4, v13, v5}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 375
    new-instance v4, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda8;

    invoke-direct {v4, v1, v8}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v3, :cond_4

    .line 379
    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 381
    :cond_4
    invoke-virtual {v8, v11}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    const/16 v0, 0xdc

    .line 382
    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 383
    invoke-virtual {v8, v11}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 384
    invoke-virtual {v8, v11}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 385
    sget v0, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v8, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 386
    invoke-virtual {v8, v11}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 387
    invoke-virtual {v8, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    const/4 v13, 0x0

    .line 388
    invoke-virtual {v8, v13}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 389
    iget-object v0, v1, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    neg-int v2, v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v8, v0, v13, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public setLeftMargin(F)V
    .locals 2

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public updateColors()V
    .locals 5

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_addContact:I

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const v3, 0x19ffffff

    and-int/2addr v2, v3

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createInsetRoundRectDrawable(IFI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iget-object v3, p0, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Lorg/telegram/ui/ActionBar/Theme;->createCircleSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_topPanelClose:I

    iget-object v4, p0, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 135
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->translateDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-direct {v2, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public updateText()V
    .locals 11

    .line 393
    iget v0, p0, Lorg/telegram/ui/Components/TranslateButton;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v0

    .line 394
    iget v1, p0, Lorg/telegram/ui/Components/TranslateButton;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 395
    iget-wide v2, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/TranslateController;->isTranslatingDialog(J)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, " "

    if-eqz v2, :cond_1

    .line 396
    iget-wide v8, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {v0, v8, v9}, Lorg/telegram/messenger/TranslateController;->getDialogDetectedLanguage(J)Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-static {v0}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 399
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v8, p0, Lorg/telegram/ui/Components/TranslateButton;->translateIcon:Landroid/text/SpannableString;

    sget v9, Lorg/telegram/messenger/R$string;->ShowOriginalButtonLanguage:I

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v0, v10, v6

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v8, v4, v6

    aput-object v7, v4, v5

    aput-object v0, v4, v3

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 401
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateButton;->translateIcon:Landroid/text/SpannableString;

    sget v8, Lorg/telegram/messenger/R$string;->ShowOriginalButton:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v2, v4, v6

    aput-object v7, v4, v5

    aput-object v8, v4, v3

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 404
    :cond_1
    iget-wide v8, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {v0, v8, v9}, Lorg/telegram/messenger/TranslateController;->getDialogTranslateTo(J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 406
    const-string v0, "en"

    .line 409
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateButton;->accusative:[Z

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v0

    .line 410
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateButton;->accusative:[Z

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_3

    .line 411
    sget v2, Lorg/telegram/messenger/R$string;->TranslateToButton:I

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v0, v8, v6

    invoke-static {v2, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 413
    :cond_3
    sget v2, Lorg/telegram/messenger/R$string;->TranslateToButtonOther:I

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v0, v8, v6

    invoke-static {v2, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 415
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v8, p0, Lorg/telegram/ui/Components/TranslateButton;->translateIcon:Landroid/text/SpannableString;

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v8, v4, v6

    aput-object v7, v4, v5

    aput-object v0, v4, v3

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    iget v2, p0, Lorg/telegram/ui/Components/TranslateButton;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v1, :cond_4

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->autotranslation:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_close:I

    goto :goto_3

    :cond_5
    :goto_2
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_mini_customize:I

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
