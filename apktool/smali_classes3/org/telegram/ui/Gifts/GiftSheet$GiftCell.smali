.class public Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/GiftSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GiftCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;
    }
.end annotation


# static fields
.field public static final PREMIUM_STROKE:[I


# instance fields
.field public allowResaleInGifts:Z

.field private final animatedReordering:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private final avatarView:Lorg/telegram/ui/Components/BackupImageView;

.field private final avatarViewLayout1:Landroid/widget/FrameLayout$LayoutParams;

.field private final avatarViewLayout2:Landroid/widget/FrameLayout$LayoutParams;

.field private cancel:Ljava/lang/Runnable;

.field public final card:Landroid/widget/FrameLayout;

.field public final cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

.field private final cardBackgroundPadding:Landroid/graphics/Rect;

.field public final chanceTextView:Landroid/widget/TextView;

.field private checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private final currentAccount:I

.field private gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

.field private giftMine:Z

.field public final imageView:Lorg/telegram/ui/Components/BackupImageView;

.field public imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field public inCollection:Z

.field public inCrafting:Z

.field public inResalePage:Z

.field private lastDocument:Lorg/telegram/tgnet/TLRPC$Document;

.field private lastDocumentId:J

.field private lastTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

.field private lastUserGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

.field private final lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

.field private final pinView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

.field private pinned:Z

.field private pinnedIcon:Z

.field private final pinnedImageView:Landroid/widget/ImageView;

.field private final pinnedView:Landroid/widget/FrameLayout;

.field private premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

.field private final priceBackground:Lorg/telegram/ui/Gifts/GiftSheet$StarsBackgroundView;

.field private final priceLayout:Landroid/widget/FrameLayout;

.field private final priceView:Landroid/widget/TextView;

.field private priotityAuction:Z

.field private reordering:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

.field private final shaker:Lorg/telegram/ui/Components/Shaker;

.field private final starsPriceView:Landroid/widget/TextView;

.field private subtitle:Lorg/telegram/ui/Components/Text;

.field private final subtitleView:Landroid/widget/TextView;

.field private title:Lorg/telegram/ui/Components/Text;

.field private final titleView:Landroid/widget/TextView;

.field private final tonOnlySaleView:Landroid/widget/ImageView;

.field private userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;


# direct methods
.method public static synthetic $r8$lambda$5izOr0OjXgDr4XGfJaXxVek4JcA(Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lambda$setPinned$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$nOI2nyvnXOb-2nRbW8cQSvNWZn4(Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lambda$setShowPinIcon$1(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetpriceBackground(Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;)Lorg/telegram/ui/Gifts/GiftSheet$StarsBackgroundView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceBackground:Lorg/telegram/ui/Gifts/GiftSheet$StarsBackgroundView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetribbon(Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;)Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const v0, -0x2a70db

    const v1, -0x377ae3

    .line 1522
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->PREMIUM_STROKE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    .line 1078
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1231
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackgroundPadding:Landroid/graphics/Rect;

    .line 1377
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x140

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->animatedReordering:Lorg/telegram/ui/Components/AnimatedFloat;

    move/from16 v0, p2

    .line 1080
    iput v0, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->currentAccount:I

    .line 1081
    iput-object v8, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const v0, 0x3d23d70a    # 0.04f

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 1083
    invoke-static {v1, v0, v2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 1084
    new-instance v0, Lorg/telegram/ui/Components/Shaker;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/Shaker;-><init>(Landroid/view/View;)V

    iput-object v0, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->shaker:Lorg/telegram/ui/Components/Shaker;

    .line 1086
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->card:Landroid/widget/FrameLayout;

    .line 1087
    new-instance v2, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v8, v3}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;-><init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iput-object v2, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x77

    const/4 v4, -0x1

    .line 1088
    invoke-static {v4, v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1090
    new-instance v2, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/4 v9, -0x2

    const/high16 v10, -0x40000000    # -2.0f

    const/16 v11, 0x35

    const/4 v12, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    .line 1091
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1093
    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 1094
    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    const/4 v14, 0x0

    const/high16 v15, 0x41400000    # 12.0f

    const/16 v9, 0x50

    const/high16 v10, 0x42a00000    # 80.0f

    const/16 v11, 0x11

    const/high16 v13, 0x41400000    # 12.0f

    .line 1095
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1097
    new-instance v5, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    sget v9, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_GIFT_LOCK:I

    invoke-direct {v5, v7, v9, v8}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    .line 1098
    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v10, 0x1e

    const/high16 v11, 0x41f00000    # 30.0f

    const/16 v12, 0x31

    const/4 v13, 0x0

    const/high16 v14, 0x42180000    # 38.0f

    .line 1099
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1101
    new-instance v5, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    sget v9, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_GIFT_PIN:I

    invoke-direct {v5, v7, v9, v8}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    .line 1102
    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    const/16 v2, 0x2c

    const/16 v9, 0x11

    .line 1103
    invoke-static {v2, v2, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    .line 1104
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    const v10, 0x3e99999a    # 0.3f

    .line 1105
    invoke-virtual {v5, v10}, Landroid/view/View;->setScaleX(F)V

    .line 1106
    invoke-virtual {v5, v10}, Landroid/view/View;->setScaleY(F)V

    const/16 v11, 0x8

    .line 1107
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1109
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->titleView:Landroid/widget/TextView;

    .line 1110
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v12, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1111
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v13, 0x41600000    # 14.0f

    .line 1112
    invoke-virtual {v5, v3, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1113
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v14, -0x1

    const/high16 v15, -0x40000000    # -2.0f

    const/16 v16, 0x30

    const/16 v17, 0x0

    const/high16 v18, 0x42b20000    # 89.0f

    .line 1114
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1116
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitleView:Landroid/widget/TextView;

    .line 1117
    invoke-static {v12, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1118
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v8, 0x41400000    # 12.0f

    .line 1119
    invoke-virtual {v5, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v18, 0x0

    const/4 v12, -0x1

    const/high16 v13, -0x40000000    # -2.0f

    const/16 v14, 0x30

    const/4 v15, 0x0

    const/high16 v16, 0x42d60000    # 107.0f

    .line 1120
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1122
    new-instance v5, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$1;

    invoke-direct {v5, v1, v7}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$1;-><init>(Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;Landroid/content/Context;)V

    iput-object v5, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceLayout:Landroid/widget/FrameLayout;

    .line 1132
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v12, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    .line 1133
    invoke-virtual {v12, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1134
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v8, 0x41200000    # 10.0f

    .line 1135
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v12, v13, v6, v14, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1136
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setGravity(I)V

    const v13, -0xcc6e2c

    .line 1138
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v20, 0x41300000    # 11.0f

    const/4 v14, -0x2

    const/high16 v15, -0x40000000    # -2.0f

    const/16 v16, 0x51

    .line 1139
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1141
    new-instance v13, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackgroundView;

    invoke-direct {v13, v7}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackgroundView;-><init>(Landroid/content/Context;)V

    iput-object v13, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceBackground:Lorg/telegram/ui/Gifts/GiftSheet$StarsBackgroundView;

    const v14, -0xffff01

    .line 1142
    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1143
    invoke-static {v6, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v14, -0x2

    const/16 v15, 0x1a

    .line 1144
    invoke-static {v14, v15, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v5, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1146
    new-instance v5, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v12

    if-eqz v12, :cond_0

    const v12, 0x1eeba52d

    goto :goto_0

    :cond_0
    const v12, 0x40e8ab02

    :goto_0
    invoke-direct {v5, v12}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;-><init>(I)V

    invoke-virtual {v13, v5}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1148
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->starsPriceView:Landroid/widget/TextView;

    const v12, 0x412a8f5c    # 10.66f

    .line 1149
    invoke-virtual {v5, v3, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1150
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1151
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v12

    if-eqz v12, :cond_1

    const v12, -0x145ad3

    goto :goto_1

    :cond_1
    const v12, -0x2988de

    :goto_1
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1152
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    const/16 v18, 0x0

    const/high16 v19, 0x41000000    # 8.0f

    const/4 v13, -0x2

    const/high16 v14, -0x40000000    # -2.0f

    const/16 v15, 0x31

    const/16 v16, 0x0

    const/high16 v17, 0x43210000    # 161.0f

    .line 1153
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1155
    new-instance v5, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v5}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v5, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 1156
    new-instance v5, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v5, v7}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v12, 0x41a00000    # 20.0f

    .line 1157
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v5, v12}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 1158
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    const/high16 v18, 0x40000000    # 2.0f

    const/high16 v19, 0x40000000    # 2.0f

    const/16 v13, 0x14

    const/high16 v14, 0x41a00000    # 20.0f

    const/16 v15, 0x33

    const/high16 v16, 0x40000000    # 2.0f

    const/high16 v17, 0x40000000    # 2.0f

    .line 1159
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    iput-object v12, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarViewLayout1:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v16, 0x40a00000    # 5.0f

    const/high16 v17, 0x40a00000    # 5.0f

    .line 1160
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarViewLayout2:Landroid/widget/FrameLayout$LayoutParams;

    .line 1162
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    .line 1163
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1164
    invoke-virtual {v5, v10}, Landroid/view/View;->setScaleX(F)V

    .line 1165
    invoke-virtual {v5, v10}, Landroid/view/View;->setScaleY(F)V

    .line 1166
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1168
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedImageView:Landroid/widget/ImageView;

    .line 1169
    sget v10, Lorg/telegram/messenger/R$drawable;->msg_limit_pin:I

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1170
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1171
    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v4, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v10, 0x414a8f5c    # 12.66f

    .line 1172
    invoke-static {v10, v10, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v17, 0x40000000    # 2.0f

    const/16 v12, 0x14

    const/high16 v13, 0x41a00000    # 20.0f

    const/16 v14, 0x33

    const/high16 v15, 0x40000000    # 2.0f

    const/high16 v16, 0x40000000    # 2.0f

    .line 1174
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1176
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    .line 1177
    sget v5, Lorg/telegram/messenger/R$drawable;->ton_16:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1178
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1179
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v17, 0x40400000    # 3.0f

    const/high16 v18, 0x40400000    # 3.0f

    const/high16 v15, 0x40400000    # 3.0f

    const/high16 v16, 0x40400000    # 3.0f

    .line 1180
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1182
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->chanceTextView:Landroid/widget/TextView;

    .line 1183
    invoke-virtual {v2, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1184
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x40a00000    # 5.0f

    .line 1185
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v5, v6, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1186
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1187
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v12, -0x2

    const/high16 v13, 0x41880000    # 17.0f

    const/high16 v15, 0x40800000    # 4.0f

    const/high16 v16, 0x40800000    # 4.0f

    .line 1188
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1189
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private getUniqueStarGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;
    .locals 2

    .line 1348
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v1, :cond_0

    .line 1349
    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic lambda$setPinned$0(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1334
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setShowPinIcon$1(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1365
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V
    .locals 10

    if-nez p1, :cond_0

    .line 1501
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->clearImage()V

    const/4 p1, 0x0

    .line 1502
    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastDocument:Lorg/telegram/tgnet/TLRPC$Document;

    const-wide/16 p1, 0x0

    .line 1503
    iput-wide p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastDocumentId:J

    return-void

    .line 1507
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-ne v0, p1, :cond_1

    return-void

    .line 1508
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastDocument:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1509
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastDocumentId:J

    .line 1511
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 1512
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const v2, 0x3e99999a    # 0.3f

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v8

    .line 1514
    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 1515
    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    .line 1516
    invoke-static {v0, p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    const-string v7, "100_100"

    .line 1514
    const-string v5, "100_100"

    move-object v9, p2

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    return-void
.end method

.method private updateRibbonText()V
    .locals 10

    .line 1823
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    const/16 v1, 0x2c

    const-string v2, "#"

    const/16 v3, 0x8

    const-class v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    .line 1824
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v8, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v8, :cond_1

    .line 1825
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1826
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resell_amount:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1827
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1828
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1829
    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const v2, 0x3d23d70a    # 0.04f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    .line 1827
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v0

    .line 1831
    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_color_green:I

    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setColor(I)V

    .line 1832
    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    .line 1833
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 1834
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/messenger/R$string;->Gift2OnSale:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 1836
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_gift_ribbon:I

    iget-object v6, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setColor(I)V

    .line 1837
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    .line 1838
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 1840
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    int-to-long v6, v2

    invoke-static {v6, v7, v1}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 1845
    :cond_1
    iget-boolean v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->limited:Z

    if-eqz v0, :cond_2

    .line 1846
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1847
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_gift_ribbon:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setColor(I)V

    .line 1848
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    .line 1849
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 1850
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/messenger/R$string;->Gift2Limited1OfRibbon:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    invoke-static {v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v7

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 1852
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 1853
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1855
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v0, :cond_d

    .line 1856
    iget-boolean v8, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->inResalePage:Z

    if-nez v8, :cond_c

    iget-boolean v8, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->inCrafting:Z

    if-eqz v8, :cond_4

    goto/16 :goto_0

    .line 1862
    :cond_4
    iget-boolean v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->allowResaleInGifts:Z

    if-eqz v1, :cond_5

    iget-wide v1, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_resale:J

    const-wide/16 v8, 0x0

    cmp-long v1, v1, v8

    if-lez v1, :cond_5

    .line 1863
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1864
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_green:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setColor(I)V

    .line 1865
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    .line 1866
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 1867
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/messenger/R$string;->Gift2Resale:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 1868
    :cond_5
    iget-boolean v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->giftMine:Z

    if-eqz v1, :cond_6

    .line 1869
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1870
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_gift_ribbon:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setColor(I)V

    .line 1871
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    .line 1872
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 1873
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/messenger/R$string;->Gift2Limited1OfRibbon:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_issued:I

    invoke-static {v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v7

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 1874
    :cond_6
    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->limited:Z

    if-eqz v1, :cond_7

    iget v2, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_remains:I

    if-gtz v2, :cond_7

    .line 1875
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1876
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_gift_ribbon_soldout:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setColor(I)V

    .line 1877
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    .line 1878
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 1879
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/messenger/R$string;->Gift2SoldOut:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 1880
    :cond_7
    iget-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->auction:Z

    const v4, -0x4082ea

    const v8, -0x286fdd

    if-eqz v2, :cond_9

    .line 1881
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1882
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 1883
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v8, v4}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setColors(II)V

    .line 1884
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    .line 1885
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->auction_start_date:I

    iget v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    if-le v0, v1, :cond_8

    .line 1886
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/messenger/R$string;->Gift2LimitedAuctionSoon:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 1888
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/messenger/R$string;->Gift2LimitedAuction:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 1890
    :cond_9
    iget-boolean v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->require_premium:Z

    if-eqz v0, :cond_a

    .line 1891
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1892
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 1893
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v8, v4}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setColors(II)V

    .line 1894
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    .line 1895
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/messenger/R$string;->Gift2LimitedPremium:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_a
    if-eqz v1, :cond_b

    .line 1897
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1898
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_gift_ribbon:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setColor(I)V

    .line 1899
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    .line 1900
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 1901
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/messenger/R$string;->Gift2LimitedRibbon:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 1903
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 1904
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    .line 1905
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1857
    :cond_c
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1858
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_gift_ribbon:I

    iget-object v6, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setColor(I)V

    .line 1859
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 1860
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    .line 1861
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    int-to-long v6, v2

    invoke-static {v6, v7, v1}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 1907
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    if-eqz v0, :cond_f

    .line 1908
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getDiscount()I

    move-result v0

    if-lez v0, :cond_e

    .line 1909
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1910
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 1911
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    const v1, -0x26b001

    const v2, -0x7d9201

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setColors(II)V

    .line 1912
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    .line 1913
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/messenger/R$string;->GiftPremiumOptionDiscount:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getDiscount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v7

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1, v5}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setText(ILjava/lang/CharSequence;Z)V

    return-void

    .line 1915
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1916
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 1917
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    :cond_f
    return-void
.end method


# virtual methods
.method public customDraw(Landroid/view/View;Landroid/graphics/Canvas;FFF)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    .line 1233
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1234
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float v4, v8, v11

    div-float v5, v9, v11

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1236
    invoke-direct {v0}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->getUniqueStarGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object v12

    const/4 v13, 0x0

    if-eqz v12, :cond_0

    const/high16 v2, 0x427c0000    # 63.0f

    .line 1237
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v10

    goto :goto_0

    :cond_0
    move v2, v13

    .line 1239
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    float-to-int v4, v8

    float-to-int v5, v9

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1240
    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-virtual {v3, v1, v10}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->draw(Landroid/graphics/Canvas;F)V

    .line 1241
    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->getPadding(Landroid/graphics/Rect;)Z

    const/high16 v3, 0x42a00000    # 80.0f

    .line 1243
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3, v4, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    .line 1244
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    sub-float v5, v8, v3

    div-float/2addr v5, v11

    sub-float v2, v9, v2

    sub-float v6, v2, v3

    div-float/2addr v6, v11

    invoke-virtual {v4, v5, v6, v3, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1245
    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1246
    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->isLottieRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1247
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->invalidate()V

    .line 1250
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/high16 v14, 0x437f0000    # 255.0f

    const/high16 v15, 0x3f800000    # 1.0f

    if-nez v3, :cond_2

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v13

    if-lez v3, :cond_2

    .line 1251
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1252
    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v8, v3

    div-float/2addr v3, v11

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    div-float/2addr v2, v11

    invoke-static {v4, v2, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1253
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v4, v2

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v5, v2

    sub-float v2, v15, v10

    mul-float/2addr v2, v14

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v6, v2

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1254
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1255
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1256
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1259
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v13

    if-lez v2, :cond_3

    .line 1260
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1261
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1262
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v4, v2

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v5, v2

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float/2addr v2, v14

    float-to-int v6, v2

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1263
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1264
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1265
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1268
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v13

    if-lez v2, :cond_4

    .line 1269
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1270
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1271
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1272
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1275
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v13

    if-lez v2, :cond_5

    .line 1276
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1277
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v8, v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x3fa00000    # 1.25f

    .line 1278
    invoke-static {v15, v2, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 1279
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1280
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1281
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1282
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    if-eqz v12, :cond_8

    .line 1286
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->title:Lorg/telegram/ui/Components/Text;

    if-nez v2, :cond_6

    .line 1287
    new-instance v2, Lorg/telegram/ui/Components/Text;

    iget-object v3, v12, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->title:Lorg/telegram/ui/Components/Text;

    .line 1289
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitle:Lorg/telegram/ui/Components/Text;

    if-nez v2, :cond_7

    .line 1290
    new-instance v2, Lorg/telegram/ui/Components/Text;

    const-string v3, "Gift2CollectionNumber"

    iget v4, v12, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41500000    # 13.0f

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitle:Lorg/telegram/ui/Components/Text;

    .line 1293
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->title:Lorg/telegram/ui/Components/Text;

    const/high16 v7, 0x41000000    # 8.0f

    .line 1294
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v8, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->title:Lorg/telegram/ui/Components/Text;

    .line 1295
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v3

    sub-float v3, v8, v3

    div-float/2addr v3, v11

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v9, v4

    iget-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v5

    div-float/2addr v5, v11

    sub-float/2addr v4, v5

    const/high16 v12, 0x42480000    # 50.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v13, v15, v10

    mul-float/2addr v5, v13

    add-float/2addr v4, v5

    const/4 v5, -0x1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    .line 1297
    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitle:Lorg/telegram/ui/Components/Text;

    .line 1298
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v8, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitle:Lorg/telegram/ui/Components/Text;

    .line 1299
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v2

    sub-float v2, v8, v2

    div-float v3, v2, v11

    const/high16 v2, 0x41980000    # 19.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v9, v2

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v4

    div-float/2addr v4, v11

    sub-float/2addr v2, v4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v13

    add-float/2addr v4, v2

    const v2, 0x3f19999a    # 0.6f

    mul-float v6, p5, v2

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    move-object v1, v2

    .line 1302
    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    .line 1303
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1304
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1305
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v4, v2

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v5, v2

    sub-float v2, v15, p5

    mul-float/2addr v2, v14

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v6, v2

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1306
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1307
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1308
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1311
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a

    .line 1312
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1313
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1314
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v4, v2

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v5, v2

    sub-float v15, v15, p5

    mul-float/2addr v15, v14

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float/2addr v15, v2

    float-to-int v6, v15

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1315
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1316
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1317
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1320
    :cond_a
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1390
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1391
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1392
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->animatedReordering:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->reordering:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 1394
    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->shaker:Lorg/telegram/ui/Components/Shaker;

    invoke-virtual {v2, p1, v0}, Lorg/telegram/ui/Components/Shaker;->concat(Landroid/graphics/Canvas;F)V

    .line 1396
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1397
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1398
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;
    .locals 1

    .line 1423
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    return-object v0
.end method

.method public getGiftId()J
    .locals 2

    .line 1657
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v0, :cond_0

    .line 1658
    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPremiumTier()Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;
    .locals 1

    .line 1420
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    return-object v0
.end method

.method public getSavedGift()Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;
    .locals 1

    .line 1426
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    return-object v0
.end method

.method public hidePrice()V
    .locals 2

    .line 1206
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public invalidateCustom()V
    .locals 2

    .line 1226
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->card:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1227
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->card:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1403
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public removeImage()V
    .locals 2

    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->card:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 9

    .line 1812
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-nez v0, :cond_0

    .line 1813
    new-instance v0, Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    .line 1814
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 1815
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 1816
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->card:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v8, 0x40800000    # 4.0f

    const/16 v2, 0x18

    const/high16 v3, 0x41c00000    # 24.0f

    const/16 v4, 0x33

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1818
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1819
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method public setImageLayer(I)V
    .locals 1

    .line 1202
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    return-void
.end method

.method public setImageSize(I)V
    .locals 1

    .line 1197
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1198
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    return-void
.end method

.method public setPinned(ZZ)V
    .locals 6

    .line 1325
    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinned:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1326
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinned:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    .line 1328
    iget-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1329
    iget-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz p1, :cond_1

    move v0, v3

    .line 1330
    :cond_1
    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    .line 1331
    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_3

    move v2, v3

    .line 1332
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;Z)V

    .line 1333
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1336
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    .line 1338
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    move v5, v1

    goto :goto_1

    :cond_5
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1339
    iget-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_6

    move v0, v3

    :cond_6
    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1340
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    move v4, v3

    goto :goto_2

    :cond_7
    move v4, v2

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1341
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_8

    move v2, v3

    :cond_8
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1343
    :goto_3
    iget-boolean p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinned:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->reordering:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->inCollection:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of p1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    :cond_9
    invoke-virtual {p0, v1, p2}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setShowPinIcon(ZZ)V

    .line 1344
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->updateRibbonText()V

    return-void
.end method

.method public setPremiumGift(Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;)Z
    .locals 8

    .line 1436
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getMonths()I

    move-result v0

    .line 1437
    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    const/4 v2, 0x0

    if-eq v1, p1, :cond_0

    .line 1438
    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setPremiumGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;I)Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cancel:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 1440
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1441
    iput-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cancel:Ljava/lang/Runnable;

    .line 1445
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 1446
    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setPattern(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)V

    .line 1447
    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setStrokeColors([I)V

    .line 1448
    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->titleView:Landroid/widget/TextView;

    const-string v3, "Gift2Months"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1449
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->TelegramPremiumShort:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1450
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1451
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1452
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1453
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1454
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1455
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->isStarsPaymentAvailable()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 1456
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->starsPriceView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, -0x145ad3

    goto :goto_0

    :cond_1
    const v1, -0x2988de

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1457
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->starsPriceView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1458
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getStarsPrice()J

    move-result-wide v5

    const/16 v7, 0x2c

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1459
    new-instance v1, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1460
    new-array v1, v3, [Lorg/telegram/ui/Components/ColoredImageSpan;

    .line 1461
    iget-object v5, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->starsPriceView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->PremiumOrStarsPrice:I

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v0, v7, v4

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    const v6, 0x3ef5c28f    # 0.48f

    invoke-static {v0, v6, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1462
    aget-object v0, v1, v4

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    goto :goto_1

    .line 1464
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->starsPriceView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1467
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1468
    iget-object v5, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1470
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v6, v4, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1471
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1472
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getFormattedPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1473
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceBackground:Lorg/telegram/ui/Gifts/GiftSheet$StarsBackgroundView;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const v5, 0x193391d4

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1474
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    const v3, -0xcc6e2c

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1475
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v3, 0x43020000    # 130.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1476
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1478
    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    .line 1479
    iput-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastDocument:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1481
    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    .line 1482
    iput-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 1483
    iput-boolean v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->giftMine:Z

    .line 1484
    iput-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 1485
    iput-boolean v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->allowResaleInGifts:Z

    .line 1486
    iput-boolean v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->inResalePage:Z

    .line 1487
    iput-boolean v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->inCollection:Z

    .line 1488
    iput-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->title:Lorg/telegram/ui/Components/Text;

    .line 1489
    iput-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitle:Lorg/telegram/ui/Components/Text;

    .line 1491
    invoke-virtual {p0, v4, v4}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setPinned(ZZ)V

    .line 1492
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->updateRibbonText()V

    return v4
.end method

.method public setPriorityAuction()V
    .locals 1

    const/4 v0, 0x1

    .line 1432
    iput-boolean v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priotityAuction:Z

    return-void
.end method

.method public setReordering(ZZ)V
    .locals 1

    .line 1379
    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->reordering:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1380
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->reordering:Z

    if-nez p2, :cond_1

    .line 1382
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->animatedReordering:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedFloat;->force(Z)V

    .line 1384
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1385
    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinned:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->inCollection:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of p1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setShowPinIcon(ZZ)V

    return-void
.end method

.method public setRibbonColor(I)V
    .locals 1

    .line 1923
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setColor(I)V

    .line 1924
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRibbonText(Ljava/lang/String;)V
    .locals 2

    .line 1928
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setRibbonTextOneOf(I)V
    .locals 5

    .line 1932
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1933
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_gift_ribbon:I

    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setColor(I)V

    .line 1934
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    .line 1935
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-static {v2, v3}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 1936
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v2, Lorg/telegram/messenger/R$string;->Gift2Limited1OfRibbon:I

    invoke-static {p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setSelected(ZZ)V
    .locals 3

    .line 1210
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setSelected(ZZ)V

    const/4 v0, 0x0

    const/high16 v1, 0x40c00000    # 6.0f

    if-eqz p2, :cond_2

    .line 1212
    iget-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 1213
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 1214
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v0, p1

    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x140

    .line 1215
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 1216
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1217
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 1219
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1220
    iget-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1221
    iget-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v0, p1

    :cond_4
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public setShowPinIcon(ZZ)V
    .locals 4

    .line 1356
    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedIcon:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1357
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedIcon:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    .line 1359
    iget-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1360
    iget-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    move v0, v3

    .line 1361
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1362
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_3

    move v2, v3

    .line 1363
    :cond_3
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;Z)V

    .line 1364
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1367
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 1369
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1370
    iget-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz p1, :cond_6

    move v0, v3

    :cond_6
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1371
    iget-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz p1, :cond_7

    move v0, v3

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1372
    iget-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz p1, :cond_8

    move v2, v3

    :cond_8
    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public setStarsGift(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;ZZ)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1666
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cancel:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1667
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1668
    iput-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cancel:Ljava/lang/Runnable;

    .line 1671
    :cond_0
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-virtual {v2}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    .line 1672
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-static {v2, v4}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    .line 1673
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 1674
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v5, v5, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v6, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-static {v5, v6}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setPattern(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)V

    .line 1675
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setStrokeColors([I)V

    .line 1676
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->titleView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1677
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1678
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1679
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setWaitingImage()V

    .line 1680
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    const/high16 v7, 0x3f400000    # 0.75f

    const/high16 v8, -0x1000000

    if-eqz v2, :cond_1

    iget v9, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    or-int/2addr v9, v8

    invoke-static {v9, v7}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    :cond_1
    move-object v9, v3

    :goto_0
    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setBlendWithColor(Ljava/lang/Integer;)V

    .line 1681
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setWaitingImage()V

    .line 1682
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz v2, :cond_2

    iget v9, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    or-int/2addr v9, v8

    invoke-static {v9, v7}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v3

    :goto_1
    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setBlendWithColor(Ljava/lang/Integer;)V

    .line 1683
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    iget-object v7, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-boolean v7, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resale_ton_only:Z

    const/4 v9, 0x0

    if-eqz v7, :cond_3

    move v7, v9

    goto :goto_2

    :cond_3
    move v7, v5

    :goto_2
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 v4, 0x41a00000    # 20.0f

    if-eqz v2, :cond_4

    .line 1685
    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v10, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    or-int/2addr v10, v8

    const v11, 0x3dcccccd    # 0.1f

    const v12, -0x41b33333    # -0.2f

    invoke-static {v10, v11, v12}, Lorg/telegram/ui/ActionBar/Theme;->adaptHSV(IFF)I

    move-result v10

    invoke-static {v4, v10}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 1687
    :cond_4
    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v11, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-static {v4, v10}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1690
    :goto_3
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x11

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1691
    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1693
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1694
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastUserGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    const v7, 0x3ecccccd    # 0.4f

    const/high16 v10, 0x3f800000    # 1.0f

    if-ne v4, v1, :cond_8

    .line 1695
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1696
    iget-boolean v11, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-eqz v11, :cond_5

    move v11, v10

    goto :goto_4

    :cond_5
    move v11, v6

    :goto_4
    invoke-virtual {v4, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1697
    iget-boolean v11, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-eqz v11, :cond_6

    move v11, v10

    goto :goto_5

    :cond_6
    move v11, v7

    :goto_5
    invoke-virtual {v4, v11}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1698
    iget-boolean v11, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-eqz v11, :cond_7

    move v7, v10

    :cond_7
    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v11, 0x15e

    .line 1699
    invoke-virtual {v4, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 1700
    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1701
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_8

    .line 1703
    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    iget-boolean v11, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-eqz v11, :cond_9

    move v11, v10

    goto :goto_6

    :cond_9
    move v11, v6

    :goto_6
    invoke-virtual {v4, v11}, Landroid/view/View;->setAlpha(F)V

    .line 1704
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    iget-boolean v11, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-eqz v11, :cond_a

    move v11, v10

    goto :goto_7

    :cond_a
    move v11, v7

    :goto_7
    invoke-virtual {v4, v11}, Landroid/view/View;->setScaleX(F)V

    .line 1705
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    iget-boolean v11, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-eqz v11, :cond_b

    move v7, v10

    :cond_b
    invoke-virtual {v4, v7}, Landroid/view/View;->setScaleY(F)V

    .line 1708
    :goto_8
    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v4, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    .line 1709
    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1710
    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v11, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarViewLayout1:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v7, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-wide/16 v11, 0x0

    if-eqz v4, :cond_c

    .line 1712
    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 1713
    :cond_c
    iget-boolean v7, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->name_hidden:Z

    if-eqz v7, :cond_d

    .line 1714
    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1715
    const-string v7, "anonymous"

    invoke-static {v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->getPlatformDrawable(Ljava/lang/String;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v7

    const/high16 v13, 0x41800000    # 16.0f

    .line 1716
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v7, v14, v13}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)Lorg/telegram/ui/Components/CombinedDrawable;

    .line 1717
    iget-object v13, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v13, v7}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 1719
    :cond_d
    iget-object v7, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v7}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v13

    cmp-long v7, v13, v11

    if-lez v7, :cond_f

    .line 1721
    iget v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 1723
    iget-object v13, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v13, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1724
    iget-object v13, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v13, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1725
    iget-object v13, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v14, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v13, v7, v14}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_9

    .line 1727
    :cond_e
    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 1730
    :cond_f
    iget v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    neg-long v13, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 1732
    iget-object v13, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v13, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1733
    iget-object v13, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v13, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 1734
    iget-object v13, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v14, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v13, v7, v14}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_9

    .line 1736
    :cond_10
    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    const/16 v15, 0x2c

    move/from16 v16, v8

    .line 1741
    const-string v8, "XTR "

    move-wide/from16 v17, v11

    const/4 v11, -0x1

    const/high16 v19, 0x41000000    # 8.0f

    const/high16 v12, 0x41400000    # 12.0f

    const/high16 v20, 0x41500000    # 13.0f

    const/4 v13, 0x1

    const/high16 v21, 0x41200000    # 10.0f

    if-eqz v2, :cond_13

    iget-object v14, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v14, v14, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resell_amount:Ljava/util/ArrayList;

    if-eqz v14, :cond_13

    .line 1742
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1743
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1744
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1745
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v4, v14, v9, v3, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1746
    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v3, v13, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1747
    new-array v3, v13, [Lorg/telegram/ui/Components/ColoredImageSpan;

    .line 1748
    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-boolean v12, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resale_ton_only:Z

    const v14, 0x3f733333    # 0.95f

    if-eqz v12, :cond_11

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v17

    iget v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v22

    cmp-long v4, v17, v22

    if-nez v4, :cond_11

    .line 1749
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move/from16 v22, v9

    sget-object v9, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-virtual {v8, v9}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getResellAmount(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->toTl()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v8

    invoke-static {v8, v10, v15}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8, v14, v3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(ZLjava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_11
    move/from16 v22, v9

    .line 1751
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-virtual {v8}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getResellStars()J

    move-result-wide v7

    invoke-static {v7, v8, v15}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v14, v3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1753
    :goto_a
    aget-object v3, v3, v22

    if-eqz v3, :cond_12

    const/high16 v4, 0x3f000000    # 0.5f

    .line 1754
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v6, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    .line 1756
    :cond_12
    iget v3, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    or-int v3, v3, v16

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->pattern_color:I

    or-int v2, v2, v16

    const v4, 0x3f0ccccd    # 0.55f

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v2

    .line 1757
    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceBackground:Lorg/telegram/ui/Gifts/GiftSheet$StarsBackgroundView;

    new-instance v4, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;

    const v6, 0x70ffffff

    invoke-direct {v4, v6, v2}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;-><init>(II)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1758
    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1759
    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1760
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1761
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v10, 0x31

    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1762
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v3, 0x429e0000    # 79.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_12

    :cond_13
    move/from16 v22, v9

    if-eqz p2, :cond_14

    .line 1765
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1766
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1767
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v3, v22

    goto :goto_b

    .line 1769
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    move/from16 v3, v22

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1770
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1771
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_b
    if-eqz v4, :cond_15

    .line 1774
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v2, v6, v3, v7, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1775
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v2, v13, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1776
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->Gift2PriceUnique:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 1778
    :cond_15
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v2, v6, v3, v7, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1779
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v2, v13, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1780
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide v7, v6, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->stars:J

    iget-wide v10, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->convert_stars:J

    cmp-long v14, v10, v17

    if-lez v14, :cond_16

    goto :goto_c

    :cond_16
    iget-wide v10, v6, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->convert_stars:J

    :goto_c
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-static {v6, v7, v15}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v6, 0x3f28f5c3    # 0.66f

    invoke-static {v3, v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1782
    :goto_d
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    const v3, -0x145ad3

    if-eqz v4, :cond_17

    const/4 v6, -0x1

    goto :goto_e

    :cond_17
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v6

    if-eqz v6, :cond_18

    move v6, v3

    goto :goto_e

    :cond_18
    const v6, -0x408a00

    :goto_e
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1783
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceBackground:Lorg/telegram/ui/Gifts/GiftSheet$StarsBackgroundView;

    new-instance v6, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;

    if-eqz v4, :cond_19

    const v7, 0x40ffffff    # 7.9999995f

    goto :goto_f

    :cond_19
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v7

    if-eqz v7, :cond_1a

    const v7, 0x1eeba52d

    goto :goto_f

    :cond_1a
    const v7, 0x40e8ab02

    :goto_f
    invoke-direct {v6, v7}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;-><init>(I)V

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1784
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-eqz v4, :cond_1b

    const v7, 0x40ffffff    # 7.9999995f

    goto :goto_10

    :cond_1b
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v7

    if-eqz v7, :cond_1c

    const v7, 0x1eeba52d

    goto :goto_10

    :cond_1c
    const v7, 0x40e8ab02

    :goto_10
    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1785
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    if-eqz v4, :cond_1d

    const/4 v11, -0x1

    goto :goto_11

    :cond_1d
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v4

    if-eqz v4, :cond_1e

    move v11, v3

    goto :goto_11

    :cond_1e
    const v11, -0x408a00

    :goto_11
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1786
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v10, 0x31

    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1787
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v3, 0x42ce0000    # 103.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1789
    :goto_12
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->starsPriceView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1791
    iput-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastUserGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    const/4 v2, 0x0

    .line 1792
    iput-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    .line 1794
    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 1795
    iput-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    .line 1796
    iput-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    const/4 v4, 0x0

    .line 1797
    iput-boolean v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->giftMine:Z

    .line 1798
    iput-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 1799
    iput-boolean v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->allowResaleInGifts:Z

    .line 1800
    iput-boolean v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->inResalePage:Z

    move/from16 v4, p3

    .line 1801
    iput-boolean v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->inCollection:Z

    .line 1802
    iput-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->title:Lorg/telegram/ui/Components/Text;

    .line 1803
    iput-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitle:Lorg/telegram/ui/Components/Text;

    .line 1804
    iget-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    if-ne v3, v1, :cond_1f

    move v4, v13

    goto :goto_13

    :cond_1f
    const/4 v4, 0x0

    :goto_13
    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setPinned(ZZ)V

    .line 1805
    invoke-direct {v0}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->updateRibbonText()V

    if-ne v3, v1, :cond_20

    return v13

    :cond_20
    const/16 v22, 0x0

    return v22
.end method

.method public setStarsGift(Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZZZZ)Z
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    .line 1531
    iget-object v6, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cancel:Ljava/lang/Runnable;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 1532
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 1533
    iput-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cancel:Ljava/lang/Runnable;

    .line 1536
    :cond_0
    invoke-virtual {v1}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v6

    invoke-direct {v0, v6, v1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    .line 1537
    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v8, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-static {v6, v8}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    .line 1538
    iget-object v8, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-virtual {v8, v6}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 1539
    iget-object v8, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    iget-object v9, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v10, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-static {v9, v10}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setPattern(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)V

    .line 1540
    iget-boolean v8, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->auction:Z

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_4

    iget-boolean v8, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sold_out:Z

    if-eqz v8, :cond_1

    iget-boolean v11, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priotityAuction:Z

    if-eqz v11, :cond_4

    :cond_1
    if-eqz v3, :cond_2

    iget-wide v11, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_resale:J

    cmp-long v11, v11, v9

    if-gtz v11, :cond_4

    :cond_2
    if-eqz v8, :cond_3

    .line 1542
    iget-object v8, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_gift_ribbon_soldout:I

    iget-object v12, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1543
    invoke-static {v11, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    iget-object v13, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1544
    invoke-static {v11, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    filled-new-array {v12, v11}, [I

    move-result-object v11

    .line 1542
    invoke-virtual {v8, v11}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setStrokeColors([I)V

    goto :goto_1

    .line 1547
    :cond_3
    iget-object v8, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    sget-object v11, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->PREMIUM_STROKE:[I

    invoke-virtual {v8, v11}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setStrokeColors([I)V

    goto :goto_1

    .line 1550
    :cond_4
    iget-object v8, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    iget-boolean v11, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->require_premium:Z

    if-eqz v11, :cond_6

    if-eqz v3, :cond_5

    iget-wide v11, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_resale:J

    cmp-long v11, v11, v9

    if-gtz v11, :cond_6

    :cond_5
    sget-object v11, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->PREMIUM_STROKE:[I

    goto :goto_0

    :cond_6
    move-object v11, v7

    :goto_0
    invoke-virtual {v8, v11}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setStrokeColors([I)V

    .line 1552
    :goto_1
    iget-object v8, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->titleView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1553
    iget-object v8, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1554
    iget-object v8, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 1555
    iget-object v8, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1556
    iget-object v8, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    iget-boolean v13, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resale_ton_only:Z

    const/4 v14, 0x0

    if-eqz v13, :cond_7

    move v13, v14

    goto :goto_2

    :cond_7
    move v13, v11

    :goto_2
    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1557
    iget-object v8, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->chanceTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_8

    move v13, v14

    goto :goto_3

    :cond_8
    move v13, v11

    :goto_3
    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1558
    iget-object v8, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->chanceTextView:Landroid/widget/TextView;

    iget-boolean v13, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resale_ton_only:Z

    if-eqz v13, :cond_9

    const/high16 v13, 0x41b80000    # 23.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    goto :goto_4

    :cond_9
    move v13, v12

    :goto_4
    invoke-virtual {v8, v13}, Landroid/view/View;->setTranslationX(F)V

    .line 1559
    iget-object v8, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->chanceTextView:Landroid/widget/TextView;

    iget-boolean v13, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resale_ton_only:Z

    if-eqz v13, :cond_a

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    :cond_a
    invoke-virtual {v8, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 1560
    const-string v8, "+"

    if-eqz v5, :cond_c

    .line 1561
    iget-object v12, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->chanceTextView:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->craft_chance_permille:I

    if-gtz v15, :cond_b

    const-string v15, "<0.1%"

    goto :goto_5

    :cond_b
    invoke-static {v15}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v15

    :goto_5
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1564
    :cond_c
    iget-object v12, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v13, 0x31

    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1565
    iget-object v15, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v15, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v4, :cond_f

    move-wide v15, v9

    if-eqz v3, :cond_e

    .line 1567
    iget-wide v9, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_resale:J

    cmp-long v9, v9, v15

    if-gtz v9, :cond_d

    goto :goto_6

    :cond_d
    move-wide/from16 v17, v15

    goto :goto_7

    :cond_e
    :goto_6
    iget v9, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->locked_until_date:I

    iget v10, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v10

    if-le v9, v10, :cond_d

    .line 1568
    iget-object v9, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v9, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1569
    iget-object v9, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v10, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarViewLayout2:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1570
    iget-object v9, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    move-wide/from16 v17, v15

    iget-object v15, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v12, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v12, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1571
    iget-object v9, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    sget v10, Lorg/telegram/messenger/R$drawable;->mini_gift_lock:I

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    goto :goto_8

    :cond_f
    move-wide/from16 v17, v9

    .line 1573
    :goto_7
    iget-object v9, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v9, v7}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1574
    iget-object v9, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1577
    :goto_8
    iget-object v9, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    if-eqz v5, :cond_10

    if-nez v4, :cond_10

    move v10, v11

    goto :goto_9

    :cond_10
    move v10, v14

    :goto_9
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1578
    iget-object v9, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    const/high16 v10, 0x41400000    # 12.0f

    const/4 v12, 0x1

    invoke-virtual {v9, v12, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    const v10, 0x3f0ccccd    # 0.55f

    const/4 v15, -0x1

    const/high16 v16, 0x41500000    # 13.0f

    const/high16 v19, 0x41200000    # 10.0f

    const/high16 v20, -0x1000000

    if-eqz v2, :cond_12

    .line 1580
    iget-object v8, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v8, v12, v14, v9, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1581
    iget-object v8, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/messenger/R$string;->Gift2TransferMine:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v6, :cond_11

    .line 1584
    iget v8, v6, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    or-int v8, v8, v20

    iget v6, v6, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->pattern_color:I

    or-int v6, v6, v20

    invoke-static {v6, v10}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v6

    invoke-static {v8, v6}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v9

    goto :goto_a

    :cond_11
    const v9, 0x40ffffff    # 7.9999995f

    .line 1588
    :goto_a
    iget-object v6, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceBackground:Lorg/telegram/ui/Gifts/GiftSheet$StarsBackgroundView;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const v10, 0x30ffffff

    invoke-static {v9, v10}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v12

    invoke-static {v8, v9, v12}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1589
    iget-object v6, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1591
    iget-object v6, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1592
    iget-object v6, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v9, v10}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v10

    invoke-static {v8, v9, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_16

    :cond_12
    const/high16 v21, 0x41100000    # 9.0f

    const/16 v9, 0x2c

    .line 1593
    const-string v12, "XTR "

    const/high16 v23, 0x41000000    # 8.0f

    if-eqz v4, :cond_13

    .line 1594
    iget-object v8, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v8, v7, v14, v11, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1595
    invoke-virtual {v1}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getResellStars()J

    move-result-wide v7

    .line 1596
    iget v11, v6, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    or-int v11, v11, v20

    iget v6, v6, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->pattern_color:I

    or-int v6, v6, v20

    invoke-static {v6, v10}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v6

    invoke-static {v11, v6}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v6

    .line 1597
    iget-object v10, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1598
    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceBackground:Lorg/telegram/ui/Gifts/GiftSheet$StarsBackgroundView;

    new-instance v8, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;

    const v9, 0x70ffffff

    invoke-direct {v8, v9, v6}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;-><init>(II)V

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1599
    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1601
    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1602
    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v8, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1604
    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->chanceTextView:Landroid/widget/TextView;

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v8, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_16

    .line 1606
    :cond_13
    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-virtual {v7, v11, v14, v15, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    if-eqz v3, :cond_15

    .line 1609
    iget-wide v14, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_resale:J

    cmp-long v11, v14, v17

    if-lez v11, :cond_15

    move-object v11, v8

    .line 1610
    iget-wide v7, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resell_min_stars:J

    const-wide/16 v24, 0x1

    cmp-long v14, v14, v24

    if-lez v14, :cond_14

    .line 1611
    iget v14, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->currentAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController;->config:Lorg/telegram/messenger/AppGlobalConfig;

    iget-object v14, v14, Lorg/telegram/messenger/AppGlobalConfig;->starsStarGiftResaleAmountMax:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    invoke-virtual {v14}, Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;->get()I

    move-result v14

    int-to-long v14, v14

    cmp-long v14, v7, v14

    if-gez v14, :cond_14

    const/16 v22, 0x1

    goto :goto_d

    :cond_14
    :goto_b
    const/16 v22, 0x0

    goto :goto_d

    :cond_15
    move-object v11, v8

    .line 1615
    iget-wide v7, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->stars:J

    if-eqz p3, :cond_16

    iget-boolean v14, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->can_upgrade:Z

    if-eqz v14, :cond_16

    iget-wide v14, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->upgrade_stars:J

    goto :goto_c

    :cond_16
    move-wide/from16 v14, v17

    :goto_c
    add-long/2addr v7, v14

    goto :goto_b

    .line 1618
    :goto_d
    iget-boolean v14, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->auction:Z

    if-eqz v14, :cond_18

    iget-wide v14, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_resale:J

    cmp-long v14, v14, v17

    if-nez v14, :cond_18

    .line 1619
    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    iget-boolean v8, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sold_out:Z

    if-eqz v8, :cond_17

    sget v8, Lorg/telegram/messenger/R$string;->Gift2AuctionPriceView:I

    goto :goto_e

    :cond_17
    sget v8, Lorg/telegram/messenger/R$string;->Gift2AuctionPriceJoin:I

    :goto_e
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 1621
    :cond_18
    iget-object v14, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v22, :cond_19

    move-object v8, v11

    goto :goto_f

    :cond_19
    const-string v8, ""

    :goto_f
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const v8, 0x3f35c28f    # 0.71f

    invoke-static {v7, v8}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1624
    :goto_10
    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceBackground:Lorg/telegram/ui/Gifts/GiftSheet$StarsBackgroundView;

    new-instance v8, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;

    instance-of v9, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    const v11, 0x40e8ab02

    const v12, 0x1eeba52d

    if-eqz v9, :cond_1a

    const v14, 0x40ffffff    # 7.9999995f

    goto :goto_11

    :cond_1a
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v14

    if-eqz v14, :cond_1b

    move v14, v12

    goto :goto_11

    :cond_1b
    move v14, v11

    :goto_11
    invoke-direct {v8, v14}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;-><init>(I)V

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1625
    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v8

    const v14, -0x145ad3

    if-eqz v8, :cond_1c

    move v8, v14

    goto :goto_12

    :cond_1c
    const v8, -0x2988de

    :goto_12
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1627
    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v8

    if-eqz v8, :cond_1d

    goto :goto_13

    :cond_1d
    const v14, -0x2988de

    :goto_13
    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1628
    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->tonOnlySaleView:Landroid/widget/ImageView;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    if-eqz v9, :cond_1e

    const v9, 0x40ffffff    # 7.9999995f

    goto :goto_14

    :cond_1e
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v9

    if-eqz v9, :cond_1f

    move v9, v12

    goto :goto_14

    :cond_1f
    move v9, v11

    :goto_14
    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v6, :cond_20

    .line 1630
    iget v7, v6, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    or-int v7, v7, v20

    iget v6, v6, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->pattern_color:I

    or-int v6, v6, v20

    invoke-static {v6, v10}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v6

    invoke-static {v7, v6}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v6

    goto :goto_15

    :cond_20
    const/4 v6, 0x0

    .line 1631
    :goto_15
    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->chanceTextView:Landroid/widget/TextView;

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v8, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1633
    :goto_16
    iget-object v6, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v7, 0x42ce0000    # 103.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1634
    iget-object v6, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iput v13, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1635
    iget-object v6, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->starsPriceView:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    const/4 v6, 0x0

    .line 1637
    iput-object v6, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    .line 1639
    iput-object v6, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    .line 1640
    iput-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 1641
    iput-boolean v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->giftMine:Z

    .line 1642
    iput-object v6, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 1643
    iput-boolean v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->allowResaleInGifts:Z

    .line 1644
    iput-boolean v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->inResalePage:Z

    const/4 v7, 0x0

    .line 1645
    iput-boolean v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->inCollection:Z

    .line 1646
    iput-boolean v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->inCrafting:Z

    .line 1647
    iput-object v6, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->title:Lorg/telegram/ui/Components/Text;

    .line 1648
    iput-object v6, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitle:Lorg/telegram/ui/Components/Text;

    .line 1650
    invoke-virtual {v0, v7, v7}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setPinned(ZZ)V

    .line 1651
    invoke-direct {v0}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->updateRibbonText()V

    return v7
.end method
