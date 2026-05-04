.class public Lorg/telegram/ui/Cells/StickerSetCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/StickerSetCell$Factory;
    }
.end annotation


# instance fields
.field public addButtonView:Landroid/widget/TextView;

.field private checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field public deleteView:Landroid/widget/ImageView;

.field private emojis:Z

.field private groupSearch:Z

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private needDivider:Z

.field private final option:I

.field private optionsButton:Landroid/widget/ImageView;

.field public premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

.field private progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private rect:Landroid/graphics/Rect;

.field public removeButtonView:Landroid/widget/TextView;

.field private reorderButton:Landroid/widget/ImageView;

.field private sideButtons:Landroid/widget/FrameLayout;

.field private stateAnimator:Landroid/animation/AnimatorSet;

.field private stickersSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field private textView:Landroid/widget/TextView;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$AW9MPJYU7VTiuiaaHHabSlB9NHs(Lorg/telegram/ui/Cells/StickerSetCell;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->lambda$setReorderable$7(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$GGLQgtzVI2BVP1A-1Dn9EZVwe7c(Lorg/telegram/ui/Cells/StickerSetCell;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->lambda$setStickersSet$4(Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IhGfwscd7Jxx7eLXR3q8A-GtUs0(Lorg/telegram/ui/Cells/StickerSetCell;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->lambda$setStickersSet$5(Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jsxxtlg0amAlFm5NUHdJXqvJNM8(Lorg/telegram/ui/Cells/StickerSetCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KbERFMV2pje_RwKN7ItqAcd8cwA(Lorg/telegram/ui/Cells/StickerSetCell;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->lambda$setReorderable$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$W33Mkm9YVwkyx5gCxgGcLknRU48(Lorg/telegram/ui/Cells/StickerSetCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XdpqxAUsERvu_kIL-Znjd1HhJZ4(Lorg/telegram/ui/Cells/StickerSetCell;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->lambda$setReorderable$8(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$dlJIFYsKHZqBxo-srZ8TPGjWkik(Lorg/telegram/ui/Cells/StickerSetCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->lambda$updateButtonState$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fdG778dZ4ESblOn0QUWm1nVk9cc(Lorg/telegram/ui/Cells/StickerSetCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->lambda$updateButtonState$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uN3rNRHqu_g294wBfpxCM50Jpug(Lorg/telegram/ui/Cells/StickerSetCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zvM7x3yLsO8UzxTf47eW8BdIvBM(Lorg/telegram/ui/Cells/StickerSetCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetoptionsButton(Lorg/telegram/ui/Cells/StickerSetCell;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsideButtons(Lorg/telegram/ui/Cells/StickerSetCell;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Cells/StickerSetCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 101
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->rect:Landroid/graphics/Rect;

    .line 102
    iput v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->option:I

    .line 104
    new-instance v4, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v5, 0x1

    .line 105
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 106
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    .line 107
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v8, 0x3

    if-eqz v6, :cond_0

    const/4 v9, 0x5

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    or-int/lit8 v12, v9, 0x30

    const/high16 v9, 0x41500000    # 13.0f

    const/4 v10, 0x0

    if-eqz v6, :cond_1

    move v13, v10

    goto :goto_1

    :cond_1
    move v13, v9

    :goto_1
    if-eqz v6, :cond_2

    move v15, v9

    goto :goto_2

    :cond_2
    move v15, v10

    :goto_2
    const/16 v16, 0x0

    move v6, v10

    const/16 v10, 0x28

    const/high16 v11, 0x42200000    # 40.0f

    const/high16 v14, 0x41100000    # 9.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x8

    const/4 v10, 0x0

    if-eqz v3, :cond_9

    .line 110
    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    .line 111
    invoke-virtual {v11, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 112
    iget-object v11, v0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-eq v3, v8, :cond_3

    .line 114
    iget-object v11, v0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menuSelector:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    if-ne v3, v5, :cond_5

    .line 117
    iget-object v11, v0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menu:I

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v15

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v15, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 118
    iget-object v11, v0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_actions:I

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    iget-object v11, v0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    sget v13, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v11, v0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_4

    move v13, v8

    goto :goto_3

    :cond_4
    const/4 v13, 0x5

    :goto_3
    or-int/lit8 v13, v13, 0x10

    const/16 v15, 0x28

    invoke-static {v15, v15, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    .line 123
    invoke-virtual {v11, v6}, Landroid/view/View;->setAlpha(F)V

    .line 124
    iget-object v11, v0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v11, v0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 126
    iget-object v11, v0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    sget v12, Lorg/telegram/messenger/R$drawable;->list_reorder:I

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object v11, v0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-direct {v12, v13, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 128
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    const v11, 0x800005

    const/high16 v12, 0x42680000    # 58.0f

    invoke-static {v12, v12, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    new-instance v7, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v11, 0x15

    invoke-direct {v7, v1, v11}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;I)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    .line 131
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    const/4 v13, -0x1

    invoke-virtual {v7, v13, v11, v12}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 132
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 133
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 134
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v17, 0x41c00000    # 24.0f

    const/high16 v18, 0x41c00000    # 24.0f

    const v19, 0x800003

    const/high16 v20, 0x42080000    # 34.0f

    const/high16 v21, 0x41f00000    # 30.0f

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_5
    if-ne v3, v8, :cond_9

    .line 136
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    new-instance v11, Landroid/graphics/PorterDuffColorFilter;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 137
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    sget v11, Lorg/telegram/messenger/R$drawable;->floating_check:I

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_6

    move v12, v8

    goto :goto_4

    :cond_6
    const/4 v12, 0x5

    :goto_4
    or-int/lit8 v19, v12, 0x30

    const/16 v12, 0xa

    if-eqz v11, :cond_7

    move v13, v12

    goto :goto_5

    :cond_7
    move v13, v10

    :goto_5
    int-to-float v13, v13

    if-eqz v11, :cond_8

    move v12, v10

    :cond_8
    int-to-float v11, v12

    const/16 v23, 0x0

    const/16 v17, 0x28

    const/high16 v18, 0x42200000    # 40.0f

    const/high16 v21, 0x41100000    # 9.0f

    move/from16 v22, v11

    move/from16 v20, v13

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    :cond_9
    :goto_6
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    .line 144
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    const/high16 v11, 0x41600000    # 14.0f

    .line 145
    invoke-virtual {v7, v5, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 146
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 147
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->Add:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v12, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v12, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-static {v14, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v14

    new-array v15, v5, [F

    aput v11, v15, v10

    invoke-static {v13, v14, v15}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->createRect(II[F)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v7, v13, v10, v14, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 151
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    const/16 v13, 0x11

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 152
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    new-instance v14, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda5;

    invoke-direct {v14, v0}, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;)V

    invoke-virtual {v7, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    iget-object v14, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    sget-boolean v15, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v15, :cond_a

    move v15, v8

    goto :goto_7

    :cond_a
    const/4 v15, 0x5

    :goto_7
    or-int/lit8 v15, v15, 0x10

    const/high16 v6, -0x40000000    # -2.0f

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v6, v4, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 156
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    .line 157
    invoke-virtual {v7, v5, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 158
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 159
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    sget v14, Lorg/telegram/messenger/R$string;->StickersRemove:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_removeButtonText:I

    invoke-static {v14, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    invoke-static {v12, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    const v14, 0x1affffff

    and-int/2addr v12, v14

    new-array v14, v5, [F

    aput v11, v14, v10

    invoke-static {v10, v12, v14}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->createRect(II[F)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    const/high16 v11, 0x41400000    # 12.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v7, v12, v10, v11, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 163
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 164
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    new-instance v11, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda6;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;)V

    invoke-virtual {v7, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    iget-object v11, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_b

    move v12, v8

    goto :goto_8

    :cond_b
    const/4 v12, 0x5

    :goto_8
    or-int/lit8 v21, v12, 0x10

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v19, -0x40000000    # -2.0f

    const/high16 v20, 0x42000000    # 32.0f

    const/16 v22, 0x0

    const/high16 v23, -0x40000000    # -2.0f

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 168
    new-instance v7, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/high16 v11, 0x40800000    # 4.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-direct {v7, v1, v12, v10, v2}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    .line 169
    sget v2, Lorg/telegram/messenger/R$raw;->unlock_icon:I

    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setIcon(I)V

    .line 170
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v7, Lorg/telegram/messenger/R$string;->Unlock:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v12, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda7;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;)V

    invoke-virtual {v2, v7, v12}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const/high16 v2, 0x41000000    # 8.0f

    .line 172
    :try_start_0
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v12, 0x3f800000    # 1.0f

    .line 173
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    iput v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 174
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/high16 v12, 0x41a00000    # 20.0f

    .line 175
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 176
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->getTextView()Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v12, 0x40400000    # 3.0f

    .line 177
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 178
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v7, v12, v10, v13, v10}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :catch_0
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    iget-object v12, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_c

    move v13, v8

    goto :goto_9

    :cond_c
    const/4 v13, 0x5

    :goto_9
    or-int/lit8 v13, v13, 0x10

    invoke-static {v6, v4, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v7, v12, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 183
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v7, v10, v6, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 184
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_d

    move/from16 v21, v8

    goto :goto_a

    :cond_d
    const/16 v21, 0x5

    :goto_a
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v19, -0x2

    const/high16 v20, -0x40800000    # -1.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda8;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    new-instance v4, Lorg/telegram/ui/Cells/StickerSetCell$1;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Cells/StickerSetCell$1;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    .line 202
    invoke-static {v4}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 203
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 205
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 206
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 207
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 208
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 209
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 210
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/ui/Components/LayoutHelper;->getAbsoluteGravityStart()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 211
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    const/high16 v24, 0x428c0000    # 70.0f

    const/high16 v19, -0x40000000    # -2.0f

    const/high16 v20, -0x40000000    # -2.0f

    const v21, 0x800003

    const/high16 v22, 0x428e0000    # 71.0f

    const/high16 v23, 0x41100000    # 9.0f

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    .line 214
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 216
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 217
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 218
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 219
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/ui/Components/LayoutHelper;->getAbsoluteGravityStart()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 220
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v23, 0x42000000    # 32.0f

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-ne v3, v8, :cond_11

    .line 222
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->deleteView:Landroid/widget/ImageView;

    .line 223
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_close:I

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerSetCell;->deleteView:Landroid/widget/ImageView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 225
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerSetCell;->deleteView:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 226
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerSetCell;->deleteView:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 227
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerSetCell;->deleteView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerSetCell;->deleteView:Landroid/widget/ImageView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_e

    move v7, v8

    goto :goto_b

    :cond_e
    const/4 v7, 0x5

    :goto_b
    or-int/lit8 v20, v7, 0x10

    if-eqz v2, :cond_f

    move/from16 v21, v11

    goto :goto_c

    :cond_f
    const/16 v21, 0x0

    :goto_c
    if-eqz v2, :cond_10

    const/16 v23, 0x0

    goto :goto_d

    :cond_10
    move/from16 v23, v11

    :goto_d
    const/16 v24, 0x0

    const/16 v18, -0x2

    const/high16 v19, -0x40000000    # -2.0f

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    :cond_11
    invoke-virtual {v0, v10, v10}, Lorg/telegram/ui/Cells/StickerSetCell;->updateButtonState(IZ)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 152
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerSetCell;->onAddButtonClick()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 164
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerSetCell;->onRemoveButtonClick()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 170
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerSetCell;->onPremiumButtonClick()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    .line 186
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void

    .line 188
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 189
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void

    .line 190
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 191
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$setReorderable$6(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 507
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setReorderable$7(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 521
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setReorderable$8(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 534
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setStickersSet$4(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 5

    .line 384
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 385
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->needDivider:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->groupSearch:Z

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Cells/StickerSetCell;->setStickersSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;ZZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setStickersSet$5(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1

    .line 383
    new-instance v0, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updateButtonState$10(Landroid/view/View;)V
    .locals 0

    .line 628
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerSetCell;->onPremiumButtonClick()V

    return-void
.end method

.method private synthetic lambda$updateButtonState$9(Landroid/view/View;)V
    .locals 0

    .line 626
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerSetCell;->onPremiumButtonClick()V

    return-void
.end method


# virtual methods
.method public getStickersSet()Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .locals 1

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object v0
.end method

.method public isChecked()Z
    .locals 4

    .line 402
    iget v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->option:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 403
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 406
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    return v3

    .line 408
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->emojis:Z

    if-eqz v0, :cond_3

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    return v3
.end method

.method protected onAddButtonClick()V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 596
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->needDivider:Z

    if-eqz v0, :cond_2

    .line 597
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x428e0000    # 71.0f

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    sub-int/2addr v0, v1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 684
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 685
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 686
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 687
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 247
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42680000    # 58.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->needDivider:Z

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onPremiumButtonClick()V
    .locals 0

    return-void
.end method

.method protected onRemoveButtonClick()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 579
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 580
    iget-object v2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 581
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 585
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->emojis:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 586
    iget-object v2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 587
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 591
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setChecked(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 398
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/StickerSetCell;->setChecked(ZZ)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 9

    .line 422
    iget v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->option:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-wide/16 v4, 0x96

    const/4 v6, 0x0

    const v7, 0x3dcccccd    # 0.1f

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_7

    if-eqz p2, :cond_4

    .line 426
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 427
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Cells/StickerSetCell$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell$2;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;Z)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    move v6, v8

    .line 441
    :cond_1
    invoke-virtual {p2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_2

    move v0, v8

    goto :goto_0

    :cond_2
    move v0, v7

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_3

    move v7, v8

    :cond_3
    invoke-virtual {p2, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 443
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p1, :cond_6

    .line 445
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 446
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 447
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 449
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 450
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 451
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 454
    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->emojis:Z

    if-eqz v0, :cond_e

    if-eqz p2, :cond_b

    .line 456
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 457
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Cells/StickerSetCell$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell$3;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;Z)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_8

    move v6, v8

    .line 471
    :cond_8
    invoke-virtual {p2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_9

    move v0, v8

    goto :goto_1

    :cond_9
    move v0, v7

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_a

    move v7, v8

    :cond_a
    invoke-virtual {p2, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 473
    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_c

    move v2, v3

    :cond_c
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_d

    .line 475
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 476
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 477
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 479
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 480
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 481
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    :cond_e
    return-void
.end method

.method public setDeleteAction(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->deleteView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 416
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->deleteView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public setNeedDivider(Z)V
    .locals 0

    .line 275
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->needDivider:Z

    return-void
.end method

.method public setOnOptionsClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 567
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 570
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnReorderButtonTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setReorderable(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 488
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/StickerSetCell;->setReorderable(ZZ)V

    return-void
.end method

.method public setReorderable(ZZ)V
    .locals 8

    .line 492
    iget v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->option:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    const/4 v4, 0x2

    .line 494
    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    aput v0, v5, v1

    const v0, 0x3f28f5c3    # 0.66f

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    if-eqz p1, :cond_3

    move v2, v0

    .line 495
    :cond_3
    new-array v0, v4, [F

    aput v3, v0, v6

    aput v2, v0, v1

    if-eqz p2, :cond_5

    .line 498
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 499
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    aget v2, v5, v6

    .line 500
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    aget v2, v0, v6

    .line 501
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    aget v2, v0, v6

    .line 502
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v2, 0xc8

    .line 503
    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v4, Lorg/telegram/ui/Components/Easings;->easeOutSine:Landroid/view/animation/Interpolator;

    .line 504
    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v7, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;Z)V

    .line 505
    invoke-virtual {p2, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 509
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 511
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->emojis:Z

    if-eqz p2, :cond_4

    .line 512
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 513
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    aget v5, v5, v1

    .line 514
    invoke-virtual {p2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    aget v5, v0, v1

    .line 515
    invoke-virtual {p2, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    aget v0, v0, v1

    .line 516
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 517
    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 518
    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;Z)V

    .line 519
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 523
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 525
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 526
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    aget v5, v5, v1

    .line 527
    invoke-virtual {p2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    aget v5, v0, v1

    .line 528
    invoke-virtual {p2, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    aget v0, v0, v1

    .line 529
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 530
    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 531
    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;Z)V

    .line 532
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 536
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 540
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    if-eqz p1, :cond_6

    move v3, v6

    goto :goto_3

    :cond_6
    move v3, v2

    :goto_3
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 541
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    aget v3, v5, v6

    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 542
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    aget v3, v0, v6

    invoke-virtual {p2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 543
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    aget v3, v0, v6

    invoke-virtual {p2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 545
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->emojis:Z

    if-eqz p2, :cond_8

    .line 546
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    move v6, v2

    :cond_7
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 547
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    aget p2, v5, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 548
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    aget p2, v0, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 549
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    aget p2, v0, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 551
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    move v6, v2

    :cond_9
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    aget p2, v5, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 553
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    aget p2, v0, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 554
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    aget p2, v0, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    :cond_a
    return-void
.end method

.method public setSearchQuery(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 283
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 284
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 286
    new-instance v4, Landroid/text/SpannableString;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 287
    new-instance v5, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-direct {v5, v6, p3}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v4, v5, v0, v6, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 293
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v1, :cond_1

    .line 294
    const-string v1, "t.me/addemoji/"

    goto :goto_0

    .line 293
    :cond_1
    const-string v1, "t.me/addstickers/"

    .line 296
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 297
    new-instance v3, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 298
    new-instance p1, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-direct {p1, v1, p3}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {v3, p1, v0, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 299
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setStickersSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 279
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Cells/StickerSetCell;->setStickersSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;ZZ)V

    return-void
.end method

.method public setStickersSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;ZZ)V
    .locals 12

    .line 305
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->needDivider:Z

    .line 306
    iput-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move v0, p3

    .line 307
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->groupSearch:Z

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    .line 311
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 314
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 321
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 326
    :goto_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->emojis:Z

    .line 327
    iget-object v3, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/StickerSetCell;->emojis:Z

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 331
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    .line 332
    const-string v3, "Stickers"

    const-string v4, "EmojiCount"

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_10

    .line 333
    iget-object v6, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    iget-boolean v8, p0, Lorg/telegram/ui/Cells/StickerSetCell;->emojis:Z

    if-eqz v8, :cond_4

    move-object v3, v4

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v3, v1

    .line 335
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 336
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_5

    .line 337
    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    cmp-long v6, v8, v10

    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    move-object v4, v7

    :goto_4
    if-nez v4, :cond_7

    .line 343
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    :cond_7
    move-object v8, v4

    const/4 v0, 0x1

    .line 345
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    .line 346
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumbs:Ljava/util/ArrayList;

    const/16 v3, 0x5a

    invoke-static {v1, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    if-nez v1, :cond_8

    move-object v1, v8

    .line 350
    :cond_8
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumbs:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v4, v6, v2}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v4

    .line 353
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_9

    .line 354
    iget-object v1, v8, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 355
    invoke-static {v1, v8}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    goto :goto_5

    .line 357
    :cond_9
    check-cast v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 358
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_version:I

    invoke-static {v1, v8, v3}, Lorg/telegram/messenger/ImageLocation;->getForSticker(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    .line 361
    :goto_5
    iget-boolean v3, p0, Lorg/telegram/ui/Cells/StickerSetCell;->emojis:Z

    if-eqz v3, :cond_a

    const/16 v3, 0x4004

    goto :goto_6

    :cond_a
    move v3, v0

    :goto_6
    invoke-static {v3}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v3

    .line 362
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "50_50"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_b

    const-string v3, "_firstframe"

    goto :goto_7

    :cond_b
    const-string v3, ""

    :goto_7
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_c

    .line 363
    invoke-static {v8, v0}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_8

    :cond_c
    move-object v2, v3

    move-object v3, v4

    goto :goto_a

    :cond_d
    :goto_8
    if-eqz v4, :cond_e

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v8}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    move-object v2, v3

    move-object v3, v4

    const/4 v4, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    goto :goto_9

    :cond_e
    move-object v2, v3

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    move-object v3, v1

    invoke-static {v8}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    .line 369
    :goto_9
    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getAnimatedEmojiColorFilter(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_b

    :goto_a
    if-eqz v1, :cond_f

    .line 372
    iget v4, v1, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-ne v4, v0, :cond_f

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    move-object v4, v3

    const-string v3, "tgs"

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_b

    .line 375
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    move-object v4, v3

    const-string v3, "webp"

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_b

    .line 378
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v2, :cond_11

    move-object v3, v4

    :cond_11
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    .line 381
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    new-instance v3, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;)V

    .line 382
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->fetchDocument(JLorg/telegram/ui/Components/AnimatedEmojiDrawable$ReceivedDocument;)V

    .line 392
    :cond_12
    :goto_b
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->groupSearch:Z

    if-eqz v0, :cond_14

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v2, :cond_13

    const-string v2, "t.me/addemoji/"

    goto :goto_c

    :cond_13
    const-string v2, "t.me/addstickers/"

    :goto_c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    return-void
.end method

.method public updateButtonState(IZ)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 621
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->stateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 622
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v2, 0x0

    .line 623
    iput-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->stateAnimator:Landroid/animation/AnimatorSet;

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 626
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v5, Lorg/telegram/messenger/R$string;->Unlock:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;)V

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    .line 628
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v5, Lorg/telegram/messenger/R$string;->Restore:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;)V

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 630
    :cond_2
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v5, 0x0

    if-eq v1, v3, :cond_4

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    move v6, v5

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v3

    :goto_2
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setEnabled(Z)V

    .line 631
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    const/4 v6, 0x3

    if-ne v1, v6, :cond_5

    move v7, v3

    goto :goto_3

    :cond_5
    move v7, v5

    :goto_3
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 632
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    const/4 v7, 0x4

    if-ne v1, v7, :cond_6

    move v8, v3

    goto :goto_4

    :cond_6
    move v8, v5

    :goto_4
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p2, :cond_13

    .line 634
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v11, v0, Lorg/telegram/ui/Cells/StickerSetCell;->stateAnimator:Landroid/animation/AnimatorSet;

    .line 635
    iget-object v12, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-eq v1, v3, :cond_8

    if-ne v1, v2, :cond_7

    goto :goto_5

    :cond_7
    const/4 v13, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/high16 v13, 0x3f800000    # 1.0f

    .line 636
    :goto_6
    new-array v14, v3, [F

    aput v13, v14, v5

    sget-object v13, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iget-object v14, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-eq v1, v3, :cond_a

    if-ne v1, v2, :cond_9

    goto :goto_8

    :cond_9
    const v15, 0x3f19999a    # 0.6f

    :goto_7
    const/16 v16, 0x8

    goto :goto_9

    :cond_a
    :goto_8
    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_7

    .line 637
    :goto_9
    new-array v4, v3, [F

    aput v15, v4, v5

    sget-object v15, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    invoke-static {v14, v15, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v14, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-eq v1, v3, :cond_c

    if-ne v1, v2, :cond_b

    goto :goto_b

    :cond_b
    const v17, 0x3f19999a    # 0.6f

    :goto_a
    move/from16 v18, v5

    goto :goto_c

    :cond_c
    :goto_b
    const/high16 v17, 0x3f800000    # 1.0f

    goto :goto_a

    .line 638
    :goto_c
    new-array v5, v3, [F

    aput v17, v5, v18

    sget-object v8, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    invoke-static {v14, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v14, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    if-ne v1, v6, :cond_d

    const/high16 v19, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_d
    const/16 v19, 0x0

    .line 639
    :goto_d
    new-array v9, v3, [F

    aput v19, v9, v18

    invoke-static {v14, v13, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v14, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    if-ne v1, v6, :cond_e

    const/high16 v19, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_e
    const v19, 0x3f19999a    # 0.6f

    .line 640
    :goto_e
    new-array v10, v3, [F

    aput v19, v10, v18

    invoke-static {v14, v15, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v14, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    if-ne v1, v6, :cond_f

    const/high16 v19, 0x3f800000    # 1.0f

    :goto_f
    move/from16 v21, v6

    goto :goto_10

    :cond_f
    const v19, 0x3f19999a    # 0.6f

    goto :goto_f

    .line 641
    :goto_10
    new-array v6, v3, [F

    aput v19, v6, v18

    invoke-static {v14, v8, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v14, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    if-ne v1, v7, :cond_10

    const/high16 v17, 0x3f800000    # 1.0f

    :goto_11
    move/from16 v19, v2

    goto :goto_12

    :cond_10
    const/16 v17, 0x0

    goto :goto_11

    .line 642
    :goto_12
    new-array v2, v3, [F

    aput v17, v2, v18

    invoke-static {v14, v13, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v13, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    if-ne v1, v7, :cond_11

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_13

    :cond_11
    const v14, 0x3f19999a    # 0.6f

    .line 643
    :goto_13
    new-array v7, v3, [F

    aput v14, v7, v18

    invoke-static {v13, v15, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v13, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    const/4 v14, 0x4

    if-ne v1, v14, :cond_12

    const/high16 v20, 0x3f800000    # 1.0f

    goto :goto_14

    :cond_12
    const v20, 0x3f19999a    # 0.6f

    .line 644
    :goto_14
    new-array v14, v3, [F

    aput v20, v14, v18

    invoke-static {v13, v8, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const/16 v13, 0x9

    new-array v13, v13, [Landroid/animation/Animator;

    aput-object v12, v13, v18

    aput-object v4, v13, v3

    aput-object v5, v13, v19

    aput-object v9, v13, v21

    const/16 v22, 0x4

    aput-object v10, v13, v22

    const/4 v3, 0x5

    aput-object v6, v13, v3

    const/4 v3, 0x6

    aput-object v2, v13, v3

    const/4 v2, 0x7

    aput-object v7, v13, v2

    aput-object v8, v13, v16

    .line 635
    invoke-virtual {v11, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 646
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->stateAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/Cells/StickerSetCell$4;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Cells/StickerSetCell$4;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;I)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 662
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerSetCell;->stateAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 663
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerSetCell;->stateAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const v3, 0x3f828f5c    # 1.02f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 664
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerSetCell;->stateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_13
    move/from16 v19, v2

    move/from16 v18, v5

    move/from16 v21, v6

    const/16 v16, 0x8

    .line 666
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    move/from16 v4, v19

    if-eq v1, v3, :cond_15

    if-ne v1, v4, :cond_14

    goto :goto_15

    :cond_14
    const/4 v5, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_16
    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 667
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-eq v1, v3, :cond_17

    if-ne v1, v4, :cond_16

    goto :goto_17

    :cond_16
    const v5, 0x3f19999a    # 0.6f

    goto :goto_18

    :cond_17
    :goto_17
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_18
    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleX(F)V

    .line 668
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-eq v1, v3, :cond_19

    if-ne v1, v4, :cond_18

    goto :goto_19

    :cond_18
    const v5, 0x3f19999a    # 0.6f

    goto :goto_1a

    :cond_19
    :goto_19
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_1a
    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleY(F)V

    .line 669
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-eq v1, v3, :cond_1b

    if-ne v1, v4, :cond_1a

    goto :goto_1b

    :cond_1a
    move/from16 v3, v16

    goto :goto_1c

    :cond_1b
    :goto_1b
    move/from16 v3, v18

    :goto_1c
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 670
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    move/from16 v3, v21

    if-ne v1, v3, :cond_1c

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1d

    :cond_1c
    const/4 v4, 0x0

    :goto_1d
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 671
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    if-ne v1, v3, :cond_1d

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1e

    :cond_1d
    const v4, 0x3f19999a    # 0.6f

    :goto_1e
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 672
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    if-ne v1, v3, :cond_1e

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1f

    :cond_1e
    const v4, 0x3f19999a    # 0.6f

    :goto_1f
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 673
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    if-ne v1, v3, :cond_1f

    move/from16 v3, v18

    goto :goto_20

    :cond_1f
    move/from16 v3, v16

    :goto_20
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 674
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    const/4 v14, 0x4

    if-ne v1, v14, :cond_20

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_21

    :cond_20
    const/4 v8, 0x0

    :goto_21
    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 675
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    if-ne v1, v14, :cond_21

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_22

    :cond_21
    const v3, 0x3f19999a    # 0.6f

    :goto_22
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 676
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    if-ne v1, v14, :cond_22

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_23

    :cond_22
    const v9, 0x3f19999a    # 0.6f

    :goto_23
    invoke-virtual {v2, v9}, Landroid/view/View;->setScaleY(F)V

    .line 677
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    if-ne v1, v14, :cond_23

    move/from16 v5, v18

    goto :goto_24

    :cond_23
    move/from16 v5, v16

    :goto_24
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 678
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/StickerSetCell;->updateRightMargin()V

    return-void
.end method

.method public updateRightMargin()V
    .locals 4

    .line 602
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    const v1, 0xf423f

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v2, 0x42680000    # 58.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    const/high16 v0, 0x41d00000    # 26.0f

    .line 603
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 604
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 606
    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return-void

    .line 608
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 609
    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return-void
.end method
