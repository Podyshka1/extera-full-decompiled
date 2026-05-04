.class public Lorg/telegram/ui/Cells/UserCell2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private checkBox:Lorg/telegram/ui/Components/CheckBox;

.field private checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

.field private currentAccount:I

.field private currentDrawable:I

.field private currentId:I

.field private currentName:Ljava/lang/CharSequence;

.field private currentObject:Lorg/telegram/tgnet/TLObject;

.field private currentStatus:Ljava/lang/CharSequence;

.field private imageView:Landroid/widget/ImageView;

.field private lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private lastName:Ljava/lang/String;

.field private lastStatus:I

.field private nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private statusColor:I

.field private statusOnlineColor:I

.field private statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Cells/UserCell2;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    .line 73
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 63
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v4, v0, Lorg/telegram/ui/Cells/UserCell2;->currentAccount:I

    .line 74
    iput-object v3, v0, Lorg/telegram/ui/Cells/UserCell2;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 76
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Cells/UserCell2;->statusColor:I

    .line 77
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Cells/UserCell2;->statusOnlineColor:I

    .line 79
    new-instance v4, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v4}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Cells/UserCell2;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 81
    new-instance v4, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/UserCell2;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v5, 0x42400000    # 48.0f

    .line 82
    invoke-static {v5}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 83
    iget-object v4, v0, Lorg/telegram/ui/Cells/UserCell2;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v6, 0x3

    const/4 v7, 0x5

    if-eqz v5, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, v6

    :goto_0
    or-int/lit8 v11, v8, 0x30

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    move v12, v8

    goto :goto_1

    :cond_1
    add-int/lit8 v9, p2, 0x7

    int-to-float v9, v9

    move v12, v9

    :goto_1
    if-eqz v5, :cond_2

    add-int/lit8 v5, p2, 0x7

    int-to-float v5, v5

    move v14, v5

    goto :goto_2

    :cond_2
    move v14, v8

    :goto_2
    const/4 v15, 0x0

    const/16 v9, 0x30

    const/high16 v10, 0x42400000    # 48.0f

    const/high16 v13, 0x41300000    # 11.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v4, Lorg/telegram/ui/Cells/UserCell2$1;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Cells/UserCell2$1;-><init>(Lorg/telegram/ui/Cells/UserCell2;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/UserCell2;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 92
    invoke-static {v4}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 93
    iget-object v4, v0, Lorg/telegram/ui/Cells/UserCell2;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v5, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 94
    iget-object v4, v0, Lorg/telegram/ui/Cells/UserCell2;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 95
    iget-object v4, v0, Lorg/telegram/ui/Cells/UserCell2;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 96
    iget-object v4, v0, Lorg/telegram/ui/Cells/UserCell2;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_3

    move v5, v7

    goto :goto_3

    :cond_3
    move v5, v6

    :goto_3
    or-int/lit8 v5, v5, 0x30

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 97
    iget-object v4, v0, Lorg/telegram/ui/Cells/UserCell2;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_4

    move v9, v7

    goto :goto_4

    :cond_4
    move v9, v6

    :goto_4
    or-int/lit8 v12, v9, 0x30

    const/16 v9, 0x12

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eqz v5, :cond_6

    if-ne v2, v11, :cond_5

    move v13, v9

    goto :goto_5

    :cond_5
    move v13, v10

    :goto_5
    add-int/lit8 v13, v13, 0x1c

    :goto_6
    int-to-float v13, v13

    goto :goto_7

    :cond_6
    add-int/lit8 v13, p2, 0x44

    goto :goto_6

    :goto_7
    if-eqz v5, :cond_7

    add-int/lit8 v5, p2, 0x44

    int-to-float v5, v5

    :goto_8
    move v15, v5

    goto :goto_a

    :cond_7
    if-ne v2, v11, :cond_8

    goto :goto_9

    :cond_8
    move v9, v10

    :goto_9
    add-int/lit8 v9, v9, 0x1c

    int-to-float v5, v9

    goto :goto_8

    :goto_a
    const/16 v16, 0x0

    move v5, v10

    const/4 v10, -0x1

    move v9, v11

    const/high16 v11, 0x41a00000    # 20.0f

    const/high16 v14, 0x41680000    # 14.5f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v4, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/UserCell2;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v10, 0xe

    .line 100
    invoke-virtual {v4, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 101
    iget-object v4, v0, Lorg/telegram/ui/Cells/UserCell2;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v10, "fonts/rregular.ttf"

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 102
    iget-object v4, v0, Lorg/telegram/ui/Cells/UserCell2;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_9

    move v10, v7

    goto :goto_b

    :cond_9
    move v10, v6

    :goto_b
    or-int/lit8 v10, v10, 0x30

    invoke-virtual {v4, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 103
    iget-object v4, v0, Lorg/telegram/ui/Cells/UserCell2;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_a

    move v11, v7

    goto :goto_c

    :cond_a
    move v11, v6

    :goto_c
    or-int/lit8 v14, v11, 0x30

    const/high16 v11, 0x41e00000    # 28.0f

    if-eqz v10, :cond_b

    move v15, v11

    goto :goto_d

    :cond_b
    add-int/lit8 v12, p2, 0x44

    int-to-float v12, v12

    move v15, v12

    :goto_d
    if-eqz v10, :cond_c

    add-int/lit8 v10, p2, 0x44

    int-to-float v11, v10

    :cond_c
    move/from16 v17, v11

    const/16 v18, 0x0

    const/4 v12, -0x1

    const/high16 v13, 0x41a00000    # 20.0f

    const/high16 v16, 0x42160000    # 37.5f

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/UserCell2;->imageView:Landroid/widget/ImageView;

    .line 106
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 107
    iget-object v4, v0, Lorg/telegram/ui/Cells/UserCell2;->imageView:Landroid/widget/ImageView;

    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v11, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 108
    iget-object v4, v0, Lorg/telegram/ui/Cells/UserCell2;->imageView:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v4, v0, Lorg/telegram/ui/Cells/UserCell2;->imageView:Landroid/widget/ImageView;

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_d

    move v11, v7

    goto :goto_e

    :cond_d
    move v11, v6

    :goto_e
    or-int/lit8 v14, v11, 0x10

    const/high16 v11, 0x41800000    # 16.0f

    if-eqz v10, :cond_e

    move v15, v8

    goto :goto_f

    :cond_e
    move v15, v11

    :goto_f
    if-eqz v10, :cond_f

    move/from16 v17, v11

    goto :goto_10

    :cond_f
    move/from16 v17, v8

    :goto_10
    const/16 v18, 0x0

    const/4 v12, -0x2

    const/high16 v13, -0x40000000    # -2.0f

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-ne v2, v9, :cond_13

    .line 112
    new-instance v2, Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-direct {v2, v1, v5, v3}, Lorg/telegram/ui/Components/CheckBoxSquare;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/UserCell2;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    .line 113
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_10

    goto :goto_11

    :cond_10
    move v6, v7

    :goto_11
    or-int/lit8 v11, v6, 0x10

    const/high16 v3, 0x41980000    # 19.0f

    if-eqz v1, :cond_11

    move v12, v3

    goto :goto_12

    :cond_11
    move v12, v8

    :goto_12
    if-eqz v1, :cond_12

    move v14, v8

    goto :goto_13

    :cond_12
    move v14, v3

    :goto_13
    const/4 v15, 0x0

    const/16 v9, 0x12

    const/high16 v10, 0x41900000    # 18.0f

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_13
    const/4 v4, 0x1

    if-ne v2, v4, :cond_17

    .line 115
    new-instance v2, Lorg/telegram/ui/Components/CheckBox;

    sget v4, Lorg/telegram/messenger/R$drawable;->round_check2:I

    invoke-direct {v2, v1, v4}, Lorg/telegram/ui/Components/CheckBox;-><init>(Landroid/content/Context;I)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/UserCell2;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x4

    .line 116
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 117
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell2;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setColor(II)V

    .line 118
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell2;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_14

    move v6, v7

    :cond_14
    or-int/lit8 v11, v6, 0x30

    if-eqz v2, :cond_15

    move v12, v8

    goto :goto_14

    :cond_15
    add-int/lit8 v3, p2, 0x25

    int-to-float v3, v3

    move v12, v3

    :goto_14
    if-eqz v2, :cond_16

    add-int/lit8 v2, p2, 0x25

    int-to-float v8, v2

    :cond_16
    move v14, v8

    const/4 v15, 0x0

    const/16 v9, 0x16

    const/high16 v10, 0x41b00000    # 22.0f

    const/high16 v13, 0x42240000    # 41.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_17
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 179
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell2;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 169
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x428c0000    # 70.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCheckDisabled(Z)V
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell2;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CheckBoxSquare;->setDisabled(Z)V

    :cond_0
    return-void
.end method

.method public setCurrentId(I)V
    .locals 0

    .line 144
    iput p1, p0, Lorg/telegram/ui/Cells/UserCell2;->currentId:I

    return-void
.end method

.method public setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 124
    iput-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->currentStatus:Ljava/lang/CharSequence;

    .line 125
    iput-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->currentName:Ljava/lang/CharSequence;

    .line 126
    iput-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->currentObject:Lorg/telegram/tgnet/TLObject;

    .line 127
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell2;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string p3, ""

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 128
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell2;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 129
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell2;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 132
    :cond_0
    iput-object p3, p0, Lorg/telegram/ui/Cells/UserCell2;->currentStatus:Ljava/lang/CharSequence;

    .line 133
    iput-object p2, p0, Lorg/telegram/ui/Cells/UserCell2;->currentName:Ljava/lang/CharSequence;

    .line 134
    iput-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->currentObject:Lorg/telegram/tgnet/TLObject;

    .line 135
    iput p4, p0, Lorg/telegram/ui/Cells/UserCell2;->currentDrawable:I

    const/4 p1, 0x0

    .line 136
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/UserCell2;->update(I)V

    return-void
.end method

.method public setNameTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell2;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public update(I)V
    .locals 11

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell2;->currentObject:Lorg/telegram/tgnet/TLObject;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 191
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 192
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object v3, v1

    move-object v1, v2

    goto :goto_1

    :cond_0
    move-object v1, v2

    :goto_0
    move-object v3, v1

    goto :goto_1

    .line 195
    :cond_1
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_3

    .line 196
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 197
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object v3, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    :cond_2
    move-object v1, v0

    move-object v0, v2

    move-object v3, v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    move-object v1, v0

    goto :goto_0

    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_d

    .line 204
    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr v6, p1

    if-eqz v6, :cond_7

    .line 205
    iget-object v6, p0, Lorg/telegram/ui/Cells/UserCell2;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v6, :cond_4

    if-eqz v3, :cond_6

    :cond_4
    if-nez v6, :cond_5

    if-nez v3, :cond_6

    :cond_5
    if-eqz v6, :cond_7

    if-eqz v3, :cond_7

    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_6

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v7, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v6, v7, :cond_7

    :cond_6
    move v6, v4

    goto :goto_2

    :cond_7
    move v6, v5

    :goto_2
    if-eqz v0, :cond_9

    if-nez v6, :cond_9

    .line 209
    sget v7, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int/2addr v7, p1

    if-eqz v7, :cond_9

    .line 211
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v7, :cond_8

    .line 212
    iget v7, v7, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_3

    :cond_8
    move v7, v5

    .line 214
    :goto_3
    iget v8, p0, Lorg/telegram/ui/Cells/UserCell2;->lastStatus:I

    if-eq v7, v8, :cond_9

    move v6, v4

    :cond_9
    if-nez v6, :cond_b

    .line 218
    iget-object v7, p0, Lorg/telegram/ui/Cells/UserCell2;->currentName:Ljava/lang/CharSequence;

    if-nez v7, :cond_b

    iget-object v7, p0, Lorg/telegram/ui/Cells/UserCell2;->lastName:Ljava/lang/String;

    if-eqz v7, :cond_b

    sget v7, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int/2addr p1, v7

    if-eqz p1, :cond_b

    if-eqz v0, :cond_a

    .line 220
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 222
    :cond_a
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 224
    :goto_4
    iget-object v7, p0, Lorg/telegram/ui/Cells/UserCell2;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    move v6, v4

    goto :goto_5

    :cond_b
    move-object p1, v2

    :cond_c
    :goto_5
    if-nez v6, :cond_e

    goto/16 :goto_e

    :cond_d
    move-object p1, v2

    .line 232
    :cond_e
    iput-object v3, p0, Lorg/telegram/ui/Cells/UserCell2;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_10

    .line 235
    iget-object v3, p0, Lorg/telegram/ui/Cells/UserCell2;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v6, p0, Lorg/telegram/ui/Cells/UserCell2;->currentAccount:I

    invoke-virtual {v3, v6, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    .line 236
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v3, :cond_f

    .line 237
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iput v3, p0, Lorg/telegram/ui/Cells/UserCell2;->lastStatus:I

    goto :goto_6

    .line 239
    :cond_f
    iput v5, p0, Lorg/telegram/ui/Cells/UserCell2;->lastStatus:I

    goto :goto_6

    :cond_10
    if-eqz v1, :cond_11

    .line 242
    iget-object v3, p0, Lorg/telegram/ui/Cells/UserCell2;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v6, p0, Lorg/telegram/ui/Cells/UserCell2;->currentAccount:I

    invoke-virtual {v3, v6, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_6

    .line 243
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/Cells/UserCell2;->currentName:Ljava/lang/CharSequence;

    if-eqz v3, :cond_12

    .line 244
    iget-object v6, p0, Lorg/telegram/ui/Cells/UserCell2;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v7, p0, Lorg/telegram/ui/Cells/UserCell2;->currentId:I

    int-to-long v7, v7

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v7, v8, v3, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 246
    :cond_12
    iget-object v3, p0, Lorg/telegram/ui/Cells/UserCell2;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v6, p0, Lorg/telegram/ui/Cells/UserCell2;->currentId:I

    int-to-long v6, v6

    const-string v8, "#"

    invoke-virtual {v3, v6, v7, v8, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 249
    :goto_6
    iget-object v3, p0, Lorg/telegram/ui/Cells/UserCell2;->currentName:Ljava/lang/CharSequence;

    if-eqz v3, :cond_13

    .line 250
    iput-object v2, p0, Lorg/telegram/ui/Cells/UserCell2;->lastName:Ljava/lang/String;

    .line 251
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_8

    :cond_13
    if-eqz v0, :cond_15

    if-nez p1, :cond_14

    .line 254
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    :cond_14
    iput-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->lastName:Ljava/lang/String;

    goto :goto_7

    :cond_15
    if-nez p1, :cond_16

    .line 256
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :cond_16
    iput-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->lastName:Ljava/lang/String;

    .line 258
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/UserCell2;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 261
    :goto_8
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->currentStatus:Ljava/lang/CharSequence;

    if-eqz p1, :cond_17

    .line 262
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v2, p0, Lorg/telegram/ui/Cells/UserCell2;->statusColor:I

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 263
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/UserCell2;->currentStatus:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 264
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_25

    .line 265
    iget-object v2, p0, Lorg/telegram/ui/Cells/UserCell2;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto/16 :goto_c

    :cond_17
    if-eqz v0, :cond_1d

    .line 268
    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz p1, :cond_19

    .line 269
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v2, p0, Lorg/telegram/ui/Cells/UserCell2;->statusColor:I

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 270
    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_chat_history:Z

    if-eqz p1, :cond_18

    .line 271
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/messenger/R$string;->BotStatusRead:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_a

    .line 273
    :cond_18
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/messenger/R$string;->BotStatusCantRead:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_a

    .line 276
    :cond_19
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget p1, p0, Lorg/telegram/ui/Cells/UserCell2;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long p1, v2, v6

    if-eqz p1, :cond_1c

    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz p1, :cond_1a

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iget v2, p0, Lorg/telegram/ui/Cells/UserCell2;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    if-gt p1, v2, :cond_1c

    :cond_1a
    iget p1, p0, Lorg/telegram/ui/Cells/UserCell2;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_9

    .line 280
    :cond_1b
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v2, p0, Lorg/telegram/ui/Cells/UserCell2;->statusColor:I

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 281
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v2, p0, Lorg/telegram/ui/Cells/UserCell2;->currentAccount:I

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_a

    .line 277
    :cond_1c
    :goto_9
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v2, p0, Lorg/telegram/ui/Cells/UserCell2;->statusOnlineColor:I

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 278
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/messenger/R$string;->Online:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 284
    :goto_a
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/UserCell2;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto/16 :goto_c

    :cond_1d
    if-eqz v1, :cond_24

    .line 286
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v0, p0, Lorg/telegram/ui/Cells/UserCell2;->statusColor:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 287
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-boolean p1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez p1, :cond_20

    .line 288
    iget p1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz p1, :cond_1e

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell2;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v2, "Subscribers"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, p1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_b

    .line 290
    :cond_1e
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 291
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v0, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_b

    .line 293
    :cond_1f
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v0, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_b

    .line 296
    :cond_20
    iget p1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz p1, :cond_21

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell2;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v2, "Members"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, p1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_b

    .line 298
    :cond_21
    iget-boolean p1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz p1, :cond_22

    .line 299
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v0, Lorg/telegram/messenger/R$string;->MegaLocation:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_b

    .line 300
    :cond_22
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 301
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v0, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_b

    .line 303
    :cond_23
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v0, Lorg/telegram/messenger/R$string;->MegaPublic:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 306
    :goto_b
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell2;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_c

    .line 308
    :cond_24
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell2;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    :cond_25
    :goto_c
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v1, :cond_26

    iget-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v0, :cond_26

    goto :goto_d

    :cond_26
    move v4, v5

    :goto_d
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0, v5, v4}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZ)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 313
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_27

    iget p1, p0, Lorg/telegram/ui/Cells/UserCell2;->currentDrawable:I

    if-eqz p1, :cond_28

    :cond_27
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_2a

    iget p1, p0, Lorg/telegram/ui/Cells/UserCell2;->currentDrawable:I

    if-eqz p1, :cond_2a

    .line 314
    :cond_28
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->imageView:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/Cells/UserCell2;->currentDrawable:I

    if-nez v1, :cond_29

    move v5, v0

    :cond_29
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell2;->imageView:Landroid/widget/ImageView;

    iget v0, p0, Lorg/telegram/ui/Cells/UserCell2;->currentDrawable:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2a
    :goto_e
    return-void
.end method
