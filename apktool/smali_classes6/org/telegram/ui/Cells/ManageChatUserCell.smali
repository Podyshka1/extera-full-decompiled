.class public Lorg/telegram/ui/Cells/ManageChatUserCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;
    }
.end annotation


# instance fields
.field private final avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private final avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final currentAccount:I

.field private currentName:Ljava/lang/CharSequence;

.field private currentObject:Ljava/lang/Object;

.field private currentStatus:Ljava/lang/CharSequence;

.field private customImageView:Landroid/widget/ImageView;

.field private delegate:Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;

.field private dividerColor:I

.field private isAdmin:Z

.field private lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private lastName:Ljava/lang/String;

.field private lastStatus:I

.field private final namePadding:I

.field private final nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private needDivider:Z

.field private optionsButton:Landroid/widget/ImageView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private statusColor:I

.field private statusOnlineColor:I

.field private final statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private final storyAvatarParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

.field private storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;


# direct methods
.method public static synthetic $r8$lambda$CoT7sFn0QhR4NmvQ6s7IaX4q66U(Lorg/telegram/ui/Cells/ManageChatUserCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetstoryAvatarParams(Lorg/telegram/ui/Cells/ManageChatUserCell;)Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->storyAvatarParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstoryItem(Lorg/telegram/ui/Cells/ManageChatUserCell;)Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 71
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/ManageChatUserCell;-><init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p5

    .line 75
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, -0x1

    .line 61
    iput v4, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->dividerColor:I

    .line 63
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v4, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentAccount:I

    .line 64
    new-instance v4, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;-><init>(Z)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->storyAvatarParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 76
    iput-object v3, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 78
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusColor:I

    .line 79
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusOnlineColor:I

    .line 81
    iput v2, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->namePadding:I

    .line 83
    new-instance v4, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v4}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 85
    new-instance v4, Lorg/telegram/ui/Cells/ManageChatUserCell$1;

    invoke-direct {v4, v0, v1, v3}, Lorg/telegram/ui/Cells/ManageChatUserCell$1;-><init>(Lorg/telegram/ui/Cells/ManageChatUserCell;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v6, 0x42380000    # 46.0f

    .line 103
    invoke-static {v6}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 104
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v8, 0x3

    const/4 v9, 0x5

    if-eqz v7, :cond_0

    move v10, v9

    goto :goto_0

    :cond_0
    move v10, v8

    :goto_0
    or-int/lit8 v13, v10, 0x30

    const/4 v10, 0x0

    if-eqz v7, :cond_1

    move v14, v10

    goto :goto_1

    :cond_1
    add-int/lit8 v11, p2, 0x7

    int-to-float v11, v11

    move v14, v11

    :goto_1
    if-eqz v7, :cond_2

    add-int/lit8 v7, p2, 0x7

    int-to-float v10, v7

    :cond_2
    move/from16 v16, v10

    const/16 v17, 0x0

    const/16 v11, 0x2e

    const/high16 v12, 0x42380000    # 46.0f

    const/high16 v15, 0x41000000    # 8.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v4, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 107
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v7, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    const/16 v7, 0x11

    .line 108
    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 109
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_3

    move v7, v9

    goto :goto_2

    :cond_3
    move v7, v8

    :goto_2
    or-int/lit8 v7, v7, 0x30

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 111
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_4

    move v10, v9

    goto :goto_3

    :cond_4
    move v10, v8

    :goto_3
    or-int/lit8 v13, v10, 0x30

    if-eqz v7, :cond_5

    move v14, v6

    goto :goto_4

    :cond_5
    add-int/lit8 v10, v2, 0x44

    int-to-float v10, v10

    move v14, v10

    :goto_4
    if-eqz v7, :cond_6

    add-int/lit8 v6, v2, 0x44

    int-to-float v6, v6

    :cond_6
    move/from16 v16, v6

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/high16 v12, 0x41a00000    # 20.0f

    const/high16 v15, 0x41380000    # 11.5f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    invoke-static {v4}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 114
    new-instance v4, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v6, 0xe

    .line 115
    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 116
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_7

    move v6, v9

    goto :goto_5

    :cond_7
    move v6, v8

    :goto_5
    or-int/lit8 v6, v6, 0x30

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 117
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_8

    move v7, v9

    goto :goto_6

    :cond_8
    move v7, v8

    :goto_6
    or-int/lit8 v12, v7, 0x30

    const/high16 v7, 0x41e00000    # 28.0f

    if-eqz v6, :cond_9

    move v13, v7

    goto :goto_7

    :cond_9
    add-int/lit8 v10, v2, 0x44

    int-to-float v10, v10

    move v13, v10

    :goto_7
    if-eqz v6, :cond_a

    add-int/lit8 v2, v2, 0x44

    int-to-float v7, v2

    :cond_a
    move v15, v7

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/high16 v11, 0x41a00000    # 20.0f

    const/high16 v14, 0x420a0000    # 34.5f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p4, :cond_c

    .line 120
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->optionsButton:Landroid/widget/ImageView;

    .line 121
    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 122
    iget-object v1, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->optionsButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menuSelector:I

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v1, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->optionsButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    iget-object v1, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->optionsButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menu:I

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 125
    iget-object v1, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->optionsButton:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 126
    iget-object v1, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->optionsButton:Landroid/widget/ImageView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_b

    goto :goto_8

    :cond_b
    move v8, v9

    :goto_8
    or-int/lit8 v2, v8, 0x30

    const/16 v3, 0x3c

    const/16 v4, 0x40

    invoke-static {v3, v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v1, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->optionsButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Cells/ManageChatUserCell$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Cells/ManageChatUserCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/ManageChatUserCell;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v1, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->optionsButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrUserOptions:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 127
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->delegate:Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;->onOptionsButtonCheck(Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z

    return-void
.end method


# virtual methods
.method public getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method public getCurrentObject()Ljava/lang/Object;
    .locals 1

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getStoryAvatarParams()Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->storyAvatarParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    return-object v0
.end method

.method public getStoryItem()Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentObject:Ljava/lang/Object;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_0

    .line 199
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 387
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->needDivider:Z

    if-eqz v0, :cond_4

    .line 388
    iget v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->dividerColor:I

    if-ltz v0, :cond_0

    .line 389
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dividerExtraPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x42880000    # 68.0f

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_1
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

    if-eqz v2, :cond_2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    sub-int/2addr v0, v1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    iget v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->dividerColor:I

    if-ltz v0, :cond_3

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerExtraPaint:Landroid/graphics/Paint;

    :goto_3
    move-object v2, p1

    move-object v7, v0

    goto :goto_4

    :cond_3
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    goto :goto_3

    :goto_4
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 194
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->needDivider:Z

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public recycle()V
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->cancelLoadImage()V

    return-void
.end method

.method public setCustomImageVisible(Z)V
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->customImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 161
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setCustomRightImage(I)V
    .locals 3

    .line 150
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->customImageView:Landroid/widget/ImageView;

    .line 151
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->customImageView:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 153
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->customImageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedIconUnscrolled:I

    iget-object v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 154
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->customImageView:Landroid/widget/ImageView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    or-int/lit8 v0, v0, 0x30

    const/16 v1, 0x34

    const/16 v2, 0x40

    invoke-static {v1, v2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 166
    iput-object v1, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentStatus:Ljava/lang/CharSequence;

    .line 167
    iput-object v1, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentName:Ljava/lang/CharSequence;

    .line 168
    iput-object v1, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentObject:Ljava/lang/Object;

    .line 169
    iget-object v2, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 170
    iget-object v2, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 171
    iget-object v2, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 174
    :cond_0
    iput-object v2, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentStatus:Ljava/lang/CharSequence;

    move-object/from16 v4, p2

    .line 175
    iput-object v4, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentName:Ljava/lang/CharSequence;

    .line 176
    iput-object v1, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentObject:Ljava/lang/Object;

    .line 177
    iget-object v1, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->optionsButton:Landroid/widget/ImageView;

    const/4 v4, 0x1

    const/high16 v5, 0x41380000    # 11.5f

    const/high16 v6, 0x41a40000    # 20.5f

    const/4 v7, 0x3

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/16 v10, 0x1c

    if-eqz v1, :cond_e

    .line 178
    iget-object v1, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->delegate:Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;

    invoke-interface {v1, v0, v9}, Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;->onOptionsButtonCheck(Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z

    move-result v1

    .line 179
    iget-object v11, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->optionsButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    move v12, v9

    goto :goto_0

    :cond_1
    const/4 v12, 0x4

    :goto_0
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object v11, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_2

    move v13, v8

    goto :goto_1

    :cond_2
    move v13, v7

    :goto_1
    or-int/lit8 v16, v13, 0x30

    const/16 v13, 0x2e

    if-eqz v12, :cond_4

    if-eqz v1, :cond_3

    move v12, v13

    goto :goto_2

    :cond_3
    move v12, v10

    :goto_2
    int-to-float v12, v12

    move/from16 v17, v12

    goto :goto_3

    :cond_4
    iget v12, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->namePadding:I

    add-int/lit8 v12, v12, 0x44

    goto :goto_2

    :goto_3
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v18, v6

    goto :goto_5

    :cond_6
    :goto_4
    move/from16 v18, v5

    :goto_5
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_7

    iget v2, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->namePadding:I

    add-int/lit8 v2, v2, 0x44

    :goto_6
    int-to-float v2, v2

    move/from16 v19, v2

    goto :goto_7

    :cond_7
    if-eqz v1, :cond_8

    move v2, v13

    goto :goto_6

    :cond_8
    move v2, v10

    goto :goto_6

    :goto_7
    const/16 v20, 0x0

    const/4 v14, -0x1

    const/high16 v15, 0x41a00000    # 20.0f

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    iget-object v2, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_9

    move v7, v8

    :cond_9
    or-int/lit8 v16, v7, 0x30

    if-eqz v5, :cond_b

    if-eqz v1, :cond_a

    move v6, v13

    goto :goto_8

    :cond_a
    move v6, v10

    :goto_8
    int-to-float v6, v6

    move/from16 v17, v6

    goto :goto_9

    :cond_b
    iget v6, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->namePadding:I

    add-int/lit8 v6, v6, 0x44

    goto :goto_8

    :goto_9
    if-eqz v5, :cond_c

    iget v1, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->namePadding:I

    add-int/lit8 v1, v1, 0x44

    int-to-float v1, v1

    :goto_a
    move/from16 v19, v1

    goto :goto_b

    :cond_c
    if-eqz v1, :cond_d

    move v10, v13

    :cond_d
    int-to-float v1, v10

    goto :goto_a

    :goto_b
    const/16 v20, 0x0

    const/4 v14, -0x1

    const/high16 v15, 0x41a00000    # 20.0f

    const/high16 v18, 0x420a0000    # 34.5f

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_18

    .line 182
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->customImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1c

    .line 183
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_f

    move v1, v4

    goto :goto_c

    :cond_f
    move v1, v9

    .line 184
    :goto_c
    iget-object v11, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_10

    move v13, v8

    goto :goto_d

    :cond_10
    move v13, v7

    :goto_d
    or-int/lit8 v16, v13, 0x30

    const/16 v13, 0x36

    if-eqz v12, :cond_12

    if-eqz v1, :cond_11

    move v12, v13

    goto :goto_e

    :cond_11
    move v12, v10

    :goto_e
    int-to-float v12, v12

    move/from16 v17, v12

    goto :goto_f

    :cond_12
    iget v12, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->namePadding:I

    add-int/lit8 v12, v12, 0x44

    goto :goto_e

    :goto_f
    if-eqz v2, :cond_14

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_13

    goto :goto_10

    :cond_13
    move/from16 v18, v6

    goto :goto_11

    :cond_14
    :goto_10
    move/from16 v18, v5

    :goto_11
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_15

    iget v2, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->namePadding:I

    add-int/lit8 v2, v2, 0x44

    :goto_12
    int-to-float v2, v2

    move/from16 v19, v2

    goto :goto_13

    :cond_15
    if-eqz v1, :cond_16

    move v2, v13

    goto :goto_12

    :cond_16
    move v2, v10

    goto :goto_12

    :goto_13
    const/16 v20, 0x0

    const/4 v14, -0x1

    const/high16 v15, 0x41a00000    # 20.0f

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v2, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_17

    move v7, v8

    :cond_17
    or-int/lit8 v16, v7, 0x30

    if-eqz v5, :cond_19

    if-eqz v1, :cond_18

    move v6, v13

    goto :goto_14

    :cond_18
    move v6, v10

    :goto_14
    int-to-float v6, v6

    move/from16 v17, v6

    goto :goto_15

    :cond_19
    iget v6, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->namePadding:I

    add-int/lit8 v6, v6, 0x44

    goto :goto_14

    :goto_15
    if-eqz v5, :cond_1a

    iget v1, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->namePadding:I

    add-int/lit8 v1, v1, 0x44

    int-to-float v1, v1

    :goto_16
    move/from16 v19, v1

    goto :goto_17

    :cond_1a
    if-eqz v1, :cond_1b

    move v10, v13

    :cond_1b
    int-to-float v1, v10

    goto :goto_16

    :goto_17
    const/16 v20, 0x0

    const/4 v14, -0x1

    const/high16 v15, 0x41a00000    # 20.0f

    const/high16 v18, 0x420a0000    # 34.5f

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    :cond_1c
    :goto_18
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;->needDivider:Z

    xor-int/lit8 v1, v3, 0x1

    .line 188
    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 189
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Cells/ManageChatUserCell;->update(I)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->delegate:Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;

    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .line 222
    iput p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->dividerColor:I

    return-void
.end method

.method public setIsAdmin(Z)V
    .locals 0

    .line 210
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->isAdmin:Z

    return-void
.end method

.method public setNameColor(I)V
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    return-void
.end method

.method public setStatusColors(II)V
    .locals 0

    .line 205
    iput p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusColor:I

    .line 206
    iput p2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusOnlineColor:I

    return-void
.end method

.method public setStoryItem(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 134
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public update(I)V
    .locals 10

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto/16 :goto_10

    .line 229
    :cond_0
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_16

    .line 230
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 234
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    if-eqz p1, :cond_a

    .line 240
    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr v5, p1

    if-eqz v5, :cond_5

    .line 241
    iget-object v5, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_2

    if-eqz v1, :cond_4

    :cond_2
    if-nez v5, :cond_3

    if-nez v1, :cond_4

    :cond_3
    if-eqz v5, :cond_5

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v5, v6, :cond_5

    :cond_4
    move v5, v2

    goto :goto_1

    :cond_5
    move v5, v3

    :goto_1
    if-nez v5, :cond_7

    .line 245
    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int/2addr v6, p1

    if-eqz v6, :cond_7

    .line 247
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v6, :cond_6

    .line 248
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_2

    :cond_6
    move v6, v3

    .line 250
    :goto_2
    iget v7, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastStatus:I

    if-eq v6, v7, :cond_7

    move v5, v2

    :cond_7
    if-nez v5, :cond_9

    .line 254
    iget-object v6, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentName:Ljava/lang/CharSequence;

    if-nez v6, :cond_9

    iget-object v6, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastName:Ljava/lang/String;

    if-eqz v6, :cond_9

    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int/2addr p1, v6

    if-eqz p1, :cond_9

    .line 255
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    .line 256
    iget-object v6, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    move v2, v5

    goto :goto_4

    :cond_9
    move-object p1, v4

    goto :goto_3

    :goto_4
    if-nez v2, :cond_b

    goto/16 :goto_10

    :cond_a
    move-object p1, v4

    .line 265
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v5, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentAccount:I

    invoke-virtual {v2, v5, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    .line 266
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v2, :cond_c

    .line 267
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iput v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastStatus:I

    goto :goto_5

    .line 269
    :cond_c
    iput v3, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastStatus:I

    .line 272
    :goto_5
    iget-object v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_d

    .line 273
    iput-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastName:Ljava/lang/String;

    .line 274
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_6

    :cond_d
    if-nez p1, :cond_e

    .line 276
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    :cond_e
    iput-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastName:Ljava/lang/String;

    .line 277
    iget-object v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    invoke-static {p1, v4, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 279
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentStatus:Ljava/lang/CharSequence;

    if-eqz p1, :cond_f

    .line 280
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusColor:I

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 281
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentStatus:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto/16 :goto_9

    .line 283
    :cond_f
    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz p1, :cond_12

    .line 284
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusColor:I

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 285
    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_chat_history:Z

    if-nez p1, :cond_11

    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->isAdmin:Z

    if-eqz p1, :cond_10

    goto :goto_7

    .line 288
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/messenger/R$string;->BotStatusCantRead:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_9

    .line 286
    :cond_11
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/messenger/R$string;->BotStatusRead:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_9

    .line 291
    :cond_12
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_15

    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz p1, :cond_13

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iget v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    if-gt p1, v2, :cond_15

    :cond_13
    iget p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_8

    .line 295
    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusColor:I

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 296
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentAccount:I

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_9

    .line 292
    :cond_15
    :goto_8
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusOnlineColor:I

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 293
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/messenger/R$string;->Online:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 300
    :goto_9
    iput-object v1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 301
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    return-void

    .line 302
    :cond_16
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_27

    .line 303
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 307
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v1, :cond_17

    .line 308
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_a

    :cond_17
    move-object v1, v4

    :goto_a
    if-eqz p1, :cond_1e

    .line 313
    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr v5, p1

    if-eqz v5, :cond_1b

    .line 314
    iget-object v5, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_18

    if-eqz v1, :cond_1a

    :cond_18
    if-nez v5, :cond_19

    if-nez v1, :cond_1a

    :cond_19
    if-eqz v5, :cond_1b

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_1a

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v5, v6, :cond_1b

    :cond_1a
    move v5, v2

    goto :goto_b

    :cond_1b
    move v5, v3

    :goto_b
    if-nez v5, :cond_1d

    .line 318
    iget-object v6, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentName:Ljava/lang/CharSequence;

    if-nez v6, :cond_1d

    iget-object v6, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastName:Ljava/lang/String;

    if-eqz v6, :cond_1d

    sget v7, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int/2addr p1, v7

    if-eqz p1, :cond_1d

    .line 319
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 320
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    goto :goto_d

    :cond_1c
    :goto_c
    move v2, v5

    goto :goto_d

    :cond_1d
    move-object p1, v4

    goto :goto_c

    :goto_d
    if-nez v2, :cond_1f

    goto/16 :goto_10

    :cond_1e
    move-object p1, v4

    .line 329
    :cond_1f
    iget-object v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v5, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentAccount:I

    invoke-virtual {v2, v5, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    .line 331
    iget-object v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_20

    .line 332
    iput-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastName:Ljava/lang/String;

    .line 333
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_e

    :cond_20
    if-nez p1, :cond_21

    .line 335
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :cond_21
    iput-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastName:Ljava/lang/String;

    .line 336
    iget-object v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 338
    :goto_e
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentStatus:Ljava/lang/CharSequence;

    if-eqz p1, :cond_22

    .line 339
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusColor:I

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 340
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentStatus:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_f

    .line 342
    :cond_22
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusColor:I

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 343
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz p1, :cond_24

    .line 344
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_23

    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez p1, :cond_23

    .line 345
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Subscribers"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_f

    .line 347
    :cond_23
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Members"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_f

    .line 349
    :cond_24
    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz p1, :cond_25

    .line 350
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/messenger/R$string;->MegaLocation:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_f

    .line 351
    :cond_25
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 352
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_f

    .line 354
    :cond_26
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/messenger/R$string;->MegaPublic:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 357
    :goto_f
    iput-object v1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 358
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    return-void

    .line 359
    :cond_27
    instance-of p1, v0, Ljava/lang/Integer;

    if-eqz p1, :cond_28

    .line 360
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 361
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusColor:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 362
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentStatus:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 363
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 364
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v0, "50_50"

    iget-object v1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v4, v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_28
    :goto_10
    return-void
.end method
