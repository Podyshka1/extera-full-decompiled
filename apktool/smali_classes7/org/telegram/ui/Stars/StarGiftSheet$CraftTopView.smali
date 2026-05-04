.class public Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarGiftSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CraftTopView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;,
        Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;,
        Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;,
        Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Face;,
        Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;,
        Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$RaysView;,
        Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$ButtonBackground;,
        Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$ProgressView;
    }
.end annotation


# instance fields
.field private final BACKGROUND_COLORS:[I

.field private final COLORS:[I

.field private final attributesLayoutLine1:Landroid/widget/LinearLayout;

.field private final attributesLayoutLine2:Landroid/widget/LinearLayout;

.field private attributesTwoLines:Z

.field private final backdropAttributes:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;

.field private final bg:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;

.field private brokenGiftImage:Lorg/telegram/ui/Components/RLottieImageView;

.field private final button:Landroid/widget/LinearLayout;

.field private final buttonBackground:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$ButtonBackground;

.field private final buttonSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

.field private final buttonTitle:Lorg/telegram/ui/Components/AnimatedTextView;

.field private final buttonsLayout:Landroid/widget/FrameLayout;

.field private final closeButton:Landroid/widget/ImageView;

.field private collectionTitle:Ljava/lang/String;

.field public crafted:Z

.field private craftedGift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

.field public crafting:Z

.field private final craftingChanceView:Landroid/widget/TextView;

.field private final craftingFooterView:Landroid/widget/TextView;

.field private final craftingIconView:Lorg/telegram/ui/Components/RLottieImageView;

.field private final craftingLayout:Landroid/widget/FrameLayout;

.field private final craftingSubtitleView:Landroid/widget/TextView;

.field private final craftingTitleView:Landroid/widget/TextView;

.field private final cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

.field private currentAccount:I

.field private currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private document:Lorg/telegram/tgnet/TLRPC$Document;

.field private final faces:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Face;

.field public failed:Z

.field private failedGifts:[Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

.field private final failedGiftsLayout:Landroid/widget/LinearLayout;

.field private final failedLayout:Landroid/widget/FrameLayout;

.field private final failedSubtitle:Landroid/widget/TextView;

.field private final failedTitle:Landroid/widget/TextView;

.field private final frontFace:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Face;

.field private giftId:J

.field private final gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

.field private final helpButton:Landroid/widget/ImageView;

.field private onAddGift:Lorg/telegram/messenger/Utilities$Callback2;

.field private onClose:Ljava/lang/Runnable;

.field private onCraft:Lorg/telegram/messenger/Utilities$Callback3;

.field private openCraftedGift:Ljava/lang/Runnable;

.field private final patternAttributes:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;

.field private plus:Ljava/lang/CharSequence;

.field private final precraftingLayout:Landroid/widget/FrameLayout;

.field private previewAttributes:Ljava/util/ArrayList;

.field private final rays:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$RaysView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final textView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

.field private final titleView:Landroid/widget/TextView;

.field private final variantsButton:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;


# direct methods
.method public static synthetic $r8$lambda$5VjoeEbEJVBxB1TZIzrnJJdBumY(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->lambda$setupGiftButtons$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5qykpmGoijbhtOeIYzfMbOZBi-8(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bk2ZpJXkLPEGpoB2-ou-3Iuh9bU(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;Lorg/telegram/tgnet/tl/TL_stars$StarGift;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->lambda$playAnimation$11(Lorg/telegram/tgnet/tl/TL_stars$StarGift;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H0BqICLanRnnzAXtoQOWyt3u110(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;ILorg/telegram/tgnet/tl/TL_stars$StarGift;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->lambda$playAnimation$9(ILorg/telegram/tgnet/tl/TL_stars$StarGift;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IXV1dQpCrJKFmKUPPIn6e4cn-jE(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;Lorg/telegram/tgnet/tl/TL_stars$StarGift;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->lambda$setupGiftButtons$7(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;Lorg/telegram/tgnet/tl/TL_stars$StarGift;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LVwHVicDpxX9QOXnsy2MviTyrCE(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->lambda$setupFinishFace$14(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NXv_X61M454pmHp8XJfOtbKG8zM(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q8tmmZyzZKvmQbh87p9-DGM4mdE(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_GqPQbO2vg534uxsWi5mGES1GhU(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->lambda$playAnimation$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$c6krd0u9cEt4--DImxWgcqVZ5bY(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lQ_PXlBxm-1JKLM8KeYYetfMcsc(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nkN5m9U87OYUa7JMygnaoFC4sgk()V
    .locals 1

    .line 9064
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    return-void
.end method

.method public static synthetic $r8$lambda$qJB-4OVFK0kZM0mYgsd7WUG46Z8(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;JJLjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->lambda$setup$6(JJLjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ryY3PhdHcaMAU5g4HGsk-rqkfuU(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;Ljava/util/ArrayList;Lorg/telegram/tgnet/tl/TL_stars$StarGift;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->lambda$playAnimation$12(Ljava/util/ArrayList;Lorg/telegram/tgnet/tl/TL_stars$StarGift;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ulZy-pPEfcoe55dI3mOjVy1V3tM(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->lambda$new$4(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetgifts(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;)[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethelpButton(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->helpButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 8520
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x6

    .line 8508
    new-array v4, v3, [I

    fill-array-data v4, :array_0

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->BACKGROUND_COLORS:[I

    const/4 v4, -0x1

    const v5, 0x3da3d70a    # 0.08f

    .line 8514
    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v6

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v7

    const v10, -0xce48b6

    const v11, -0xc07667

    const v8, -0x47dda

    const v9, -0x3bbcd3

    filled-new-array/range {v6 .. v11}, [I

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->COLORS:[I

    .line 8521
    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 8523
    new-instance v6, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;-><init>(I)V

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->bg:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;

    .line 8524
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->filled_forge:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 8525
    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v10, -0x1000000

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 8526
    invoke-virtual {v6, v8}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 8527
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8529
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->buttonsLayout:Landroid/widget/FrameLayout;

    const/16 v8, 0x3c

    const/16 v9, 0x37

    .line 8530
    invoke-static {v4, v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8532
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->helpButton:Landroid/widget/ImageView;

    .line 8533
    sget v9, Lorg/telegram/messenger/R$drawable;->outline_question_mark:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8534
    new-instance v9, Lorg/telegram/ui/Stars/StarGiftSheet$RoundRectStrokeDrawable;

    const/high16 v10, 0x41c00000    # 24.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v12

    invoke-direct {v9, v11, v12}, Lorg/telegram/ui/Stars/StarGiftSheet$RoundRectStrokeDrawable;-><init>(FI)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v18, 0x41600000    # 14.0f

    const/high16 v19, 0x41600000    # 14.0f

    const/16 v13, 0x20

    const/high16 v14, 0x42000000    # 32.0f

    const/16 v15, 0x33

    const/high16 v16, 0x41600000    # 14.0f

    const/high16 v17, 0x41600000    # 14.0f

    .line 8535
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8536
    new-instance v9, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda0;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8540
    invoke-static {v8}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 8542
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->closeButton:Landroid/widget/ImageView;

    .line 8543
    sget v9, Lorg/telegram/messenger/R$drawable;->msg_close:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8544
    new-instance v9, Lorg/telegram/ui/Stars/StarGiftSheet$RoundRectStrokeDrawable;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v11

    invoke-direct {v9, v10, v11}, Lorg/telegram/ui/Stars/StarGiftSheet$RoundRectStrokeDrawable;-><init>(FI)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v12, 0x20

    const/high16 v13, 0x42000000    # 32.0f

    const/16 v14, 0x35

    const/high16 v15, 0x41600000    # 14.0f

    .line 8545
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8546
    new-instance v6, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;)V

    invoke-virtual {v8, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8550
    invoke-static {v8}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 8552
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->titleView:Landroid/widget/TextView;

    .line 8553
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v8, 0x11

    .line 8554
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v9, 0x41a00000    # 20.0f

    .line 8555
    invoke-virtual {v6, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8556
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8557
    sget v10, Lorg/telegram/messenger/R$string;->GiftCraftTitle:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/high16 v12, -0x40000000    # -2.0f

    const/16 v13, 0x31

    const/4 v14, 0x0

    const/high16 v15, 0x41a00000    # 20.0f

    .line 8558
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8560
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->precraftingLayout:Landroid/widget/FrameLayout;

    const/16 v10, 0x77

    .line 8561
    invoke-static {v4, v4, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8563
    new-instance v11, Landroid/widget/FrameLayout;

    invoke-direct {v11, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->craftingLayout:Landroid/widget/FrameLayout;

    const/4 v12, 0x0

    .line 8564
    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    .line 8565
    invoke-static {v4, v4, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8567
    new-instance v11, Landroid/widget/FrameLayout;

    invoke-direct {v11, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failedLayout:Landroid/widget/FrameLayout;

    .line 8568
    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    .line 8569
    invoke-static {v4, v4, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8571
    new-instance v10, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-direct {v10, v1}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->textView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    .line 8572
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v11, 0x41500000    # 13.0f

    .line 8573
    invoke-virtual {v10, v7, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8574
    invoke-virtual {v10, v4}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setTextColor(I)V

    const/high16 v18, 0x42000000    # 32.0f

    const/high16 v19, 0x42a80000    # 84.0f

    const/4 v13, -0x1

    const/high16 v14, -0x40000000    # -2.0f

    const/16 v15, 0x31

    const/high16 v16, 0x42000000    # 32.0f

    const/high16 v17, 0x43740000    # 244.0f

    .line 8575
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v6, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8577
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->attributesLayoutLine1:Landroid/widget/LinearLayout;

    .line 8578
    new-instance v10, Landroid/animation/LayoutTransition;

    invoke-direct {v10}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 v13, 0x2

    const-wide/16 v14, 0x140

    .line 8579
    invoke-virtual {v10, v13, v14, v15}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    const/4 v11, 0x3

    .line 8580
    invoke-virtual {v10, v11, v14, v15}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    const/4 v9, 0x0

    .line 8581
    invoke-virtual {v10, v9, v14, v15}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 8582
    invoke-virtual {v10, v7, v14, v15}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    const/4 v5, 0x4

    .line 8583
    invoke-virtual {v10, v5, v14, v15}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 8584
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v10, v13, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 8585
    invoke-virtual {v10, v11, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 8586
    invoke-virtual {v10, v9, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 8587
    invoke-virtual {v10, v7, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 8588
    invoke-virtual {v10, v5, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 8589
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 8590
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8591
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 8593
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->attributesLayoutLine2:Landroid/widget/LinearLayout;

    .line 8594
    new-instance v10, Landroid/animation/LayoutTransition;

    invoke-direct {v10}, Landroid/animation/LayoutTransition;-><init>()V

    .line 8595
    invoke-virtual {v10, v13, v14, v15}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 8596
    invoke-virtual {v10, v11, v14, v15}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 8597
    invoke-virtual {v10, v9, v14, v15}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 8598
    invoke-virtual {v10, v7, v14, v15}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 8599
    invoke-virtual {v10, v5, v14, v15}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 8600
    invoke-virtual {v10, v13, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 8601
    invoke-virtual {v10, v11, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 8602
    invoke-virtual {v10, v9, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 8603
    invoke-virtual {v10, v7, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 8604
    invoke-virtual {v10, v5, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 8605
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 8606
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8607
    invoke-virtual {v6, v12}, Landroid/view/View;->setAlpha(F)V

    .line 8608
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 8610
    new-array v4, v5, [Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->backdropAttributes:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;

    .line 8611
    new-array v4, v5, [Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->patternAttributes:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;

    move v4, v9

    :goto_0
    if-ge v4, v5, :cond_0

    .line 8613
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->attributesLayoutLine1:Landroid/widget/LinearLayout;

    iget-object v10, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->backdropAttributes:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;

    new-instance v11, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;

    invoke-direct {v11, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;-><init>(Landroid/content/Context;)V

    aput-object v11, v10, v4

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v20, 0x30

    const/16 v21, 0x36

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v20 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8614
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->backdropAttributes:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;

    aget-object v6, v6, v4

    new-instance v10, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda2;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v9

    :goto_1
    if-ge v4, v5, :cond_1

    .line 8617
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->attributesLayoutLine1:Landroid/widget/LinearLayout;

    iget-object v10, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->patternAttributes:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;

    new-instance v11, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;

    invoke-direct {v11, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;-><init>(Landroid/content/Context;)V

    aput-object v11, v10, v4

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v20, 0x30

    const/16 v21, 0x36

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v20 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8618
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->patternAttributes:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;

    aget-object v6, v6, v4

    new-instance v10, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda3;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 8621
    :cond_1
    new-array v4, v5, [Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    .line 8623
    new-array v4, v3, [Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Face;

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->faces:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Face;

    move v4, v9

    :goto_2
    const/4 v5, 0x5

    if-ge v4, v3, :cond_3

    .line 8625
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->faces:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Face;

    new-instance v10, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Face;

    if-ne v4, v5, :cond_2

    move v5, v7

    goto :goto_3

    :cond_2
    move v5, v9

    :goto_3
    invoke-direct {v10, v1, v5}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Face;-><init>(Landroid/content/Context;Z)V

    aput-object v10, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 8627
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->faces:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Face;

    aget-object v3, v3, v5

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->frontFace:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Face;

    .line 8629
    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$RaysView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$RaysView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->rays:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$RaysView;

    const/16 v4, 0x8

    .line 8630
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 8631
    invoke-virtual {v3, v12}, Landroid/view/View;->setAlpha(F)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v20, 0x12c

    const/high16 v21, 0x43960000    # 300.0f

    const/16 v22, 0x31

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 8632
    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8634
    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->faces:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Face;

    invoke-direct {v3, v1, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;-><init>(Landroid/content/Context;[Landroid/view/View;)V

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    const/16 v20, -0x1

    const/16 v22, 0x37

    .line 8635
    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8637
    new-instance v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->variantsButton:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    const/high16 v4, 0x41400000    # 12.0f

    .line 8638
    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8639
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8640
    sget v5, Lorg/telegram/messenger/R$string;->GiftCraftViewAllVariants:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v5, v9, v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41100000    # 9.0f

    .line 8641
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v3, v10, v9, v11, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 8642
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v10, -0x1

    .line 8643
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8644
    iget-object v11, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->previewAttributes:Ljava/util/ArrayList;

    if-eqz v11, :cond_4

    goto :goto_4

    :cond_4
    const/high16 v6, 0x3e800000    # 0.25f

    :goto_4
    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    .line 8645
    new-instance v6, Lorg/telegram/ui/Stars/StarGiftSheet$RoundRectStrokeDrawable;

    const/high16 v11, 0x41600000    # 14.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3da3d70a    # 0.08f

    invoke-static {v10, v12}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v13

    invoke-direct {v6, v11, v13}, Lorg/telegram/ui/Stars/StarGiftSheet$RoundRectStrokeDrawable;-><init>(FI)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v6, 0x3f99999a    # 1.2f

    const v10, 0x3ca3d70a    # 0.02f

    .line 8646
    invoke-static {v3, v10, v6}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 8647
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->precraftingLayout:Landroid/widget/FrameLayout;

    const/high16 v25, 0x42000000    # 32.0f

    const/high16 v26, 0x42a80000    # 84.0f

    const/16 v20, -0x2

    const/high16 v21, 0x41d80000    # 27.0f

    const/16 v22, 0x31

    const/high16 v23, 0x42000000    # 32.0f

    const/high16 v24, 0x43ce0000    # 412.0f

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8648
    new-instance v6, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda4;

    invoke-direct {v6, v0, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8654
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->precraftingLayout:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->attributesLayoutLine1:Landroid/widget/LinearLayout;

    const/high16 v21, 0x42580000    # 54.0f

    const/high16 v24, 0x43aa0000    # 340.0f

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8655
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->precraftingLayout:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->attributesLayoutLine2:Landroid/widget/LinearLayout;

    const/high16 v24, 0x43c50000    # 394.0f

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8657
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->button:Landroid/widget/LinearLayout;

    .line 8658
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8659
    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$ButtonBackground;

    invoke-direct {v3}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$ButtonBackground;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->buttonBackground:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$ButtonBackground;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v10, -0x1

    const v12, 0x3da3d70a    # 0.08f

    .line 8660
    invoke-static {v10, v12}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v6

    invoke-static {v10, v12}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v11

    invoke-virtual {v3, v6, v11}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$ButtonBackground;->setColor(II)V

    const v3, 0x3f99999a    # 1.2f

    const v6, 0x3ca3d70a    # 0.02f

    .line 8661
    invoke-static {v2, v6, v3}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    const/high16 v25, 0x41a00000    # 20.0f

    const/high16 v26, 0x41900000    # 18.0f

    const/16 v20, -0x1

    const/high16 v21, -0x40000000    # -2.0f

    const/16 v22, 0x57

    const/high16 v23, 0x41a00000    # 20.0f

    const/16 v24, 0x0

    .line 8662
    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8663
    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8683
    new-instance v3, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->buttonTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    .line 8684
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8685
    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v10, -0x1

    .line 8686
    invoke-static {v10, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 8687
    sget v6, Lorg/telegram/messenger/R$string;->GiftCraftButton:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41600000    # 14.0f

    .line 8688
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    const/high16 v25, 0x41800000    # 16.0f

    const/16 v26, 0x0

    const/16 v21, 0x12

    const/16 v22, 0x37

    const/high16 v23, 0x41800000    # 16.0f

    const v24, 0x40ea8f5c    # 7.33f

    .line 8689
    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8691
    new-instance v3, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->buttonSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    .line 8692
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v6

    invoke-virtual {v6, v7, v7, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setHacks(ZZZ)V

    .line 8693
    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v10, -0x1

    .line 8694
    invoke-static {v10, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 8695
    sget v6, Lorg/telegram/messenger/R$string;->GiftCraftSuccessChance:I

    new-array v10, v7, [Ljava/lang/Object;

    const-string v11, "0%"

    aput-object v11, v10, v9

    invoke-static {v6, v10}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 8696
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    const v26, 0x40f51eb8    # 7.66f

    const/16 v21, 0xe

    const v24, 0x402a3d71    # 2.66f

    .line 8697
    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8699
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 8700
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8701
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 8703
    new-instance v3, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->craftingIconView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 8704
    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 8705
    sget v4, Lorg/telegram/messenger/R$raw;->gift_crafting:I

    const/16 v6, 0x1e

    invoke-virtual {v3, v4, v6, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const/16 v25, 0x4

    const/16 v26, 0x0

    const/16 v20, 0x1e

    const/16 v21, 0x1e

    const/16 v22, 0x11

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 8706
    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8708
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->craftingTitleView:Landroid/widget/TextView;

    const/high16 v4, 0x41a00000    # 20.0f

    .line 8709
    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v10, -0x1

    .line 8710
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8711
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8712
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 8713
    sget v4, Lorg/telegram/messenger/R$string;->GiftCraftProgressTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v25, 0x0

    const/16 v20, -0x2

    const/16 v21, -0x2

    .line 8714
    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8715
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->craftingLayout:Landroid/widget/FrameLayout;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v20, -0x1

    const/high16 v21, -0x40000000    # -2.0f

    const/16 v22, 0x31

    const/16 v23, 0x0

    const/high16 v24, 0x43af0000    # 350.0f

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8717
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->craftingSubtitleView:Landroid/widget/TextView;

    const/high16 v3, 0x41500000    # 13.0f

    .line 8718
    invoke-virtual {v2, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v10, -0x1

    .line 8719
    invoke-static {v10, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8720
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8721
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 8722
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->craftingLayout:Landroid/widget/FrameLayout;

    const v24, 0x43bf8000    # 383.0f

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8724
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->craftingChanceView:Landroid/widget/TextView;

    const/high16 v3, 0x41500000    # 13.0f

    .line 8725
    invoke-virtual {v2, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v10, -0x1

    .line 8726
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8727
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8728
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 8729
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v3, v9, v4, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 8730
    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$RoundRectStrokeDrawable;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const v12, 0x3da3d70a    # 0.08f

    invoke-static {v10, v12}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/telegram/ui/Stars/StarGiftSheet$RoundRectStrokeDrawable;-><init>(FI)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8731
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->craftingLayout:Landroid/widget/FrameLayout;

    const/high16 v26, 0x42940000    # 74.0f

    const/16 v20, -0x2

    const/high16 v21, 0x41d80000    # 27.0f

    const/16 v22, 0x51

    const/16 v24, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8733
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->craftingFooterView:Landroid/widget/TextView;

    const/high16 v3, 0x41500000    # 13.0f

    .line 8734
    invoke-virtual {v2, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v10, -0x1

    .line 8735
    invoke-static {v10, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8736
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 8737
    sget v3, Lorg/telegram/messenger/R$string;->GiftCraftProgressText:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8738
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->craftingLayout:Landroid/widget/FrameLayout;

    const/high16 v23, 0x42280000    # 42.0f

    const/high16 v24, 0x41c00000    # 24.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40000000    # -2.0f

    const/16 v20, 0x51

    const/high16 v21, 0x42280000    # 42.0f

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8740
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failedTitle:Landroid/widget/TextView;

    .line 8741
    sget v3, Lorg/telegram/messenger/R$string;->GiftCraftFailedTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, -0x7b5b6

    .line 8742
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41a00000    # 20.0f

    .line 8743
    invoke-virtual {v2, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8744
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8745
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 8746
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failedLayout:Landroid/widget/FrameLayout;

    const/high16 v22, 0x42000000    # 32.0f

    const/16 v23, 0x0

    const/16 v17, -0x1

    const/high16 v18, -0x40000000    # -2.0f

    const/16 v19, 0x37

    const/high16 v20, 0x42000000    # 32.0f

    const/high16 v21, 0x43b00000    # 352.0f

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8748
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failedSubtitle:Landroid/widget/TextView;

    const/16 v3, -0x4365

    .line 8749
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41500000    # 13.0f

    .line 8750
    invoke-virtual {v2, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8751
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 8752
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failedLayout:Landroid/widget/FrameLayout;

    const/high16 v15, 0x42000000    # 32.0f

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/high16 v11, -0x40000000    # -2.0f

    const/16 v12, 0x37

    const/high16 v13, 0x42000000    # 32.0f

    const v14, 0x43bf8000    # 383.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8754
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failedGiftsLayout:Landroid/widget/LinearLayout;

    .line 8755
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8756
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failedLayout:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, -0x2

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x31

    const/4 v6, 0x0

    const/high16 v7, 0x437a0000    # 250.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 8758
    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failedGifts:[Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    .line 8760
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->updateCounts()V

    return-void

    nop

    :array_0
    .array-data 4
        -0xe2c3b1
        -0xf0e6d4
        -0xacd8f6
        -0xe0f4f5
        -0xddaca1
        -0xf2eedd
    .end array-data
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 8537
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->buttonsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    return-void

    .line 8538
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->onClose:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    .line 8547
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->buttonsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    return-void

    .line 8548
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->onClose:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 8614
    check-cast p1, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->showHint(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;)V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    .line 8618
    check-cast p1, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->showHint(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;)V

    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 7

    .line 8649
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->variantsButton:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p2, p2, v0

    if-ltz p2, :cond_1

    iget-boolean p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->crafting:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failed:Z

    if-eqz p2, :cond_0

    goto :goto_0

    .line 8650
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->previewAttributes:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 8651
    new-instance v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->currentAccount:I

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->collectionTitle:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->previewAttributes:Ljava/util/ArrayList;

    const/4 v6, 0x1

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILjava/lang/String;Ljava/util/ArrayList;Z)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 3

    .line 8664
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    .line 8665
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->crafting:Z

    if-eqz p1, :cond_1

    :goto_0
    return-void

    .line 8666
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failed:Z

    if-eqz p1, :cond_2

    .line 8667
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->setup()V

    return-void

    .line 8670
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 8671
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 8672
    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8673
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8676
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->onCraft:Lorg/telegram/messenger/Utilities$Callback3;

    if-nez p1, :cond_5

    goto :goto_2

    .line 8680
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->playAnimation()V

    return-void

    .line 8677
    :cond_6
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->button:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$playAnimation$11(Lorg/telegram/tgnet/tl/TL_stars$StarGift;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 12

    const/4 v0, 0x0

    .line 9059
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->crafting:Z

    if-nez p1, :cond_6

    .line 9061
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->brokenGiftImage:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p1, :cond_0

    .line 9062
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 9063
    new-instance p1, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda14;

    invoke-direct {p1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda14;-><init>()V

    const-wide/16 v1, 0x2ee

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 9067
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->precraftingLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 9068
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failedLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 9069
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->button:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 9070
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->craftingLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 9071
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->buttonsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 9073
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failedSubtitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "GiftCraftFailedText"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9075
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->buttonTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->GiftCraftButtonFailed:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 9076
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->buttonTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 9077
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->buttonSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 9079
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failedGifts:[Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    if-eqz p1, :cond_2

    move p1, v0

    .line 9080
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failedGifts:[Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    array-length v1, p3

    if-ge p1, v1, :cond_1

    .line 9081
    aget-object p3, p3, p1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 9083
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failedGifts:[Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    .line 9086
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failedGifts:[Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    move p1, v0

    .line 9087
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_5

    .line 9088
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 9089
    new-instance v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->currentAccount:I

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, p3, v3, v4}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 9091
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setStarsGift(Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZZZZ)Z

    .line 9092
    iget-object p3, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->chanceTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    const p3, -0x2ec5c6

    .line 9093
    invoke-virtual {v1, p3}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setRibbonColor(I)V

    .line 9094
    iget-object p3, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v2, 0x11

    const/16 v3, 0x2a

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 p3, p1, 0x1

    .line 9096
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p3, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    move v2, v0

    .line 9097
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failedGiftsLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failedGifts:[Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    aput-object v1, v4, p1

    if-eqz v2, :cond_4

    move v10, v0

    goto :goto_3

    :cond_4
    const/4 p1, 0x6

    move v10, p1

    :goto_3
    const/4 v11, 0x0

    const/16 v4, 0x4a

    const/16 v5, 0x4a

    const/4 v6, 0x0

    const/16 v7, 0x33

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v3, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move p1, p3

    goto :goto_1

    :cond_5
    return-void

    .line 9100
    :cond_6
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$playAnimation$12(Ljava/util/ArrayList;Lorg/telegram/tgnet/tl/TL_stars$StarGift;Ljava/lang/Runnable;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 8988
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v3, :cond_0

    .line 8989
    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    const/4 v3, 0x0

    .line 8990
    iput-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_0
    const/4 v3, 0x1

    .line 8992
    iput-boolean v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->crafted:Z

    const/4 v4, 0x0

    if-nez v1, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    .line 8993
    :goto_0
    iput-boolean v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failed:Z

    .line 8994
    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->craftedGift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 8995
    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->openCraftedGift:Ljava/lang/Runnable;

    .line 8997
    new-instance v5, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;)V

    .line 8998
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v4

    .line 8999
    :goto_1
    iget-object v8, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    array-length v9, v8

    if-ge v7, v9, :cond_3

    .line 9000
    aget-object v8, v8, v7

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 9001
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 9005
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x5

    const/16 v10, 0x28

    const/16 v11, 0x20

    if-ne v7, v3, :cond_4

    .line 9006
    iget-object v7, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    .line 9007
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v6, v7, v6

    invoke-virtual {v5, v6, v9, v11}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->put(Landroid/view/View;II)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    move-result-object v6

    .line 9008
    invoke-virtual {v6, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->friction(Z)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    move-result-object v4

    const/high16 v6, 0x41d00000    # 26.0f

    const/high16 v7, -0x3e300000    # -26.0f

    .line 9009
    invoke-virtual {v4, v6, v7}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->fling(FF)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    move-result-object v4

    const/16 v6, 0x5a

    .line 9010
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->delay(I)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    move-result-object v4

    .line 9011
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->friction(Z)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    move-result-object v3

    const/16 v4, 0x14

    .line 9012
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->delay(I)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    goto/16 :goto_3

    :cond_4
    const/4 v6, 0x2

    const/4 v7, 0x3

    .line 9017
    filled-new-array {v9, v4, v6, v7, v8}, [I

    move-result-object v8

    .line 9024
    iget-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v9, v9, v4

    const/high16 v12, 0x41c80000    # 25.0f

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 9025
    iget-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v9, v9, v4

    aget v13, v8, v4

    .line 9026
    invoke-virtual {v5, v9, v13, v11}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->put(Landroid/view/View;II)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    move-result-object v9

    const/high16 v13, -0x3e500000    # -22.0f

    .line 9027
    invoke-virtual {v9, v12, v13}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->fling(FF)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    move v9, v3

    goto :goto_2

    :cond_5
    move v9, v4

    .line 9029
    :goto_2
    iget-object v13, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v13, v13, v3

    const/high16 v14, 0x41f80000    # 31.0f

    const/16 v15, 0x2a

    if-eqz v13, :cond_7

    invoke-virtual {v13}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v13

    if-eqz v13, :cond_7

    if-lez v9, :cond_6

    .line 9030
    invoke-virtual {v5, v15}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->delay(I)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    .line 9031
    :cond_6
    iget-object v13, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v13, v13, v3

    add-int/lit8 v16, v9, 0x1

    aget v9, v8, v9

    .line 9032
    invoke-virtual {v5, v13, v9, v11}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->put(Landroid/view/View;II)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    move-result-object v9

    .line 9033
    invoke-virtual {v9, v12, v14}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->fling(FF)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    move/from16 v9, v16

    .line 9035
    :cond_7
    iget-object v12, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v12, v12, v6

    if-eqz v12, :cond_9

    invoke-virtual {v12}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v12

    if-eqz v12, :cond_9

    if-lez v9, :cond_8

    .line 9036
    invoke-virtual {v5, v15}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->delay(I)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    .line 9037
    :cond_8
    iget-object v12, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v6, v12, v6

    add-int/lit8 v12, v9, 0x1

    aget v9, v8, v9

    const/high16 v13, 0x43340000    # 180.0f

    .line 9038
    invoke-virtual {v5, v6, v9, v11, v13}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->put(Landroid/view/View;IIF)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    move-result-object v6

    const/high16 v9, -0x3df00000    # -36.0f

    .line 9039
    invoke-virtual {v6, v9, v9}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->fling(FF)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    move v9, v12

    .line 9041
    :cond_9
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v6, v6, v7

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v6

    if-eqz v6, :cond_b

    if-lez v9, :cond_a

    .line 9042
    invoke-virtual {v5, v15}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->delay(I)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    .line 9043
    :cond_a
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v6, v6, v7

    add-int/lit8 v7, v9, 0x1

    aget v9, v8, v9

    .line 9044
    invoke-virtual {v5, v6, v9, v11}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->put(Landroid/view/View;II)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    move-result-object v6

    const/high16 v9, -0x3e080000    # -31.0f

    .line 9045
    invoke-virtual {v6, v9, v14}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->fling(FF)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    move v9, v7

    .line 9047
    :cond_b
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->friction(Z)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    .line 9048
    invoke-virtual {v5, v10}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->delay(I)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    .line 9049
    invoke-virtual {v5, v3}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->friction(Z)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    .line 9050
    invoke-virtual {v5, v10}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->delay(I)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    .line 9052
    aget v8, v8, v9

    const/16 v10, 0x50

    .line 9055
    :goto_3
    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda11;

    invoke-direct {v3, v0, v8, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;ILorg/telegram/tgnet/tl/TL_stars$StarGift;)V

    .line 9056
    invoke-virtual {v5, v3}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->run(Ljava/lang/Runnable;)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    move-result-object v3

    const/16 v4, -0x5a

    int-to-float v4, v4

    .line 9057
    invoke-virtual {v3, v8, v10, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->steerTo(IIF)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda12;

    move-object/from16 v5, p1

    invoke-direct {v4, v0, v1, v5, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;Lorg/telegram/tgnet/tl/TL_stars$StarGift;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    .line 9058
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->start(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$playAnimation$13()V
    .locals 2

    const/4 v0, 0x0

    .line 9104
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->crafting:Z

    const/4 v1, 0x0

    .line 9105
    iput-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->openCraftedGift:Ljava/lang/Runnable;

    .line 9106
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failed:Z

    .line 9108
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->setup()V

    return-void
.end method

.method private synthetic lambda$playAnimation$9(ILorg/telegram/tgnet/tl/TL_stars$StarGift;)V
    .locals 0

    .line 9056
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->setupFinishFace(ILorg/telegram/tgnet/tl/TL_stars$StarGift;)V

    return-void
.end method

.method private synthetic lambda$setup$6(JJLjava/util/ArrayList;)V
    .locals 6

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    return-void

    .line 8845
    :cond_0
    iput-object p5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->previewAttributes:Ljava/util/ArrayList;

    .line 8846
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->variantsButton:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 8847
    iget-boolean p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->attributesTwoLines:Z

    const/high16 p3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->previewAttributes:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    move p2, p3

    goto :goto_0

    :cond_2
    const/high16 p2, 0x3e800000    # 0.25f

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 8848
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1a4

    .line 8849
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 8850
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 8852
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    move p4, p2

    .line 8853
    :goto_1
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p4, v0, :cond_4

    .line 8854
    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    if-eqz v0, :cond_3

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->rarity:Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttributeRarity;

    instance-of v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAttributeRarity;

    if-nez v0, :cond_3

    .line 8855
    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8856
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 8859
    :cond_4
    :goto_2
    new-instance p4, Landroid/text/SpannableStringBuilder;

    invoke-direct {p4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 8860
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p5

    move v0, p2

    :goto_3
    const-string v1, " "

    if-ge v0, p5, :cond_5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    .line 8861
    const-string v3, "x"

    invoke-virtual {p4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 8862
    new-instance v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->variantsButton:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {p4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {p4, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 8863
    invoke-virtual {p4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 8865
    :cond_5
    invoke-virtual {p4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_6

    .line 8866
    invoke-virtual {p4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 8868
    :cond_6
    sget p1, Lorg/telegram/messenger/R$string;->GiftCraftViewAllVariants:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    int-to-float p5, p5

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p1, p2, p5, p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 8869
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->variantsButton:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$setupFinishFace$14(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 9125
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setupGiftButtons$7(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;Lorg/telegram/tgnet/tl/TL_stars$StarGift;)V
    .locals 1

    const/4 v0, 0x1

    .line 8896
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->setGift(Lorg/telegram/tgnet/tl/TL_stars$StarGift;Z)V

    .line 8897
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->updateCounts()V

    return-void
.end method

.method private synthetic lambda$setupGiftButtons$8(Landroid/view/View;)V
    .locals 6

    .line 8882
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    .line 8883
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->isReplaceIcon:Z

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 8884
    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->setGift(Lorg/telegram/tgnet/tl/TL_stars$StarGift;Z)V

    .line 8885
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->updateCounts()V

    return-void

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    .line 8888
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 8889
    aget-object v4, v4, v3

    if-ne v4, p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    .line 8890
    invoke-virtual {v4}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v4

    if-eqz v4, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8895
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->onAddGift:Lorg/telegram/messenger/Utilities$Callback2;

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;)V

    .line 8898
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 8895
    invoke-interface {p1, v1, v0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private removeFromParent(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_0

    .line 9235
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 9236
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 9237
    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    .line 9239
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x3

    if-eqz v2, :cond_3

    .line 9242
    invoke-virtual {v1, v3}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 9243
    :cond_3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz v2, :cond_4

    .line 9244
    invoke-virtual {v1, v3}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 9246
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 9247
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    .line 9248
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 9249
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 9250
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    .line 9251
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 9252
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 9253
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 9254
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 9255
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 9256
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    return-void
.end method

.method private setupFinishFace(ILorg/telegram/tgnet/tl/TL_stars$StarGift;)V
    .locals 8

    const/16 v0, 0x8

    const/high16 v1, 0x43340000    # 180.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 9115
    new-instance v5, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;Landroid/content/Context;)V

    const/4 v6, 0x0

    .line 9116
    invoke-virtual {v5, p2, v6}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->setGift(Lorg/telegram/tgnet/tl/TL_stars$StarGift;Z)V

    .line 9117
    invoke-virtual {v5, v1}, Landroid/view/View;->setRotation(F)V

    .line 9118
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    invoke-virtual {p2, p1, v5}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->putView(ILandroid/view/View;)I

    .line 9120
    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    .line 9121
    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 9122
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 9123
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v4, 0x208

    invoke-virtual {p2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 9124
    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;)V

    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 9127
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 9129
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->-$$Nest$fgetfaces(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;)[Landroid/view/View;

    move-result-object p2

    aget-object p1, p2, p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9131
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->rays:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$RaysView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 9132
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->rays:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$RaysView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 9133
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->rays:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$RaysView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x334

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 9135
    :cond_0
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p2, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 9137
    new-instance v5, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    .line 9138
    sget v6, Lorg/telegram/messenger/R$raw;->gift_broken:I

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const/16 v6, 0x11

    .line 9139
    invoke-static {v7, v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9140
    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    .line 9141
    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 9142
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 9143
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 9144
    iput-object v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->brokenGiftImage:Lorg/telegram/ui/Components/RLottieImageView;

    .line 9146
    new-instance v2, Lorg/telegram/ui/Stars/StarGiftSheet$RoundRectStrokeDrawable;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, -0x1

    const v5, 0x3d99999a    # 0.075f

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$RoundRectStrokeDrawable;-><init>(FI)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9147
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->-$$Nest$fgetfaces(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;)[Landroid/view/View;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9148
    invoke-virtual {p2, v1}, Landroid/view/View;->setRotation(F)V

    .line 9149
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->putView(ILandroid/view/View;)I

    .line 9153
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->buttonBackground:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$ButtonBackground;

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->COLORS:[I

    const/4 v0, 0x2

    aget v1, p2, v0

    const/4 v2, 0x3

    aget p2, p2, v2

    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$ButtonBackground;->setColor(II)V

    .line 9154
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->bg:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->BACKGROUND_COLORS:[I

    aget v1, p2, v0

    aget p2, p2, v2

    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->setColors(II)V

    .line 9155
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->rays:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$RaysView;

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->COLORS:[I

    aget v1, p2, v2

    aget p2, p2, v0

    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$RaysView;->setColor(II)V

    return-void
.end method

.method private setupGiftButtons()V
    .locals 12

    .line 8874
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;Landroid/content/Context;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v3, 0x4c

    const/high16 v4, 0x42980000    # 76.0f

    const/16 v5, 0x31

    const/high16 v6, -0x3d160000    # -117.0f

    const/high16 v7, 0x42940000    # 74.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8875
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;Landroid/content/Context;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v10, 0x0

    const/16 v4, 0x4c

    const/high16 v5, 0x42980000    # 76.0f

    const/16 v6, 0x31

    const/high16 v7, -0x3d160000    # -117.0f

    const/high16 v8, 0x43150000    # 149.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8876
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;Landroid/content/Context;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v11, 0x0

    const/16 v5, 0x4c

    const/high16 v6, 0x42980000    # 76.0f

    const/16 v7, 0x31

    const/high16 v8, 0x42ea0000    # 117.0f

    const/high16 v9, 0x42940000    # 74.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8877
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;Landroid/content/Context;)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const/high16 v9, 0x43150000    # 149.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8878
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 8879
    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 8880
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 8881
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v0, v0, v2

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateAttributeFreq()V
    .locals 20

    move-object/from16 v0, p0

    .line 9260
    iget v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->stargiftsCraftAttributesPermilles:[[I

    .line 9261
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 9262
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 9263
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 9271
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move v7, v5

    move v8, v7

    .line 9265
    :goto_0
    iget-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    array-length v10, v9

    const-class v11, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    const-class v12, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    const/4 v13, 0x1

    if-ge v7, v10, :cond_1

    .line 9266
    aget-object v9, v9, v7

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v9

    if-eqz v9, :cond_0

    add-int/lit8 v8, v8, 0x1

    .line 9268
    iget-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v9

    .line 9269
    iget-object v10, v9, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    invoke-static {v10, v12}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    .line 9270
    iget-object v9, v9, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    invoke-static {v9, v11}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    .line 9271
    iget v11, v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v9, v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2, v9, v6}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9272
    iget-object v9, v10, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v11, v9, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v10, v10, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v3, v10, v6}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 9275
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    const/16 v9, 0x8

    const/4 v10, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-eqz v6, :cond_3

    .line 9277
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->backdropAttributes:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;

    aget-object v2, v2, v5

    .line 9278
    invoke-virtual {v2, v15}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 9279
    invoke-virtual {v2, v14, v13}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->setProgress(FZ)V

    .line 9280
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v13

    :goto_1
    if-ge v2, v10, :cond_2

    .line 9282
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->backdropAttributes:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;

    aget-object v6, v6, v2

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/high16 v17, 0x447a0000    # 1000.0f

    goto/16 :goto_6

    .line 9286
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9287
    invoke-static {}, Lj$/util/Map$Entry$-CC;->comparingByValue()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 9288
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v7, v5

    move/from16 v16, v7

    const/high16 v17, 0x447a0000    # 1000.0f

    :goto_2
    if-ge v7, v2, :cond_7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    add-int/lit8 v7, v7, 0x1

    check-cast v18, Ljava/util/Map$Entry;

    .line 9289
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 9290
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move v15, v5

    .line 9292
    :goto_3
    iget-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    array-length v10, v9

    if-ge v15, v10, :cond_5

    .line 9293
    aget-object v9, v9, v15

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 9294
    iget-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v9, v9, v15

    invoke-virtual {v9}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v9

    .line 9295
    iget-object v9, v9, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    invoke-static {v9, v11}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    .line 9296
    iget v10, v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    if-ne v10, v14, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x4

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_6

    .line 9303
    iget-object v10, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->backdropAttributes:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;

    add-int/lit8 v14, v16, 0x1

    aget-object v10, v10, v16

    .line 9304
    invoke-virtual {v10, v9}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    add-int/lit8 v9, v8, -0x1

    .line 9305
    array-length v15, v1

    sub-int/2addr v15, v13

    invoke-static {v9, v15, v5}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v9

    aget-object v9, v1, v9

    add-int/lit8 v15, v18, -0x1

    move/from16 v18, v13

    .line 9306
    array-length v13, v9

    add-int/lit8 v13, v13, -0x1

    invoke-static {v15, v13, v5}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v13

    aget v9, v9, v13

    int-to-float v9, v9

    div-float v9, v9, v17

    move/from16 v13, v18

    .line 9307
    invoke-virtual {v10, v9, v13}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->setProgress(FZ)V

    .line 9308
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v16, v14

    :cond_6
    const/16 v9, 0x8

    const/4 v10, 0x4

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto :goto_2

    :cond_7
    move v6, v10

    move/from16 v2, v16

    :goto_5
    if-ge v2, v6, :cond_8

    .line 9312
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->backdropAttributes:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;

    aget-object v6, v6, v2

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x4

    goto :goto_5

    .line 9315
    :cond_8
    :goto_6
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 9317
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->patternAttributes:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;

    aget-object v1, v1, v5

    const/4 v2, 0x0

    .line 9318
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->setIcon(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)V

    const/4 v6, 0x0

    const/4 v13, 0x1

    .line 9319
    invoke-virtual {v1, v6, v13}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->setProgress(FZ)V

    .line 9320
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    :goto_7
    const/4 v1, 0x4

    if-ge v13, v1, :cond_9

    .line 9322
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->patternAttributes:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;

    aget-object v1, v1, v13

    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_9
    const/4 v13, 0x1

    goto/16 :goto_d

    :cond_a
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 9326
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9327
    invoke-static {}, Lj$/util/Map$Entry$-CC;->comparingByValue()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v7, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 9328
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v9, v5

    move v10, v9

    :goto_8
    if-ge v10, v3, :cond_e

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Ljava/util/Map$Entry;

    .line 9329
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 9330
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move v15, v5

    .line 9332
    :goto_9
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    array-length v6, v2

    if-ge v15, v6, :cond_c

    .line 9333
    aget-object v2, v2, v15

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 9334
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v2

    .line 9335
    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    invoke-static {v2, v12}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    if-eqz v2, :cond_b

    .line 9336
    iget-object v6, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v5, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v5, v5, v13

    if-nez v5, :cond_b

    goto :goto_a

    :cond_b
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_9

    :cond_c
    const/4 v2, 0x0

    :goto_a
    if-eqz v2, :cond_d

    .line 9343
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->patternAttributes:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;

    add-int/lit8 v6, v9, 0x1

    aget-object v5, v5, v9

    .line 9344
    invoke-virtual {v5, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->setIcon(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)V

    const/4 v13, 0x1

    add-int/lit8 v2, v8, -0x1

    .line 9345
    array-length v9, v1

    sub-int/2addr v9, v13

    const/4 v14, 0x0

    invoke-static {v2, v9, v14}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v2

    aget-object v2, v1, v2

    sub-int/2addr v11, v13

    .line 9346
    array-length v9, v2

    sub-int/2addr v9, v13

    invoke-static {v11, v9, v14}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v9

    aget v2, v2, v9

    int-to-float v2, v2

    div-float v2, v2, v17

    .line 9347
    invoke-virtual {v5, v2, v13}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->setProgress(FZ)V

    .line 9348
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v6

    goto :goto_b

    :cond_d
    const/4 v13, 0x1

    :goto_b
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_8

    :cond_e
    const/4 v13, 0x1

    const/4 v1, 0x4

    :goto_c
    if-ge v9, v1, :cond_f

    .line 9352
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->patternAttributes:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;

    aget-object v2, v2, v9

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 9355
    :cond_f
    :goto_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_10

    goto :goto_e

    :cond_10
    const/4 v13, 0x0

    :goto_e
    iput-boolean v13, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->attributesTwoLines:Z

    const/4 v14, 0x0

    .line 9356
    :goto_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_13

    .line 9357
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;

    .line 9358
    iget-boolean v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->attributesTwoLines:Z

    if-eqz v2, :cond_11

    int-to-float v2, v14

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_11

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->attributesLayoutLine2:Landroid/widget/LinearLayout;

    goto :goto_10

    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->attributesLayoutLine1:Landroid/widget/LinearLayout;

    .line 9359
    :goto_10
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, v2, :cond_12

    .line 9360
    invoke-direct {v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->removeFromParent(Landroid/view/View;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v5, 0x30

    const/16 v6, 0x36

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 9361
    invoke-static/range {v5 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_12
    const/4 v2, 0x0

    .line 9363
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_f

    .line 9365
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->attributesLayoutLine2:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-boolean v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->attributesTwoLines:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_14

    move v2, v3

    goto :goto_11

    :cond_14
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 9366
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->variantsButton:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-boolean v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->attributesTwoLines:Z

    if-eqz v2, :cond_15

    const/4 v14, 0x0

    goto :goto_12

    :cond_15
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->previewAttributes:Ljava/util/ArrayList;

    if-eqz v2, :cond_16

    move v14, v3

    goto :goto_12

    :cond_16
    const/high16 v14, 0x3e800000    # 0.25f

    :goto_12
    invoke-virtual {v1, v14}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private updateGiftButtonIcons()V
    .locals 6

    .line 8905
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    if-nez v0, :cond_0

    goto :goto_5

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    .line 8908
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    array-length v5, v4

    if-ge v2, v5, :cond_6

    .line 8909
    aget-object v4, v4, v2

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    .line 8912
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 8913
    aget-object v4, v4, v3

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 8914
    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v3

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 8918
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v4, v4, v2

    if-eqz v3, :cond_3

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->gift_address:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_3
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->setReplaceIcon(Z)V

    goto :goto_4

    .line 8920
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->setReplaceIcon(Z)V

    :goto_4
    move v3, v0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_5
    return-void
.end method


# virtual methods
.method public getFirstGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;
    .locals 3

    const/4 v0, 0x0

    .line 9390
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 9391
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9392
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGiftsSelectedCount()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 9371
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 9372
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getGiftsSuccessChance()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 9381
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 9382
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9383
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v2

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->craft_chance_permille:I

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 10669
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 10668
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public playAnimation()V
    .locals 7

    const/4 v0, 0x1

    .line 8949
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->crafting:Z

    const/4 v1, 0x0

    .line 8950
    iput-boolean v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failed:Z

    const/4 v2, 0x0

    .line 8951
    iput-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->openCraftedGift:Ljava/lang/Runnable;

    .line 8952
    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v3, :cond_0

    .line 8953
    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 8954
    iput-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 8957
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->craftingSubtitleView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8958
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->craftingChanceView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->GiftCraftProgressSuccessChance:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->getGiftsSuccessChance()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v1

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 8959
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v0, v3, :cond_2

    .line 8960
    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 8961
    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    .line 8962
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v2

    if-nez v2, :cond_1

    .line 8963
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 8967
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 8968
    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 8969
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v0

    .line 8970
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->craftingSubtitleView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    int-to-long v5, v0

    const/16 v0, 0x2c

    invoke-static {v5, v6, v0}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8975
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->precraftingLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 8976
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->button:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 8977
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->craftingLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 8978
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->buttonsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 8979
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->craftingIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 8981
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8982
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    array-length v3, v2

    if-ge v1, v3, :cond_6

    .line 8983
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 8984
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 8987
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->onCraft:Lorg/telegram/messenger/Utilities$Callback3;

    new-instance v2, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;Ljava/util/ArrayList;)V

    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;)V

    invoke-interface {v1, v0, v2, v3}, Lorg/telegram/messenger/Utilities$Callback3;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public selectGift(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 9171
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 9172
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v1

    if-nez v1, :cond_1

    .line 9173
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    aget-object v0, v1, v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;->setGift(Lorg/telegram/tgnet/tl/TL_stars$StarGift;Z)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9177
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->updateCounts()V

    return-void
.end method

.method public setOnAddGift(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Lorg/telegram/tgnet/tl/TL_stars$StarGift;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 8932
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->onAddGift:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method

.method public setOnClose(Ljava/lang/Runnable;)V
    .locals 0

    .line 8940
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->onClose:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnCraft(Lorg/telegram/messenger/Utilities$Callback3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback3<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stars$StarGift;",
            ">;",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Lorg/telegram/tgnet/tl/TL_stars$StarGift;",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 8936
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->onCraft:Lorg/telegram/messenger/Utilities$Callback3;

    return-void
.end method

.method public setup()V
    .locals 6

    .line 8805
    iget v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->currentAccount:I

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->giftId:J

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->collectionTitle:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->setup(IJLorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)V

    return-void
.end method

.method public setup(IJLorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)V
    .locals 6

    .line 8808
    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->currentAccount:I

    .line 8809
    iput-wide p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->giftId:J

    .line 8810
    iput-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 8811
    iput-object p5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->collectionTitle:Ljava/lang/String;

    const/4 p4, 0x0

    .line 8812
    iput-boolean p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->crafting:Z

    .line 8813
    iput-boolean p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failed:Z

    move p5, p4

    .line 8815
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->gifts:[Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SelectGiftView;

    array-length v1, v0

    if-ge p5, v1, :cond_1

    .line 8816
    aget-object v0, v0, p5

    if-eqz v0, :cond_0

    .line 8817
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    :cond_0
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 8820
    :cond_1
    iget-object p5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    invoke-virtual {p5}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->reset()V

    .line 8821
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->setupGiftButtons()V

    .line 8822
    invoke-virtual {p0, p4}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->updateCounts(Z)V

    .line 8824
    iput-boolean p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->crafting:Z

    .line 8825
    iget-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->precraftingLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 8826
    iget-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->precraftingLayout:Landroid/widget/FrameLayout;

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-virtual {p4, p5}, Landroid/view/View;->setAlpha(F)V

    .line 8827
    iget-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->button:Landroid/widget/LinearLayout;

    invoke-virtual {p4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 8828
    iget-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->button:Landroid/widget/LinearLayout;

    invoke-virtual {p4, p5}, Landroid/view/View;->setAlpha(F)V

    .line 8829
    iget-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->craftingLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 8830
    iget-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->craftingLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 8831
    iget-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failedLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 8832
    iget-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failedLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 8833
    iget-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->buttonsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 8834
    iget-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->buttonsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4, p5}, Landroid/view/View;->setAlpha(F)V

    .line 8835
    iget-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->variantsButton:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    iget-boolean v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->attributesTwoLines:Z

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->previewAttributes:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    move v1, p5

    goto :goto_1

    :cond_3
    const/high16 v1, 0x3e800000    # 0.25f

    :goto_1
    invoke-virtual {p4, v1}, Landroid/view/View;->setAlpha(F)V

    .line 8836
    iget-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->rays:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$RaysView;

    const/16 v1, 0x8

    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8837
    iget-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->rays:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$RaysView;

    invoke-virtual {p4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 8838
    iget-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->buttonTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->GiftCraftButton:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 8839
    iget-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->buttonTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p4, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 8840
    iget-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->buttonSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p4, p5}, Landroid/view/View;->setAlpha(F)V

    .line 8843
    invoke-static {p1}, Lorg/telegram/messenger/GiftAuctionController;->getInstance(I)Lorg/telegram/messenger/GiftAuctionController;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda6;

    move-wide v4, p2

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;JJ)V

    invoke-virtual {p1, v2, v3, v0}, Lorg/telegram/messenger/GiftAuctionController;->requestAuctionUpgrades(JLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public showHint(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 11

    .line 8772
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8773
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 8774
    iput-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 8777
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->crafting:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->failed:Z

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 8780
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 8781
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    :cond_2
    const/4 v0, 0x0

    if-eqz v1, :cond_3

    .line 8784
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v2, v3

    if-eqz v1, :cond_4

    .line 8785
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v1, v3

    .line 8787
    new-instance v3, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v4, 0x1

    .line 8788
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 8789
    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v3, p2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 8790
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/HintView2;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v3

    invoke-virtual {p2, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidthPx(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 8791
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p2, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 8792
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p2, v4, v6, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 8793
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x42c80000    # 100.0f

    const/16 v6, 0x37

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8794
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 8795
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    add-float/2addr v2, p1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    invoke-virtual {p2, v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJointPx(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 8796
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_5
    :goto_2
    return-void
.end method

.method public showHint(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;)V
    .locals 4

    .line 8764
    iget-object v0, p1, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x42c80000    # 100.0f

    if-eqz v0, :cond_0

    .line 8765
    iget v0, p1, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->progress:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v3, p1, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    const-string v1, "GiftCraftBackdropChance"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->showHint(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void

    .line 8766
    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    if-eqz v0, :cond_1

    .line 8767
    iget v0, p1, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->progress:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v3, p1, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$AttributeView;->pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    const-string v1, "GiftCraftSymbolChance"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->showHint(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public updateCounts()V
    .locals 1

    const/4 v0, 0x1

    .line 9181
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->updateCounts(Z)V

    return-void
.end method

.method public updateCounts(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 9185
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->getGiftsSelectedCount()I

    move-result v1

    .line 9186
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->frontFace:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Face;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->getGiftsSuccessChance()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    move/from16 v4, p1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Face;->setChance(FZ)V

    const/4 v2, 0x1

    const/16 v3, 0x21

    const/4 v4, 0x0

    if-gtz v1, :cond_1

    .line 9188
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->plus:Ljava/lang/CharSequence;

    const-string v6, "+"

    if-nez v5, :cond_0

    .line 9189
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->plus:Ljava/lang/CharSequence;

    .line 9190
    new-instance v5, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v7, Lorg/telegram/messenger/R$drawable;->filled_add_album:I

    invoke-direct {v5, v7}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const v7, 0x3f266666    # 0.65f

    .line 9191
    invoke-virtual {v5, v7, v7}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    .line 9192
    iget-object v7, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->plus:Ljava/lang/CharSequence;

    move-object v8, v7

    check-cast v8, Landroid/text/SpannableStringBuilder;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v8, v5, v4, v7, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 9194
    :cond_0
    new-instance v5, Landroid/text/SpannableStringBuilder;

    sget v7, Lorg/telegram/messenger/R$string;->GiftCraftButtonEmpty:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 9195
    iget-object v7, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->plus:Ljava/lang/CharSequence;

    invoke-static {v6, v5, v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 9196
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->buttonSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9198
    :cond_1
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->buttonSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v6, Lorg/telegram/messenger/R$string;->GiftCraftSuccessChance:I

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->getGiftsSuccessChance()I

    move-result v7

    invoke-static {v7}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v7, v8, v4

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v5, 0x4

    const/4 v6, 0x2

    if-nez v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    if-ge v1, v5, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v6

    .line 9202
    :goto_1
    iget-object v7, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->buttonBackground:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$ButtonBackground;

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->COLORS:[I

    mul-int/2addr v1, v6

    aget v9, v8, v1

    add-int/lit8 v10, v1, 0x1

    aget v8, v8, v10

    invoke-virtual {v7, v9, v8}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$ButtonBackground;->setColor(II)V

    .line 9203
    iget-object v7, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->bg:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->BACKGROUND_COLORS:[I

    aget v9, v8, v1

    aget v8, v8, v10

    invoke-virtual {v7, v9, v8}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->setColors(II)V

    .line 9204
    iget-object v7, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->rays:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$RaysView;

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->COLORS:[I

    aget v9, v8, v10

    aget v1, v8, v1

    invoke-virtual {v7, v9, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$RaysView;->setColor(II)V

    .line 9206
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_5

    .line 9207
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->getFirstGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v1

    const/4 v7, 0x3

    const/4 v8, 0x5

    .line 9208
    const-string v9, " "

    const-string v10, "\n"

    const-string v11, "x"

    if-eqz v1, :cond_4

    .line 9209
    new-instance v12, Landroid/text/SpannableString;

    invoke-direct {v12, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 9210
    new-instance v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v13, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v14, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->textView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v14

    invoke-direct {v11, v13, v14}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v12}, Landroid/text/SpannableString;->length()I

    move-result v13

    invoke-virtual {v12, v11, v4, v13, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 9211
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->textView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v11, Lorg/telegram/messenger/R$string;->GiftCraftText1:I

    .line 9212
    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    sget v13, Lorg/telegram/messenger/R$string;->GiftCraftText2:I

    iget-object v14, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->collectionTitle:Ljava/lang/String;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    move/from16 p1, v4

    move v15, v5

    int-to-long v4, v1

    const/16 v1, 0x2c

    .line 9215
    invoke-static {v4, v5, v1}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v1

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v14, v4, p1

    aput-object v1, v4, v2

    invoke-static {v13, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/CharSequence;

    aput-object v11, v4, p1

    aput-object v10, v4, v2

    aput-object v12, v4, v6

    aput-object v9, v4, v7

    aput-object v1, v4, v15

    .line 9211
    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    move/from16 p1, v4

    move v15, v5

    .line 9218
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 9219
    new-instance v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v11, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->textView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v11

    invoke-direct {v4, v5, v11}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v5

    move/from16 v11, p1

    invoke-virtual {v1, v4, v11, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 9220
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->textView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v4, Lorg/telegram/messenger/R$string;->GiftCraftTextEmpty1:I

    .line 9221
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->GiftCraftTextEmpty2:I

    iget-object v12, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->collectionTitle:Ljava/lang/String;

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v12, v13, v11

    .line 9224
    invoke-static {v5, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    new-array v8, v8, [Ljava/lang/CharSequence;

    aput-object v4, v8, v11

    aput-object v10, v8, v2

    aput-object v1, v8, v6

    aput-object v9, v8, v7

    aput-object v5, v8, v15

    .line 9220
    invoke-static {v8}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9229
    :cond_5
    :goto_2
    invoke-direct {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->updateAttributeFreq()V

    .line 9230
    invoke-direct {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;->updateGiftButtonIcons()V

    return-void
.end method
