.class public Lorg/telegram/ui/Components/JoinGroupAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# instance fields
.field private chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final hash:Ljava/lang/String;

.field private requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private requestTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$-_mFpZn6WsW4Dmn566Vhm3x4M6U(Lorg/telegram/ui/Components/JoinGroupAlert;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$8(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EyrUumNonpYjmCv0KKGPB49oRTU(Lorg/telegram/ui/Components/JoinGroupAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$MmcQQbcg6QgEZcsrXtEhyl7fvc4(Lorg/telegram/ui/Components/JoinGroupAlert;ILorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$9(ILorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VGSY5hvlbU9HZYPdEa0dBs-2MyM(Lorg/telegram/ui/Components/JoinGroupAlert;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$7(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZAo9gBvIBYHr4d33XX2gbNPZ1ds(Lorg/telegram/ui/Components/JoinGroupAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZiYkwTV1gi_M8fL3Fbdaw0t1rY4(Lorg/telegram/ui/Components/JoinGroupAlert;ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$6(ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bRiaqvg7ld_CqTP3baaoaiZ03Zk(Lorg/telegram/ui/Components/JoinGroupAlert;ZLandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$4(ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lpo4j0RhrARlKJQmuKHwR2XGaWo(Lorg/telegram/ui/Components/JoinGroupAlert;ZLorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$3(ZLorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$p4bQ3C-c1A-8UyArzNdtswITNDU(Lorg/telegram/ui/Components/JoinGroupAlert;ZLandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$2(ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rgszKhj4QI8cCM_AhVlxz6sOJqE(Lorg/telegram/ui/Components/JoinGroupAlert;Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$5(Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tyv2Klzn9EeAi9pEMds_VtrQ1og(Lorg/telegram/ui/Components/JoinGroupAlert;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$10(ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 62
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/JoinGroupAlert;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    const/4 v4, 0x0

    .line 66
    invoke-direct {v0, v1, v4, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 67
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 68
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    .line 69
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    move-object/from16 v5, p4

    .line 71
    iput-object v5, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 72
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz v5, :cond_1

    .line 73
    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iput-object v2, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    :cond_0
    :goto_0
    move-object/from16 v2, p3

    goto :goto_1

    .line 74
    :cond_1
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_0

    .line 75
    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object v2, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_0

    .line 77
    :goto_1
    iput-object v2, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->hash:Ljava/lang/String;

    .line 79
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 80
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 81
    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 83
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    new-instance v7, Landroidx/core/widget/NestedScrollView;

    invoke-direct {v7, v1}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {v7, v6}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;)V

    .line 88
    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 90
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 91
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v8

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 92
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_other:I

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 93
    sget v8, Lorg/telegram/messenger/R$drawable;->ic_layer_close:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    new-instance v8, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v8, 0x41000000    # 8.0f

    .line 95
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    .line 96
    invoke-virtual {v7, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v15, 0x41000000    # 8.0f

    const/16 v16, 0x0

    const/16 v10, 0x24

    const/high16 v11, 0x42100000    # 36.0f

    const v12, 0x800035

    const/high16 v13, 0x40c00000    # 6.0f

    const/high16 v14, 0x41000000    # 8.0f

    .line 97
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v6, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/high16 v7, 0x42b40000    # 90.0f

    .line 107
    invoke-static {v7}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v9, 0x5a

    const/16 v10, 0x5a

    const/16 v11, 0x31

    const/4 v12, 0x0

    const/16 v13, 0x1b

    .line 108
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v7, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    const/4 v9, 0x0

    if-eqz v7, :cond_3

    .line 111
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v7, :cond_2

    .line 112
    new-instance v7, Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v9, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {v7, v9}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 113
    iget-object v9, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v11, v10, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 114
    iget v12, v10, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    .line 115
    invoke-virtual {v6, v10, v7, v9}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;Ljava/lang/Object;)V

    move-object v9, v11

    goto :goto_2

    .line 117
    :cond_2
    new-instance v7, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v7}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 118
    iget-object v10, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    const-wide/16 v11, 0x0

    invoke-virtual {v7, v11, v12, v10, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v9, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    .line 120
    iget v12, v9, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants_count:I

    .line 121
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$ChatInvite;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v11, 0x32

    invoke-static {v9, v11}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v9

    .line 122
    iget-object v11, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$ChatInvite;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v9, v11}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    const-string v11, "50_50"

    iget-object v13, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    invoke-virtual {v6, v9, v11, v7, v13}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    move-object v9, v10

    .line 124
    :goto_2
    iget-object v6, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$ChatInvite;->about:Ljava/lang/String;

    .line 125
    iget-boolean v10, v6, Lorg/telegram/tgnet/TLRPC$ChatInvite;->verified:Z

    .line 126
    iget-boolean v11, v6, Lorg/telegram/tgnet/TLRPC$ChatInvite;->fake:Z

    .line 127
    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$ChatInvite;->scam:Z

    goto :goto_4

    .line 128
    :cond_3
    iget-object v7, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v7, :cond_6

    .line 129
    new-instance v7, Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v10, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {v7, v10}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 130
    iget-object v10, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 131
    iget v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v11, v12, v13}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 132
    iget-object v9, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    .line 133
    :cond_4
    iget-object v12, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v11, :cond_5

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    goto :goto_3

    :cond_5
    move v11, v4

    :goto_3
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 134
    iget-object v11, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v6, v11, v7, v11}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;Ljava/lang/Object;)V

    .line 135
    iget-object v6, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    .line 136
    iget-boolean v11, v6, Lorg/telegram/tgnet/TLRPC$Chat;->fake:Z

    .line 137
    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->scam:Z

    move-object/from16 v24, v10

    move v10, v7

    move-object v7, v9

    move-object/from16 v9, v24

    goto :goto_4

    :cond_6
    move v6, v4

    move v10, v6

    move v11, v10

    move v12, v11

    move-object v7, v9

    .line 140
    :goto_4
    new-instance v13, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v13, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v14, 0x14

    .line 142
    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 143
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    move/from16 p2, v8

    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v13, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 144
    invoke-virtual {v13, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    const/16 v8, 0x11

    .line 145
    invoke-virtual {v13, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    if-lez v12, :cond_7

    move/from16 v22, v4

    goto :goto_5

    :cond_7
    move/from16 v22, v14

    :goto_5
    const/16 v16, -0x2

    const/16 v17, -0x2

    const/16 v18, 0x31

    const/16 v19, 0xa

    const/16 v20, 0xa

    const/16 v21, 0xa

    .line 146
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v13, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v6, :cond_9

    if-eqz v11, :cond_8

    goto :goto_6

    :cond_8
    if-eqz v10, :cond_a

    .line 151
    invoke-direct {v0}, Lorg/telegram/ui/Components/JoinGroupAlert;->getVerifiedCrossfadeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v13, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_7

    :cond_9
    :goto_6
    xor-int/2addr v6, v5

    .line 149
    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/JoinGroupAlert;->getScamDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v13, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 154
    :cond_a
    :goto_7
    iget-object v6, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz v6, :cond_c

    iget-boolean v9, v6, Lorg/telegram/tgnet/TLRPC$ChatInvite;->channel:Z

    if-eqz v9, :cond_b

    iget-boolean v9, v6, Lorg/telegram/tgnet/TLRPC$ChatInvite;->megagroup:Z

    if-eqz v9, :cond_d

    :cond_b
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-nez v6, :cond_d

    :cond_c
    iget-object v6, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v6, :cond_e

    :cond_d
    move v6, v5

    goto :goto_8

    :cond_e
    move v6, v4

    .line 155
    :goto_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 157
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v11, 0x41500000    # 13.0f

    .line 158
    invoke-virtual {v10, v5, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 159
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 161
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    if-eqz v6, :cond_f

    .line 172
    const-string v16, "Subscribers"

    :goto_9
    move-object/from16 v11, v16

    goto :goto_a

    :cond_f
    const-string v16, "Members"

    goto :goto_9

    :goto_a
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v11, v12, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v9, :cond_10

    move/from16 v23, v4

    goto :goto_b

    :cond_10
    const/16 v23, 0x14

    :goto_b
    const/16 v17, -0x2

    const/16 v18, -0x2

    const/16 v19, 0x31

    const/16 v20, 0xa

    const/16 v21, 0x0

    const/16 v22, 0xa

    .line 173
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v10, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v9, :cond_11

    .line 176
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 178
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41700000    # 15.0f

    const/4 v9, 0x1

    .line 180
    invoke-virtual {v5, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v22, 0x18

    const/16 v23, 0x14

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x30

    const/16 v20, 0x18

    const/16 v21, 0xa

    .line 181
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    :cond_11
    iget-object v5, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    const/high16 v7, 0x41600000    # 14.0f

    if-eqz v5, :cond_1d

    iget-boolean v9, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->request_needed:Z

    if-eqz v9, :cond_12

    goto/16 :goto_10

    .line 256
    :cond_12
    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    if-eqz v6, :cond_13

    .line 258
    sget v3, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    .line 259
    :cond_13
    sget v3, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 257
    :goto_c
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x3

    .line 262
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 265
    new-instance v6, Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-direct {v6, v1, v4}, Lorg/telegram/ui/Components/AvatarsImageView;-><init>(Landroid/content/Context;Z)V

    const/high16 v9, 0x41a00000    # 20.0f

    .line 266
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/AvatarsImageView;->setAvatarsTextSize(I)V

    const/16 v9, 0x26

    int-to-float v9, v9

    .line 267
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Components/AvatarsImageView;->setSize(I)V

    .line 268
    invoke-virtual {v6, v3}, Lorg/telegram/ui/Components/AvatarsImageView;->setCount(I)V

    const v10, 0x3f266666    # 0.65f

    .line 269
    invoke-virtual {v6, v10}, Lorg/telegram/ui/Components/AvatarsImageView;->setStepFactor(F)V

    move v11, v4

    :goto_d
    if-ge v11, v3, :cond_14

    .line 271
    sget v13, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-object v14, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v6, v11, v13, v14}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 273
    :cond_14
    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    add-int/lit8 v11, v3, -0x1

    int-to-float v11, v11

    mul-float/2addr v10, v9

    const/high16 v13, 0x3f800000    # 1.0f

    add-float/2addr v10, v13

    mul-float/2addr v11, v10

    add-float/2addr v9, v11

    float-to-int v9, v9

    const/16 v22, 0x0

    const/16 v23, 0x4

    const/16 v18, 0x2c

    const/16 v19, 0x11

    const/16 v20, 0x0

    const/16 v21, 0x2

    move/from16 v17, v9

    .line 275
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41500000    # 13.0f

    const/4 v9, 0x1

    .line 278
    invoke-virtual {v6, v9, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 279
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    if-ne v3, v9, :cond_15

    .line 284
    iget-object v1, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    invoke-direct {v0, v6, v1, v4}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_15
    const/4 v1, 0x2

    if-ne v3, v1, :cond_16

    .line 286
    sget v3, Lorg/telegram/messenger/R$string;->RequestToJoinMembersTwo:I

    iget-object v5, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    .line 288
    invoke-direct {v0, v6, v5, v4}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v10, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    .line 289
    invoke-direct {v0, v6, v10, v9}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v10

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v4

    aput-object v10, v1, v9

    .line 286
    const-string v5, "RequestToJoinMembersTwo"

    invoke-static {v5, v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_16
    if-ne v12, v5, :cond_17

    .line 292
    sget v3, Lorg/telegram/messenger/R$string;->RequestToJoinMembersThree:I

    iget-object v10, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    .line 294
    invoke-direct {v0, v6, v10, v4}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    .line 295
    invoke-direct {v0, v6, v11, v9}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    .line 296
    invoke-direct {v0, v6, v12, v1}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v12

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v10, v5, v4

    aput-object v11, v5, v9

    aput-object v12, v5, v1

    .line 292
    const-string v1, "RequestToJoinMembersThree"

    invoke-static {v1, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_17
    sub-int/2addr v12, v3

    .line 299
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 300
    const-string v9, "RequestToJoinMembersAll"

    .line 301
    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    .line 302
    invoke-direct {v0, v6, v10, v4}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    const/4 v12, 0x1

    .line 303
    invoke-direct {v0, v6, v11, v12}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 304
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v10, v5, v4

    aput-object v11, v5, v12

    aput-object v3, v5, v1

    .line 300
    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 308
    :goto_e
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v14, 0xa

    const/16 v15, 0x18

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/16 v11, 0x31

    const/16 v12, 0xa

    const/4 v13, 0x0

    .line 309
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->channel:Z

    if-eqz v3, :cond_19

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->megagroup:Z

    if-eqz v3, :cond_1a

    :cond_19
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_1b

    :cond_1a
    const/4 v4, 0x1

    .line 313
    :cond_1b
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41c00000    # 24.0f

    .line 314
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    invoke-static {v3, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x3ca3d70a    # 0.02f

    const v5, 0x3f99999a    # 1.2f

    .line 315
    invoke-static {v1, v3, v5}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 316
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 317
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v9, 0x1

    .line 318
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    if-eqz v4, :cond_1c

    .line 319
    sget v3, Lorg/telegram/messenger/R$string;->ProfileJoinChannel:I

    goto :goto_f

    :cond_1c
    sget v3, Lorg/telegram/messenger/R$string;->ProfileJoinGroup:I

    :goto_f
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    invoke-virtual {v1, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 322
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v9, 0xe

    const/16 v10, 0xe

    const/4 v4, -0x1

    const/16 v5, 0x30

    const v6, 0x800003

    const/16 v7, 0xe

    const/4 v8, 0x0

    .line 323
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    new-instance v2, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda2;

    move/from16 v3, p6

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 185
    :cond_1d
    :goto_10
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, -0x1

    const/4 v5, -0x2

    .line 186
    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    new-instance v4, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    .line 189
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 190
    iget-object v4, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 191
    iget-object v4, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v4, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v5, 0x30

    invoke-static {v5, v5, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    .line 195
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v9

    invoke-static {v5, v3, v9}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 197
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 198
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 199
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_1e

    sget v4, Lorg/telegram/messenger/R$string;->RequestToJoinChannel:I

    goto :goto_11

    :cond_1e
    sget v4, Lorg/telegram/messenger/R$string;->RequestToJoinGroup:I

    :goto_11
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v3, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 202
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 203
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v6}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Z)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    const/16 v22, 0xe

    const/16 v23, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x30

    const v19, 0x800003

    const/16 v20, 0xe

    const/16 v21, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 250
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v9, 0x1

    .line 251
    invoke-virtual {v1, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v6, :cond_1f

    .line 252
    sget v3, Lorg/telegram/messenger/R$string;->RequestToJoinChannelDescription:I

    goto :goto_12

    :cond_1f
    sget v3, Lorg/telegram/messenger/R$string;->RequestToJoinGroupDescription:I

    :goto_12
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v9, 0x18

    const/16 v10, 0xf

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x30

    const/16 v7, 0x18

    const/16 v8, 0x11

    .line 254
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method private ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;
    .locals 1

    .line 387
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 389
    const-string p2, ""

    .line 391
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/high16 p3, 0x42f00000    # 120.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p2, p1, p3, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private getScamDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-nez p1, :cond_0

    .line 395
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    return-object p1

    :cond_0
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    return-object p1
.end method

.method private getVerifiedCrossfadeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 361
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    .line 362
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    .line 363
    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 94
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    .line 205
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$10(ILandroid/view/View;)V
    .locals 2

    .line 325
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 326
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;-><init>()V

    .line 327
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->hash:Ljava/lang/String;

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;->hash:Ljava/lang/String;

    .line 328
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;ILorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p2, v1, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private synthetic lambda$new$2(ZLandroid/content/DialogInterface;)V
    .locals 1

    .line 221
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p2, v0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert;->showBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method

.method private synthetic lambda$new$3(ZLorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 220
    const-string v0, "INVITE_REQUEST_SENT"

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 221
    new-instance p2, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Z)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 223
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$4(ZLandroid/content/DialogInterface;)V
    .locals 1

    .line 237
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p2, v0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert;->showBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V
    .locals 2

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 236
    const-string v0, "INVITE_REQUEST_SENT"

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    new-instance p1, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Z)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 239
    :cond_1
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, v0, p3, v1}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 242
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$6(ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 231
    new-instance p3, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0, p4, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$7(ZLandroid/view/View;)V
    .locals 10

    .line 204
    new-instance p2, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;)V

    const-wide/16 v0, 0x190

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 210
    iget-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_0

    .line 211
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    .line 213
    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    new-instance v8, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda5;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;)V

    new-instance v9, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda6;

    invoke-direct {v9, p0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Z)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 211
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/MessagesController;->addUserToChat(JLorg/telegram/tgnet/TLRPC$User;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/lang/Runnable;Lorg/telegram/messenger/MessagesController$ErrorDelegate;)V

    return-void

    .line 228
    :cond_0
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;-><init>()V

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->hash:Ljava/lang/String;

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;->hash:Ljava/lang/String;

    .line 230
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p2, v1, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private synthetic lambda$new$8(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V
    .locals 2

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 338
    check-cast p2, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 339
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 340
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 341
    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    .line 342
    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    .line 343
    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object p4, p2, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {p3, p4, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 344
    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p3, p2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 345
    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p3, p1}, Lorg/telegram/ui/Components/JoinGroupAlert;->openChat(JZ)V

    return-void

    .line 348
    :cond_1
    const-string p2, "USER_ALREADY_PARTICIPANT"

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_2

    .line 349
    iget-wide p1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/JoinGroupAlert;->openChat(JZ)V

    return-void

    .line 351
    :cond_2
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object p3, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$9(ILorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    if-nez p4, :cond_0

    .line 330
    move-object v0, p3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 331
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 333
    :cond_0
    new-instance v3, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda10;

    move-object v4, p0

    move v7, p1

    move-object v8, p2

    move-object v6, p3

    move-object v5, p4

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private openChat(JZ)V
    .locals 6

    .line 399
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 400
    const-string v0, "chat_id"

    invoke-virtual {v2, v0, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 401
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    new-instance v0, Lorg/telegram/ui/Components/JoinGroupAlert$1;

    move-object v1, p0

    move-wide v4, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/JoinGroupAlert$1;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Landroid/os/Bundle;ZJ)V

    .line 427
    iget-object p1, v1, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p2, p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void

    :cond_0
    move-object v1, p0

    return-void
.end method

.method public static showBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 3

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    :cond_0
    return-void

    .line 376
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 377
    iget-object p0, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v1, Lorg/telegram/messenger/R$raw;->timer_3:I

    const/16 v2, 0x1c

    invoke-virtual {p0, v1, v2, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 378
    iget-object p0, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/messenger/R$string;->RequestToJoinSent:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_2

    .line 380
    sget p0, Lorg/telegram/messenger/R$string;->RequestToJoinChannelSentDescription:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 381
    :cond_2
    sget p0, Lorg/telegram/messenger/R$string;->RequestToJoinGroupSentDescription:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 382
    :goto_0
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p0, 0xabe

    .line 383
    invoke-static {p1, v0, p0}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method
