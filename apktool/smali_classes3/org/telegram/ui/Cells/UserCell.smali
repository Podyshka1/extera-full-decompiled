.class public Lorg/telegram/ui/Cells/UserCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private addButton:Landroid/widget/TextView;

.field private adminTextView:Landroid/widget/TextView;

.field protected avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field public avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final botVerification:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private callCellStyle:Z

.field private checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private checkBox3:Landroid/widget/ImageView;

.field private checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

.field private closeView:Landroid/widget/ImageView;

.field private currentAccount:I

.field private currentDrawable:I

.field private currentId:I

.field private currentName:Ljava/lang/CharSequence;

.field private currentObject:Ljava/lang/Object;

.field private currentStatus:Ljava/lang/CharSequence;

.field protected dialogId:J

.field private final emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private final emojiStatus2:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field private imageView:Landroid/widget/ImageView;

.field private isAdmin:Z

.field private isOwner:Z

.field private lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private lastName:Ljava/lang/String;

.field private lastStatus:I

.field private mutual:Z

.field private final mutualContactView:Landroid/widget/ImageView;

.field protected nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field public needDivider:Z

.field private final padding:I

.field private premiumDrawable:Landroid/graphics/drawable/Drawable;

.field protected resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selfAsSavedMessages:Z

.field private statusColor:I

.field private statusOnlineColor:I

.field protected statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private storiable:Z

.field public storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;


# direct methods
.method public static synthetic $r8$lambda$rjQ-bWx2Lp42RMLZthGILoZt50U(Landroid/view/View;)V
    .locals 6

    .line 246
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->MutualContactInfo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    aput-object v3, v4, v1

    invoke-virtual {p0, v0, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetstoriable(Lorg/telegram/ui/Cells/UserCell;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/UserCell;->storiable:Z

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 128
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 132
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 136
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    .line 142
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 104
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v5, v0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    .line 110
    new-instance v5, Lorg/telegram/ui/Cells/UserCell$1;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lorg/telegram/ui/Cells/UserCell$1;-><init>(Lorg/telegram/ui/Cells/UserCell;Z)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/UserCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 143
    iput-object v4, v0, Lorg/telegram/ui/Cells/UserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v7, 0x1

    const/4 v9, 0x3

    if-eqz p5, :cond_3

    .line 147
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/Cells/UserCell;->addButton:Landroid/widget/TextView;

    const/16 v12, 0x11

    .line 148
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 149
    iget-object v11, v0, Lorg/telegram/ui/Cells/UserCell;->addButton:Landroid/widget/TextView;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v12, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object v11, v0, Lorg/telegram/ui/Cells/UserCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v11, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 151
    iget-object v11, v0, Lorg/telegram/ui/Cells/UserCell;->addButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 152
    iget-object v11, v0, Lorg/telegram/ui/Cells/UserCell;->addButton:Landroid/widget/TextView;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    new-array v13, v7, [F

    const/high16 v14, 0x40800000    # 4.0f

    aput v14, v13, v6

    invoke-static {v12, v13}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRectByKey(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v11, v0, Lorg/telegram/ui/Cells/UserCell;->addButton:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->Add:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v11, v0, Lorg/telegram/ui/Cells/UserCell;->addButton:Landroid/widget/TextView;

    const/high16 v12, 0x41880000    # 17.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v11, v13, v6, v12, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 155
    iget-object v11, v0, Lorg/telegram/ui/Cells/UserCell;->addButton:Landroid/widget/TextView;

    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_0

    move v13, v9

    goto :goto_0

    :cond_0
    const/4 v13, 0x5

    :goto_0
    or-int/lit8 v16, v13, 0x30

    if-eqz v12, :cond_1

    move/from16 v17, v5

    goto :goto_1

    :cond_1
    const/16 v17, 0x0

    :goto_1
    if-eqz v12, :cond_2

    const/16 v19, 0x0

    goto :goto_2

    :cond_2
    move/from16 v19, v5

    :goto_2
    const/16 v20, 0x0

    const/4 v14, -0x2

    const/high16 v15, 0x41e00000    # 28.0f

    const/high16 v18, 0x41700000    # 15.0f

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v11, v0, Lorg/telegram/ui/Cells/UserCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/Cells/UserCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    const/high16 v12, 0x42400000    # 48.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    goto :goto_3

    :cond_3
    move v11, v6

    .line 161
    :goto_3
    iput v2, v0, Lorg/telegram/ui/Cells/UserCell;->padding:I

    .line 163
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v12, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    iput v12, v0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    .line 164
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_telegram_color_text:I

    invoke-static {v12, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    iput v12, v0, Lorg/telegram/ui/Cells/UserCell;->statusOnlineColor:I

    .line 166
    new-instance v12, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v12}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v12, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 168
    new-instance v12, Lorg/telegram/ui/Cells/UserCell$2;

    invoke-direct {v12, v0, v1}, Lorg/telegram/ui/Cells/UserCell$2;-><init>(Lorg/telegram/ui/Cells/UserCell;Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v13, 0x42380000    # 46.0f

    .line 187
    invoke-static {v13}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 188
    iget-object v12, v0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_4

    const/4 v14, 0x5

    goto :goto_4

    :cond_4
    move v14, v9

    :goto_4
    or-int/lit8 v17, v14, 0x30

    if-eqz v13, :cond_5

    const/16 v18, 0x0

    goto :goto_5

    :cond_5
    add-int/lit8 v14, v2, 0x7

    int-to-float v14, v14

    move/from16 v18, v14

    :goto_5
    if-eqz v13, :cond_6

    add-int/lit8 v13, v2, 0x7

    int-to-float v13, v13

    move/from16 v20, v13

    goto :goto_6

    :cond_6
    const/16 v20, 0x0

    :goto_6
    const/16 v21, 0x0

    const/16 v15, 0x2e

    const/high16 v16, 0x42380000    # 46.0f

    const/high16 v19, 0x40c00000    # 6.0f

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 191
    new-instance v12, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v12, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 192
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v13, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 193
    iget-object v12, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 194
    iget-object v12, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v13, 0x10

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 195
    iget-object v12, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_7

    const/4 v14, 0x5

    goto :goto_7

    :cond_7
    move v14, v9

    :goto_7
    or-int/lit8 v14, v14, 0x30

    invoke-virtual {v12, v14}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 196
    iget-object v12, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_8

    const/4 v15, 0x5

    goto :goto_8

    :cond_8
    move v15, v9

    :goto_8
    or-int/lit8 v18, v15, 0x30

    const/16 v15, 0x12

    const/4 v8, 0x2

    if-eqz v14, :cond_a

    if-ne v3, v8, :cond_9

    move/from16 v16, v15

    goto :goto_9

    :cond_9
    move/from16 v16, v6

    :goto_9
    add-int/lit8 v16, v16, 0x1c

    add-int v10, v16, v11

    :goto_a
    int-to-float v10, v10

    move/from16 v19, v10

    goto :goto_b

    :cond_a
    add-int/lit8 v10, v2, 0x40

    goto :goto_a

    :goto_b
    if-eqz v14, :cond_b

    add-int/lit8 v10, v2, 0x40

    int-to-float v10, v10

    :goto_c
    move/from16 v21, v10

    goto :goto_e

    :cond_b
    if-ne v3, v8, :cond_c

    goto :goto_d

    :cond_c
    move v15, v6

    :goto_d
    add-int/lit8 v15, v15, 0x1c

    add-int/2addr v15, v11

    int-to-float v10, v15

    goto :goto_c

    :goto_e
    const/16 v22, 0x0

    const/16 v16, -0x1

    const/high16 v17, 0x41a00000    # 20.0f

    const/high16 v20, 0x41200000    # 10.0f

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v12, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    new-instance v10, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v12, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v14, 0x41a00000    # 20.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-direct {v10, v12, v15}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object v10, v0, Lorg/telegram/ui/Cells/UserCell;->botVerification:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 199
    new-instance v10, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v12, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-direct {v10, v12, v15}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object v10, v0, Lorg/telegram/ui/Cells/UserCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 200
    new-instance v10, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v12, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-direct {v10, v12, v14}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object v10, v0, Lorg/telegram/ui/Cells/UserCell;->emojiStatus2:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 202
    new-instance v10, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v10, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v12, 0xf

    .line 203
    invoke-virtual {v10, v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 204
    iget-object v10, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v12, "fonts/rregular.ttf"

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 205
    iget-object v10, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_d

    const/4 v12, 0x5

    goto :goto_f

    :cond_d
    move v12, v9

    :goto_f
    or-int/lit8 v12, v12, 0x30

    invoke-virtual {v10, v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 206
    iget-object v10, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_e

    const/4 v14, 0x5

    goto :goto_10

    :cond_e
    move v14, v9

    :goto_10
    or-int/lit8 v17, v14, 0x30

    if-eqz v12, :cond_f

    add-int/lit8 v14, v11, 0x1c

    :goto_11
    int-to-float v14, v14

    move/from16 v18, v14

    goto :goto_12

    :cond_f
    add-int/lit8 v14, v2, 0x40

    goto :goto_11

    :goto_12
    if-eqz v12, :cond_10

    add-int/lit8 v11, v2, 0x40

    :goto_13
    int-to-float v11, v11

    move/from16 v20, v11

    goto :goto_14

    :cond_10
    add-int/lit8 v11, v11, 0x1c

    goto :goto_13

    :goto_14
    const/16 v21, 0x0

    const/4 v15, -0x1

    const/high16 v16, 0x41a00000    # 20.0f

    const/high16 v19, 0x42000000    # 32.0f

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    .line 209
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 210
    iget-object v10, v0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v14, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v15

    move/from16 p5, v13

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v15, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 211
    iget-object v10, v0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    iget-object v10, v0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    sget-boolean v15, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v15, :cond_11

    const/16 v16, 0x5

    goto :goto_15

    :cond_11
    move/from16 v16, v9

    :goto_15
    or-int/lit8 v25, v16, 0x10

    const/high16 v16, 0x41800000    # 16.0f

    if-eqz v15, :cond_12

    const/16 v26, 0x0

    goto :goto_16

    :cond_12
    move/from16 v26, v16

    :goto_16
    if-eqz v15, :cond_13

    move/from16 v28, v16

    goto :goto_17

    :cond_13
    const/16 v28, 0x0

    :goto_17
    const/16 v29, 0x0

    const/16 v23, -0x2

    const/high16 v24, -0x40000000    # -2.0f

    const/16 v27, 0x0

    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v0, v10, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-ne v3, v8, :cond_17

    .line 215
    new-instance v2, Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-direct {v2, v1, v6}, Lorg/telegram/ui/Components/CheckBoxSquare;-><init>(Landroid/content/Context;Z)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    .line 216
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_14

    move v6, v9

    goto :goto_18

    :cond_14
    const/4 v6, 0x5

    :goto_18
    or-int/lit8 v17, v6, 0x10

    const/high16 v6, 0x41980000    # 19.0f

    if-eqz v3, :cond_15

    move/from16 v18, v6

    goto :goto_19

    :cond_15
    const/16 v18, 0x0

    :goto_19
    if-eqz v3, :cond_16

    const/16 v20, 0x0

    goto :goto_1a

    :cond_16
    move/from16 v20, v6

    :goto_1a
    const/16 v21, 0x0

    const/16 v15, 0x12

    const/high16 v16, 0x41900000    # 18.0f

    const/16 v19, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_21

    :cond_17
    if-ne v3, v7, :cond_1b

    .line 218
    new-instance v3, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v8, 0x15

    invoke-direct {v3, v1, v8, v4}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    .line 219
    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 220
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 221
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    const/4 v10, -0x1

    invoke-virtual {v3, v10, v6, v8}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 222
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_18

    const/4 v8, 0x5

    goto :goto_1b

    :cond_18
    move v8, v9

    :goto_1b
    or-int/lit8 v17, v8, 0x30

    if-eqz v6, :cond_19

    const/16 v18, 0x0

    goto :goto_1c

    :cond_19
    add-int/lit8 v8, v2, 0x18

    int-to-float v8, v8

    move/from16 v18, v8

    :goto_1c
    if-eqz v6, :cond_1a

    add-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    move/from16 v20, v2

    goto :goto_1d

    :cond_1a
    const/16 v20, 0x0

    :goto_1d
    const/16 v21, 0x0

    const/16 v15, 0x18

    const/high16 v16, 0x41c00000    # 24.0f

    const/high16 v19, 0x42100000    # 36.0f

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_21

    :cond_1b
    if-ne v3, v9, :cond_1f

    .line 224
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->checkBox3:Landroid/widget/ImageView;

    .line 225
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 226
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->checkBox3:Landroid/widget/ImageView;

    sget v6, Lorg/telegram/messenger/R$drawable;->account_check:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->checkBox3:Landroid/widget/ImageView;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v8, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-direct {v6, v8, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 228
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->checkBox3:Landroid/widget/ImageView;

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->checkBox3:Landroid/widget/ImageView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_1c

    move v8, v9

    goto :goto_1e

    :cond_1c
    const/4 v8, 0x5

    :goto_1e
    or-int/lit8 v17, v8, 0x10

    if-eqz v6, :cond_1d

    add-int/lit8 v8, v2, 0xa

    int-to-float v8, v8

    move/from16 v18, v8

    goto :goto_1f

    :cond_1d
    const/16 v18, 0x0

    :goto_1f
    if-eqz v6, :cond_1e

    const/16 v20, 0x0

    goto :goto_20

    :cond_1e
    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    move/from16 v20, v2

    :goto_20
    const/16 v21, 0x0

    const/16 v15, 0x18

    const/high16 v16, 0x41c00000    # 24.0f

    const/16 v19, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1f
    :goto_21
    if-eqz p4, :cond_23

    .line 233
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    const v3, 0x3d4ccccd    # 0.05f

    const v6, 0x3f99999a    # 1.2f

    .line 234
    invoke-static {v2, v3, v6}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 235
    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 236
    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_profile_creatorIcon:I

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_20

    move v4, v9

    goto :goto_22

    :cond_20
    const/4 v4, 0x5

    :goto_22
    or-int/lit8 v17, v4, 0x30

    const/high16 v4, 0x41b80000    # 23.0f

    if-eqz v3, :cond_21

    move/from16 v18, v4

    goto :goto_23

    :cond_21
    const/16 v18, 0x0

    :goto_23
    if-eqz v3, :cond_22

    const/16 v20, 0x0

    goto :goto_24

    :cond_22
    move/from16 v20, v4

    :goto_24
    const/16 v21, 0x0

    const/4 v15, -0x2

    const/high16 v16, -0x40000000    # -2.0f

    const/high16 v19, 0x41200000    # 10.0f

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    :cond_23
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->mutualContactView:Landroid/widget/ImageView;

    .line 241
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_switch:I

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSelector:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 243
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 244
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 245
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    new-instance v1, Lorg/telegram/ui/Cells/UserCell$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/telegram/ui/Cells/UserCell$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_24

    move v8, v9

    goto :goto_25

    :cond_24
    const/4 v8, 0x5

    :goto_25
    or-int/lit8 v11, v8, 0x10

    const/high16 v3, 0x41200000    # 10.0f

    if-eqz v1, :cond_25

    move v12, v3

    goto :goto_26

    :cond_25
    const/4 v12, 0x0

    :goto_26
    if-eqz v1, :cond_26

    const/4 v14, 0x0

    goto :goto_27

    :cond_26
    move v14, v3

    :goto_27
    const/4 v15, 0x0

    const/16 v9, 0x28

    const/high16 v10, 0x42200000    # 40.0f

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    invoke-virtual {v0, v7}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 806
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    .line 807
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public getCurrentObject()Ljava/lang/Object;
    .locals 1

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getDialogId()J
    .locals 2

    .line 831
    iget-wide v0, p0, Lorg/telegram/ui/Cells/UserCell;->dialogId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 517
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 518
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 813
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 814
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 815
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 816
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->emojiStatus2:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 817
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->botVerification:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 822
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 823
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 824
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    .line 825
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->emojiStatus2:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    .line 826
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->botVerification:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    .line 827
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->onDetachFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 785
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/UserCell;->needDivider:Z

    if-eqz v0, :cond_2

    .line 786
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x42880000    # 68.0f

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
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

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

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

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
    .locals 3

    .line 792
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 793
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    const-string v1, "android.widget.CheckBox"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 794
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 795
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 796
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void

    .line 797
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 798
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 799
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 800
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 506
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 507
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/UserCell;->callCellStyle:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42600000    # 56.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42680000    # 58.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/UserCell;->needDivider:Z

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 505
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public openStory(JLjava/lang/Runnable;)V
    .locals 2

    .line 118
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReady(Ljava/lang/Runnable;)V

    .line 121
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object p3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object v1

    invoke-virtual {p3, v0, p1, p2, v1}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;JLorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    :cond_0
    return-void
.end method

.method public setAddButtonVisible(Z)V
    .locals 1

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->addButton:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 280
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setAdminRole(Ljava/lang/String;ZZZLandroid/view/View$OnClickListener;)V
    .locals 8

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/UserCell;->isAdmin:Z

    .line 289
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/UserCell;->isOwner:Z

    if-eqz p3, :cond_1

    .line 292
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_tagCreator:I

    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 294
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_tagAdmin:I

    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    .line 295
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    goto :goto_0

    .line 298
    :cond_3
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAdminText:I

    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 300
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x3df5c28f    # 0.12f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x42000000    # 32.0f

    const/high16 v5, 0x40c00000    # 6.0f

    const/4 v6, 0x0

    if-nez p2, :cond_6

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_5

    .line 307
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 308
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    sget p3, Lorg/telegram/messenger/R$string;->AddTag:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p2, p3, v3, v7, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 310
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 311
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p3, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 312
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 314
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 316
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 317
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 318
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 302
    :cond_6
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p2, p3, v3, v7, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 304
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 305
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-static {p3, v0}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 306
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    if-nez p1, :cond_8

    if-eqz p4, :cond_7

    goto :goto_3

    :cond_7
    const/16 p3, 0x8

    goto :goto_4

    :cond_8
    :goto_3
    move p3, v6

    :goto_4
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x1

    if-nez p1, :cond_a

    if-eqz p4, :cond_9

    goto :goto_5

    .line 326
    :cond_9
    invoke-virtual {p0, v6, p2, v6}, Lorg/telegram/ui/Cells/UserCell;->setRightPadding(IZZ)V

    return-void

    .line 322
    :cond_a
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 323
    iget-object p3, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-virtual {p3, p1, v6, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    float-to-double p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-int p1, p3

    .line 324
    invoke-virtual {p0, p1, p2, v6}, Lorg/telegram/ui/Cells/UserCell;->setRightPadding(IZZ)V

    return-void
.end method

.method public setAvatarPadding(I)V
    .locals 1

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/UserCell;->setAvatarPadding(II)V

    return-void
.end method

.method public setAvatarPadding(II)V
    .locals 5

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 257
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, 0x7

    int-to-float v1, v1

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 258
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    add-int/lit8 v1, p1, 0x7

    int-to-float v1, v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 259
    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 262
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v3, 0x0

    const/16 v4, 0x12

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    add-int/lit8 v1, v1, 0x1c

    :goto_3
    int-to-float v1, v1

    goto :goto_4

    :cond_3
    add-int/lit8 v1, p1, 0x40

    add-int/2addr v1, p2

    goto :goto_3

    :goto_4
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 263
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_4

    add-int/lit8 v1, p1, 0x40

    add-int/2addr v1, p2

    int-to-float v1, v1

    goto :goto_5

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v1, :cond_5

    move v3, v4

    :cond_5
    add-int/lit8 v3, v3, 0x1c

    int-to-float v1, v3

    :goto_5
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 266
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v3, 0x41e00000    # 28.0f

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    add-int/lit8 v1, p1, 0x40

    add-int/2addr v1, p2

    int-to-float v1, v1

    :goto_6
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 267
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_7

    add-int/lit8 v1, p1, 0x40

    add-int/2addr v1, p2

    int-to-float v3, v1

    :cond_7
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_a

    .line 270
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 271
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_8

    move v1, v2

    goto :goto_7

    :cond_8
    add-int/lit8 v1, p1, 0x20

    add-int/2addr v1, p2

    int-to-float v1, v1

    :goto_7
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 272
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_9

    add-int/lit8 p1, p1, 0x20

    add-int/2addr p1, p2

    int-to-float v2, p1

    :cond_9
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_a
    return-void
.end method

.method public setCallCellStyle(I)V
    .locals 13

    const/4 v0, 0x1

    .line 490
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/UserCell;->callCellStyle:Z

    .line 491
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 492
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v2, 0x3

    const/4 v3, 0x5

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    or-int/lit8 v7, v4, 0x30

    const/high16 v4, 0x41f00000    # 30.0f

    if-eqz v1, :cond_1

    move v8, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v5, p1, 0x42

    int-to-float v5, v5

    move v8, v5

    :goto_1
    if-eqz v1, :cond_2

    add-int/lit8 v1, p1, 0x42

    int-to-float v1, v1

    move v10, v1

    goto :goto_2

    :cond_2
    move v10, v4

    :goto_2
    const/4 v11, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 494
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    or-int/lit8 v8, v5, 0x30

    if-eqz v1, :cond_4

    move v9, v4

    goto :goto_4

    :cond_4
    add-int/lit8 v5, p1, 0x42

    int-to-float v5, v5

    move v9, v5

    :goto_4
    if-eqz v1, :cond_5

    add-int/lit8 v1, p1, 0x42

    int-to-float v4, v1

    :cond_5
    move v11, v4

    const/4 v12, 0x0

    const/4 v6, -0x1

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v10, 0x42000000    # 32.0f

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_6

    move v4, v3

    goto :goto_5

    :cond_6
    move v4, v2

    :goto_5
    or-int/lit8 v7, v4, 0x30

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    move v8, v4

    goto :goto_6

    :cond_7
    add-int/lit8 v5, p1, 0x8

    int-to-float v5, v5

    move v8, v5

    :goto_6
    if-eqz v1, :cond_8

    add-int/lit8 v1, p1, 0x8

    int-to-float v1, v1

    move v10, v1

    goto :goto_7

    :cond_8
    move v10, v4

    :goto_7
    const/4 v11, 0x0

    const/16 v5, 0x2c

    const/high16 v6, 0x42300000    # 44.0f

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_c

    .line 498
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_9

    move v2, v3

    :cond_9
    or-int/lit8 v7, v2, 0x30

    if-eqz v1, :cond_a

    move v8, v4

    goto :goto_8

    :cond_a
    add-int/lit8 v2, p1, 0x25

    int-to-float v2, v2

    move v8, v2

    :goto_8
    if-eqz v1, :cond_b

    add-int/lit8 p1, p1, 0x25

    int-to-float v4, p1

    :cond_b
    move v10, v4

    const/4 v11, 0x0

    const/16 v5, 0x18

    const/high16 v6, 0x41c00000    # 24.0f

    const/high16 v9, 0x42000000    # 32.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    return-void
.end method

.method public setCheckDisabled(Z)V
    .locals 1

    .line 481
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CheckBoxSquare;->setDisabled(Z)V

    :cond_0
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 2

    .line 465
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 466
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 469
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void

    .line 470
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v0, :cond_3

    .line 471
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 474
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    return-void

    .line 475
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox3:Landroid/widget/ImageView;

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    .line 476
    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public setCloseIcon(Landroid/view/View$OnClickListener;)V
    .locals 10

    if-nez p1, :cond_1

    .line 883
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->closeView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 884
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 885
    iput-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->closeView:Landroid/widget/ImageView;

    :cond_0
    return-void

    .line 888
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->closeView:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 889
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->closeView:Landroid/widget/ImageView;

    .line 890
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 891
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->closeView:Landroid/widget/ImageView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 892
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->closeView:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 893
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->closeView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    iget-object v3, p0, Lorg/telegram/ui/Cells/UserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 894
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->closeView:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iget-object v2, p0, Lorg/telegram/ui/Cells/UserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 895
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->closeView:Landroid/widget/ImageView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    :cond_2
    or-int/lit8 v5, v2, 0x10

    const/4 v2, 0x0

    const/high16 v3, 0x41600000    # 14.0f

    if-eqz v1, :cond_3

    move v6, v3

    goto :goto_0

    :cond_3
    move v6, v2

    :goto_0
    if-eqz v1, :cond_4

    move v8, v2

    goto :goto_1

    :cond_4
    move v8, v3

    :goto_1
    const/4 v9, 0x0

    const/16 v3, 0x1e

    const/high16 v4, 0x41f00000    # 30.0f

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 897
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->closeView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCurrentId(I)V
    .locals 0

    .line 461
    iput p1, p0, Lorg/telegram/ui/Cells/UserCell;->currentId:I

    return-void
.end method

.method public setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 341
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    return-void
.end method

.method public setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 345
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    return-void
.end method

.method public setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 p1, 0x0

    .line 350
    iput-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->currentStatus:Ljava/lang/CharSequence;

    .line 351
    iput-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    .line 352
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/UserCell;->storiable:Z

    .line 353
    iput-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Ljava/lang/Object;

    .line 354
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string p3, ""

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 355
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 356
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 359
    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 360
    iput-object p4, p0, Lorg/telegram/ui/Cells/UserCell;->currentStatus:Ljava/lang/CharSequence;

    if-eqz p3, :cond_1

    .line 362
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p2, :cond_1

    .line 363
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    invoke-static {p3, p2, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :catch_0
    :cond_1
    iput-object p3, p0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    .line 367
    instance-of p2, p1, Ljava/lang/String;

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lorg/telegram/ui/Cells/UserCell;->storiable:Z

    .line 368
    iput-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Ljava/lang/Object;

    .line 369
    iput p5, p0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    .line 370
    iput-boolean p6, p0, Lorg/telegram/ui/Cells/UserCell;->needDivider:Z

    xor-int/lit8 p1, p6, 0x1

    .line 371
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 372
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    return-void
.end method

.method public setException(Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;Ljava/lang/CharSequence;Z)V
    .locals 8

    .line 381
    iget-boolean v0, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->story:Z

    if-eqz v0, :cond_3

    .line 382
    iget v0, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->notify:I

    if-gtz v0, :cond_1

    iget-boolean v1, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->auto:Z

    if-eqz v1, :cond_1

    .line 383
    sget v0, Lorg/telegram/messenger/R$string;->NotificationEnabledAutomatically:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    move-object v5, v0

    goto/16 :goto_4

    :cond_1
    if-gtz v0, :cond_2

    .line 385
    sget v0, Lorg/telegram/messenger/R$string;->NotificationEnabled:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 387
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->NotificationDisabled:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 391
    :cond_3
    iget-boolean v0, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->hasCustom:Z

    .line 392
    iget v1, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->notify:I

    .line 393
    iget v2, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->muteUntil:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v3, :cond_9

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_9

    .line 395
    iget v1, p0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    sub-int/2addr v2, v1

    if-gtz v2, :cond_5

    if-eqz v0, :cond_4

    .line 398
    sget v0, Lorg/telegram/messenger/R$string;->NotificationsCustom:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 400
    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->NotificationsUnmuted:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_5
    const/16 v0, 0xe10

    .line 402
    const-string v1, "WillUnmuteIn"

    if-ge v2, v0, :cond_6

    .line 403
    sget v0, Lorg/telegram/messenger/R$string;->WillUnmuteIn:I

    div-int/lit8 v2, v2, 0x3c

    new-array v3, v5, [Ljava/lang/Object;

    const-string v6, "Minutes"

    invoke-static {v6, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v1, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_6
    const v0, 0x15180

    const/high16 v3, 0x42700000    # 60.0f

    if-ge v2, v0, :cond_7

    .line 405
    sget v0, Lorg/telegram/messenger/R$string;->WillUnmuteIn:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string v6, "Hours"

    invoke-static {v6, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v1, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    const v0, 0x1e13380

    if-ge v2, v0, :cond_8

    .line 407
    sget v0, Lorg/telegram/messenger/R$string;->WillUnmuteIn:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x41c00000    # 24.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string v6, "Days"

    invoke-static {v6, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v1, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    if-nez v1, :cond_a

    goto :goto_1

    :cond_a
    if-ne v1, v4, :cond_b

    goto :goto_1

    :cond_b
    move v4, v5

    :goto_1
    if-eqz v4, :cond_c

    if-eqz v0, :cond_c

    .line 422
    sget v0, Lorg/telegram/messenger/R$string;->NotificationsCustom:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_c
    if-eqz v4, :cond_d

    .line 424
    sget v0, Lorg/telegram/messenger/R$string;->NotificationsUnmuted:I

    goto :goto_2

    :cond_d
    sget v0, Lorg/telegram/messenger/R$string;->NotificationsMuted:I

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_e

    .line 428
    sget v0, Lorg/telegram/messenger/R$string;->NotificationsOff:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 430
    :cond_e
    iget-boolean v1, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->auto:Z

    if-eqz v1, :cond_0

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Auto"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 435
    :goto_4
    iget-wide v0, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 436
    iget p3, p0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide v0, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 438
    iget p1, p0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p2

    .line 440
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    return-void

    :cond_f
    move-object v1, p0

    goto :goto_5

    :cond_10
    move-object v1, p0

    move-object v4, p2

    .line 443
    iget-wide v2, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 444
    iget p2, v1, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v2, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_12

    const/4 v3, 0x0

    const/4 v6, 0x0

    move v7, p3

    .line 446
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    return-void

    :cond_11
    move v7, p3

    .line 449
    iget p2, v1, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v2, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_12

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 451
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    :cond_12
    :goto_5
    return-void
.end method

.method public setFromUItem(ILorg/telegram/ui/Components/UItem;Z)V
    .locals 11

    .line 835
    iget-object v1, p2, Lorg/telegram/ui/Components/UItem;->chatType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 836
    iget-object v2, p2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    return-void

    :cond_0
    move v10, p3

    .line 839
    iget-wide p2, p2, Lorg/telegram/ui/Components/UItem;->dialogId:J

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    .line 841
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 844
    iget-boolean p1, v6, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz p1, :cond_1

    .line 845
    sget p1, Lorg/telegram/messenger/R$string;->Bot:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v8, p1

    goto :goto_1

    .line 846
    :cond_1
    iget-boolean p1, v6, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-eqz p1, :cond_2

    .line 847
    sget p1, Lorg/telegram/messenger/R$string;->FilterContact:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 849
    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->FilterNonContact:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    .line 851
    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    return-void

    .line 854
    :cond_3
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    neg-long p2, p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 857
    iget p1, v6, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz p1, :cond_5

    .line 858
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 859
    const-string p1, "Subscribers"

    iget p2, v6, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    move-object v8, p1

    goto :goto_3

    .line 861
    :cond_4
    const-string p1, "Members"

    iget p2, v6, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 863
    :cond_5
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 864
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez p1, :cond_6

    .line 865
    sget p1, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 867
    :cond_6
    sget p1, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 870
    :cond_7
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez p1, :cond_8

    .line 871
    sget p1, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 873
    :cond_8
    sget p1, Lorg/telegram/messenger/R$string;->MegaPublic:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :goto_3
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    .line 876
    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    :cond_9
    return-void
.end method

.method public setMutual(Z)V
    .locals 0

    .line 775
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/UserCell;->mutual:Z

    return-void
.end method

.method public setNameTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 457
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setRightPadding(IZZ)V
    .locals 3

    if-lez p1, :cond_0

    const/high16 v0, 0x40c00000    # 6.0f

    .line 331
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p1, v0

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 332
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    move v2, p1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-nez v1, :cond_2

    move v1, p1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    invoke-virtual {p2, v2, v0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    if-eqz p3, :cond_6

    .line 333
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p3, :cond_4

    move v1, p1

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    if-nez p3, :cond_5

    goto :goto_3

    :cond_5
    move p1, v0

    :goto_3
    invoke-virtual {p2, v1, v0, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    return-void
.end method

.method public setSelfAsSavedMessages(Z)V
    .locals 0

    .line 771
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/UserCell;->selfAsSavedMessages:Z

    return-void
.end method

.method public update(I)V
    .locals 19

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 528
    iput-wide v1, v0, Lorg/telegram/ui/Cells/UserCell;->dialogId:J

    .line 529
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Ljava/lang/Object;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 530
    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 531
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v4, :cond_0

    .line 532
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 534
    :goto_0
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v6, v0, Lorg/telegram/ui/Cells/UserCell;->dialogId:J

    move-object v6, v4

    move-object v4, v5

    goto :goto_2

    .line 535
    :cond_1
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_3

    .line 536
    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 537
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v4, :cond_2

    .line 538
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_1

    :cond_2
    move-object v4, v5

    .line 540
    :goto_1
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide v6, v0, Lorg/telegram/ui/Cells/UserCell;->dialogId:J

    move-object v6, v4

    move-object v4, v3

    move-object v3, v5

    goto :goto_2

    :cond_3
    move-object v3, v5

    move-object v4, v3

    move-object v6, v4

    .line 543
    :goto_2
    const-string v7, ""

    if-eqz p1, :cond_e

    .line 545
    sget v10, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int v10, p1, v10

    if-eqz v10, :cond_7

    .line 546
    iget-object v10, v0, Lorg/telegram/ui/Cells/UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v10, :cond_4

    if-eqz v6, :cond_6

    :cond_4
    if-nez v10, :cond_5

    if-nez v6, :cond_6

    :cond_5
    if-eqz v10, :cond_7

    iget-wide v11, v10, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v13, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v11, v11, v13

    if-nez v11, :cond_6

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v11, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v10, v11, :cond_7

    :cond_6
    const/4 v10, 0x1

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    :goto_3
    if-eqz v3, :cond_9

    if-nez v10, :cond_9

    .line 550
    sget v11, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int v11, p1, v11

    if-eqz v11, :cond_9

    .line 552
    iget-object v11, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v11, :cond_8

    .line 553
    iget v11, v11, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    .line 555
    :goto_4
    iget v12, v0, Lorg/telegram/ui/Cells/UserCell;->lastStatus:I

    if-eq v11, v12, :cond_9

    const/4 v10, 0x1

    :cond_9
    if-nez v10, :cond_c

    .line 559
    iget-object v11, v0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    if-nez v11, :cond_c

    iget-object v11, v0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    if-eqz v11, :cond_c

    sget v11, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int v11, p1, v11

    if-eqz v11, :cond_c

    if-eqz v3, :cond_a

    .line 561
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->removeRTL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    :cond_a
    if-nez v4, :cond_b

    move-object v11, v7

    goto :goto_5

    .line 563
    :cond_b
    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_5
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->removeRTL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 565
    :goto_6
    iget-object v12, v0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    const/4 v10, 0x1

    goto :goto_7

    :cond_c
    move-object v11, v5

    :cond_d
    :goto_7
    if-nez v10, :cond_f

    goto/16 :goto_1c

    :cond_e
    move-object v11, v5

    .line 574
    :cond_f
    iget-object v10, v0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Ljava/lang/Object;

    instance-of v10, v10, Ljava/lang/String;

    const-string v12, "50_50"

    const/high16 v13, 0x41980000    # 19.0f

    const/16 v14, 0x8

    if-eqz v10, :cond_1a

    .line 575
    iget-object v10, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    iput v13, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 576
    iget-object v10, v0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 577
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/16 v15, 0x9

    move-wide/from16 v16, v1

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/16 v18, -0x1

    sparse-switch v13, :sswitch_data_0

    goto/16 :goto_9

    :sswitch_0
    const-string v13, "channels"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    goto/16 :goto_9

    :cond_10
    move/from16 v18, v15

    goto/16 :goto_9

    :sswitch_1
    const-string v13, "existing_chats"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    goto/16 :goto_9

    :cond_11
    move/from16 v18, v14

    goto/16 :goto_9

    :sswitch_2
    const-string v13, "muted"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    goto/16 :goto_9

    :cond_12
    move/from16 v18, v1

    goto :goto_9

    :sswitch_3
    const-string v13, "read"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    goto :goto_9

    :cond_13
    move/from16 v18, v2

    goto :goto_9

    :sswitch_4
    const-string v13, "bots"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14

    goto :goto_9

    :cond_14
    move/from16 v18, v9

    goto :goto_9

    :sswitch_5
    const-string v13, "new_chats"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15

    goto :goto_9

    :cond_15
    move/from16 v18, v8

    goto :goto_9

    :sswitch_6
    const-string v13, "contacts"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_16

    goto :goto_9

    :cond_16
    const/4 v10, 0x3

    goto :goto_8

    :sswitch_7
    const-string v13, "non_contacts"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_17

    goto :goto_9

    :cond_17
    const/4 v10, 0x2

    :goto_8
    move/from16 v18, v10

    goto :goto_9

    :sswitch_8
    const-string v13, "groups"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18

    goto :goto_9

    :cond_18
    const/16 v18, 0x1

    goto :goto_9

    :sswitch_9
    const-string v13, "archived"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_19

    goto :goto_9

    :cond_19
    const/16 v18, 0x0

    :goto_9
    packed-switch v18, :pswitch_data_0

    goto :goto_a

    .line 588
    :pswitch_0
    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_a

    .line 606
    :pswitch_1
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_a

    .line 594
    :pswitch_2
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v15}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_a

    .line 597
    :pswitch_3
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_a

    .line 591
    :pswitch_4
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v14}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_a

    .line 603
    :pswitch_5
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_a

    .line 579
    :pswitch_6
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_a

    .line 582
    :pswitch_7
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_a

    .line 585
    :pswitch_8
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_a

    .line 600
    :pswitch_9
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 609
    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v5, v12, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 610
    iput-object v7, v0, Lorg/telegram/ui/Cells/UserCell;->currentStatus:Ljava/lang/CharSequence;

    goto/16 :goto_b

    :cond_1a
    move-wide/from16 v16, v1

    .line 612
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz v3, :cond_1d

    .line 614
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/UserCell;->selfAsSavedMessages:Z

    if-eqz v1, :cond_1b

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 615
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/messenger/R$string;->SavedMessages:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;Z)Z

    .line 616
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 617
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 618
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v5, v12, v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 619
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-void

    .line 622
    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v2, v0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    .line 623
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v1, :cond_1c

    .line 624
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iput v1, v0, Lorg/telegram/ui/Cells/UserCell;->lastStatus:I

    goto :goto_b

    :cond_1c
    const/4 v1, 0x0

    .line 626
    iput v1, v0, Lorg/telegram/ui/Cells/UserCell;->lastStatus:I

    goto :goto_b

    :cond_1d
    if-eqz v4, :cond_1e

    .line 629
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v2, v0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_b

    .line 630
    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1f

    .line 631
    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v8, v0, Lorg/telegram/ui/Cells/UserCell;->currentId:I

    int-to-long v8, v8

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v8, v9, v1, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 633
    :cond_1f
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v2, v0, Lorg/telegram/ui/Cells/UserCell;->currentId:I

    int-to-long v8, v2

    const-string v2, "#"

    invoke-virtual {v1, v8, v9, v2, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 637
    :goto_b
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_20

    .line 638
    iput-object v5, v0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    .line 639
    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_e

    :cond_20
    if-eqz v3, :cond_22

    if-nez v11, :cond_21

    .line 642
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_21
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->removeRTL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_c
    iput-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    goto :goto_d

    :cond_22
    if-eqz v4, :cond_24

    if-nez v11, :cond_23

    .line 644
    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :cond_23
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->removeRTL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    goto :goto_d

    .line 646
    :cond_24
    iput-object v7, v0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    .line 648
    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 651
    :try_start_0
    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/4 v7, 0x0

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    :catch_0
    :cond_25
    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    :goto_e
    if-eqz v3, :cond_26

    .line 658
    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getBotVerificationIcon(Lorg/telegram/tgnet/TLObject;)J

    move-result-wide v1

    goto :goto_f

    :cond_26
    if-eqz v4, :cond_27

    .line 660
    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getBotVerificationIcon(Lorg/telegram/tgnet/TLObject;)J

    move-result-wide v1

    goto :goto_f

    :cond_27
    move-wide/from16 v1, v16

    :goto_f
    cmp-long v7, v1, v16

    if-nez v7, :cond_28

    .line 663
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->botVerification:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 664
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_10

    :cond_28
    const/4 v7, 0x0

    .line 666
    iget-object v8, v0, Lorg/telegram/ui/Cells/UserCell;->botVerification:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v8, v1, v2, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 667
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->botVerification:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object v7, v0, Lorg/telegram/ui/Cells/UserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 668
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->botVerification:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 671
    :goto_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 672
    sget-object v2, Lcom/exteragram/messenger/badges/BadgesController;->INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

    invoke-virtual {v2, v3}, Lcom/exteragram/messenger/badges/BadgesController;->getBadge(Lorg/telegram/tgnet/TLObject;)Lcom/exteragram/messenger/api/dto/BadgeDTO;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 675
    iget-object v7, v0, Lorg/telegram/ui/Cells/UserCell;->emojiStatus2:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v2}, Lcom/exteragram/messenger/api/dto/BadgeDTO;->getDocumentId()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 676
    iget-object v7, v0, Lorg/telegram/ui/Cells/UserCell;->emojiStatus2:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v10}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParticles(ZZ)V

    .line 677
    iget-object v7, v0, Lorg/telegram/ui/Cells/UserCell;->emojiStatus2:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object v9, v0, Lorg/telegram/ui/Cells/UserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 678
    iget-object v7, v0, Lorg/telegram/ui/Cells/UserCell;->emojiStatus2:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    if-eqz v3, :cond_2b

    .line 684
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v7}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v7

    cmp-long v7, v7, v16

    if-eqz v7, :cond_2b

    .line 685
    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v7}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v7

    const/4 v10, 0x0

    invoke-virtual {v2, v7, v8, v10}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 686
    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object v8, v0, Lorg/telegram/ui/Cells/UserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 687
    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 689
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2a

    .line 690
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/Drawable;

    :cond_2a
    const/4 v8, 0x1

    goto/16 :goto_12

    :cond_2b
    if-eqz v3, :cond_2d

    .line 693
    iget v7, v0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/telegram/messenger/MessagesController;->isPremiumUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-eqz v7, :cond_2d

    iget v7, v0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v7

    if-nez v7, :cond_2d

    .line 694
    iget-object v7, v0, Lorg/telegram/ui/Cells/UserCell;->premiumDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_2c

    .line 695
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_premium_liststar:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/ui/Cells/UserCell;->premiumDrawable:Landroid/graphics/drawable/Drawable;

    .line 696
    new-instance v7, Lorg/telegram/ui/Cells/UserCell$3;

    iget-object v8, v0, Lorg/telegram/ui/Cells/UserCell;->premiumDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-direct {v7, v0, v8, v10, v9}, Lorg/telegram/ui/Cells/UserCell$3;-><init>(Lorg/telegram/ui/Cells/UserCell;Landroid/graphics/drawable/Drawable;II)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/UserCell;->premiumDrawable:Landroid/graphics/drawable/Drawable;

    .line 705
    new-instance v8, Landroid/graphics/PorterDuffColorFilter;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object v10, v0, Lorg/telegram/ui/Cells/UserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v9, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2c
    if-nez v2, :cond_2d

    .line 708
    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->premiumDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_2d
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    const/4 v7, 0x0

    .line 712
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    goto :goto_11

    :cond_2e
    move-object v2, v5

    .line 714
    :goto_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_2f

    .line 715
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 719
    :cond_2f
    :goto_12
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 720
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable2(Landroid/graphics/drawable/Drawable;)Z

    .line 721
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableTopPadding(I)V

    .line 723
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->currentStatus:Ljava/lang/CharSequence;

    if-eqz v1, :cond_30

    .line 724
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v2, v0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 725
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->currentStatus:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto/16 :goto_15

    :cond_30
    if-eqz v3, :cond_37

    .line 727
    iget-boolean v1, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v1, :cond_33

    .line 728
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v2, v0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 729
    iget-boolean v1, v3, Lorg/telegram/tgnet/TLRPC$User;->bot_chat_history:Z

    if-nez v1, :cond_32

    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_31

    goto :goto_13

    .line 732
    :cond_31
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/messenger/R$string;->BotStatusCantRead:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_15

    .line 730
    :cond_32
    :goto_13
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/messenger/R$string;->BotStatusRead:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_15

    .line 735
    :cond_33
    iget-wide v1, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget v5, v0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v9

    cmp-long v1, v1, v9

    if-eqz v1, :cond_36

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v1, :cond_34

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iget v2, v0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    if-gt v1, v2, :cond_36

    :cond_34
    iget v1, v0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_14

    .line 739
    :cond_35
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v2, v0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 740
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v2, v0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_15

    .line 736
    :cond_36
    :goto_14
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v2, v0, Lorg/telegram/ui/Cells/UserCell;->statusOnlineColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 737
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/messenger/R$string;->Online:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 745
    :cond_37
    :goto_15
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_38

    iget v1, v0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    if-eqz v1, :cond_39

    :cond_38
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v14, :cond_3b

    iget v1, v0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    if-eqz v1, :cond_3b

    .line 746
    :cond_39
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    iget v2, v0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    if-nez v2, :cond_3a

    move v2, v14

    goto :goto_16

    :cond_3a
    const/4 v2, 0x0

    :goto_16
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 747
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    iget v2, v0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 750
    :cond_3b
    iput-object v6, v0, Lorg/telegram/ui/Cells/UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v3, :cond_3c

    .line 752
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_17

    :cond_3c
    if-eqz v4, :cond_3d

    .line 754
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v4, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_17

    .line 756
    :cond_3d
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 759
    :goto_17
    iget v1, v0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/ui/Cells/UserCell;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v1

    .line 760
    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v4, :cond_3e

    iget-boolean v3, v4, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v3, :cond_3e

    goto :goto_18

    :cond_3e
    const/4 v8, 0x0

    :goto_18
    const/high16 v3, 0x42380000    # 46.0f

    const/4 v7, 0x0

    invoke-static {v3, v7, v8, v1}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZZ)I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 762
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 764
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->mutualContactView:Landroid/widget/ImageView;

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/UserCell;->mutual:Z

    if-eqz v2, :cond_3f

    const/4 v14, 0x0

    :cond_3f
    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 765
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/UserCell;->mutual:Z

    if-eqz v1, :cond_42

    .line 766
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v3, 0x42040000    # 33.0f

    if-eqz v2, :cond_40

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_19

    :cond_40
    const/4 v2, 0x0

    :goto_19
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v4, :cond_41

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_1a
    const/4 v7, 0x0

    goto :goto_1b

    :cond_41
    const/4 v3, 0x0

    goto :goto_1a

    :goto_1b
    invoke-virtual {v1, v2, v7, v3, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_42
    :goto_1c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x664cc81e -> :sswitch_9
        -0x49c2262c -> :sswitch_8
        -0x4760427b -> :sswitch_7
        -0x21d29fad -> :sswitch_6
        -0xffbd344 -> :sswitch_5
        0x2e3b8c -> :sswitch_4
        0x355996 -> :sswitch_3
        0x636f16b -> :sswitch_2
        0x900dc67 -> :sswitch_1
        0x556423d0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
