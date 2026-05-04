.class public Lorg/telegram/ui/Cells/PollEditTextCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;


# instance fields
.field private alwaysShowText2:Z

.field private checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private checkBoxAnimation:Landroid/animation/AnimatorSet;

.field public deleteImageView:Landroid/widget/ImageView;

.field private emojiButton:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

.field public moveImageView:Landroid/widget/ImageView;

.field private needDivider:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private right:Ljava/lang/Integer;

.field private showNextButton:Z

.field public textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$25oKdwCOMKNwLiKyKMqn-_3Jp5w(Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->lambda$setEmojiButtonVisibility$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BR-nB7GoqS3KmY3I6yfDV7ytna8(Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l6z6lGUq3GgN1lEWzelz5aBxHsU(Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetemojiButton(Lorg/telegram/ui/Cells/PollEditTextCell;)Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->emojiButton:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshowNextButton(Lorg/telegram/ui/Cells/PollEditTextCell;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->showNextButton:Z

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0, v0, p2}, Lorg/telegram/ui/Cells/PollEditTextCell;-><init>(Landroid/content/Context;ZILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZILandroid/view/View$OnClickListener;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 81
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/PollEditTextCell;-><init>(Landroid/content/Context;ZILandroid/view/View$OnClickListener;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZILandroid/view/View$OnClickListener;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 85
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 87
    iput-object v4, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 88
    new-instance v5, Lorg/telegram/ui/Cells/PollEditTextCell$1;

    invoke-direct {v5, v0, v1, v4}, Lorg/telegram/ui/Cells/PollEditTextCell$1;-><init>(Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 169
    check-cast v5, Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EditTextCaption;->setAllowTextEntitiesIntersection(Z)V

    .line 170
    iget-object v5, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v7, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 171
    iget-object v5, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v7, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 172
    iget-object v5, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v7, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 173
    iget-object v5, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 174
    iget-object v5, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v7, 0x7fffffff

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 175
    iget-object v5, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v5, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5}, Landroid/widget/TextView;->getImeOptions()I

    move-result v7

    const/high16 v8, 0x10000000

    or-int/2addr v7, v8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 177
    iget-object v5, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5}, Landroid/widget/TextView;->getInputType()I

    move-result v7

    or-int/lit16 v7, v7, 0x4000

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 178
    iget-object v5, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v10, 0x41300000    # 11.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v5, v8, v9, v7, v10}, Landroid/view/View;->setPadding(IIII)V

    const/16 v5, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x3

    if-eqz v3, :cond_d

    if-ne v2, v6, :cond_0

    const/16 v11, 0x5c

    goto :goto_0

    :cond_0
    const/16 v11, 0x3a

    .line 182
    :goto_0
    iget-object v12, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_1

    const/4 v14, 0x5

    goto :goto_1

    :cond_1
    move v14, v10

    :goto_1
    or-int/lit8 v17, v14, 0x10

    const/high16 v14, 0x42800000    # 64.0f

    if-eqz v13, :cond_2

    int-to-float v15, v11

    move/from16 v18, v15

    goto :goto_2

    :cond_2
    move/from16 v18, v14

    :goto_2
    if-nez v13, :cond_3

    int-to-float v14, v11

    :cond_3
    move/from16 v20, v14

    const/16 v21, 0x0

    const/4 v15, -0x1

    const/high16 v16, -0x40000000    # -2.0f

    const/16 v19, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->moveImageView:Landroid/widget/ImageView;

    .line 185
    invoke-virtual {v11, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 186
    iget-object v11, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->moveImageView:Landroid/widget/ImageView;

    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 187
    iget-object v11, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->moveImageView:Landroid/widget/ImageView;

    sget v13, Lorg/telegram/messenger/R$drawable;->poll_reorder:I

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-object v11, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->moveImageView:Landroid/widget/ImageView;

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v14, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v15

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v15, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 189
    iget-object v11, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->moveImageView:Landroid/widget/ImageView;

    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_4

    const/4 v13, 0x5

    goto :goto_3

    :cond_4
    move v13, v10

    :goto_3
    or-int/lit8 v17, v13, 0x30

    const/high16 v20, 0x40c00000    # 6.0f

    const/16 v21, 0x0

    const/16 v15, 0x30

    const/high16 v16, 0x42400000    # 48.0f

    const/high16 v18, 0x40c00000    # 6.0f

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    .line 192
    invoke-virtual {v11, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 193
    iget-object v11, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 194
    iget-object v11, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menuSelector:I

    invoke-static {v12, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 195
    iget-object v11, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    sget v12, Lorg/telegram/messenger/R$drawable;->poll_remove:I

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    iget-object v11, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    invoke-virtual {v11, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v3, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    new-instance v11, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v14, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    invoke-direct {v11, v12, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 198
    iget-object v3, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v3, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_5

    move v11, v10

    goto :goto_4

    :cond_5
    const/4 v11, 0x5

    :goto_4
    or-int/lit8 v17, v11, 0x30

    const/high16 v11, 0x40400000    # 3.0f

    if-eqz v9, :cond_6

    move/from16 v18, v11

    goto :goto_5

    :cond_6
    move/from16 v18, v8

    :goto_5
    if-eqz v9, :cond_7

    move/from16 v20, v8

    goto :goto_6

    :cond_7
    move/from16 v20, v11

    :goto_6
    const/16 v21, 0x0

    const/16 v15, 0x30

    const/high16 v16, 0x42480000    # 50.0f

    const/16 v19, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v9, 0xd

    .line 202
    invoke-virtual {v3, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 203
    iget-object v3, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_8

    move v9, v10

    goto :goto_7

    :cond_8
    const/4 v9, 0x5

    :goto_7
    or-int/lit8 v9, v9, 0x30

    invoke-virtual {v3, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 204
    iget-object v3, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_9

    move v11, v10

    goto :goto_8

    :cond_9
    const/4 v11, 0x5

    :goto_8
    or-int/lit8 v17, v11, 0x30

    const/high16 v11, 0x41a00000    # 20.0f

    if-eqz v9, :cond_a

    move/from16 v18, v11

    goto :goto_9

    :cond_a
    move/from16 v18, v8

    :goto_9
    if-eqz v9, :cond_b

    move/from16 v20, v8

    goto :goto_a

    :cond_b
    move/from16 v20, v11

    :goto_a
    const/16 v21, 0x0

    const/16 v15, 0x30

    const/high16 v16, 0x41c00000    # 24.0f

    const/high16 v19, 0x422c0000    # 43.0f

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    new-instance v3, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v9, 0x15

    invoke-direct {v3, v1, v9, v4}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v9, -0x1

    .line 207
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v3, v9, v14, v11}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 208
    iget-object v3, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget v9, Lorg/telegram/messenger/R$string;->AccDescrQuizCorrectAnswer:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v3, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 210
    iget-object v3, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v3, v6, v7}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 211
    iget-object v3, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v3, v8}, Landroid/view/View;->setAlpha(F)V

    .line 212
    iget-object v3, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 213
    iget-object v3, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_c

    const/4 v9, 0x5

    goto :goto_b

    :cond_c
    move v9, v10

    :goto_b
    or-int/lit8 v13, v9, 0x30

    const/high16 v16, 0x40c00000    # 6.0f

    const/16 v17, 0x0

    const/16 v11, 0x30

    const/high16 v12, 0x42400000    # 48.0f

    const/high16 v14, 0x40c00000    # 6.0f

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v3, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    new-instance v9, Lorg/telegram/ui/Cells/PollEditTextCell$$ExternalSyntheticLambda0;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Cells/PollEditTextCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/PollEditTextCell;)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_11

    :cond_d
    if-ne v2, v6, :cond_e

    const/16 v3, 0x46

    goto :goto_c

    :cond_e
    const/16 v3, 0x13

    .line 222
    :goto_c
    iget-object v9, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_f

    const/4 v12, 0x5

    goto :goto_d

    :cond_f
    move v12, v10

    :goto_d
    or-int/lit8 v15, v12, 0x10

    const/high16 v12, 0x41980000    # 19.0f

    if-eqz v11, :cond_10

    int-to-float v13, v3

    move/from16 v16, v13

    goto :goto_e

    :cond_10
    move/from16 v16, v12

    :goto_e
    if-eqz v11, :cond_11

    :goto_f
    move/from16 v18, v12

    goto :goto_10

    :cond_11
    int-to-float v12, v3

    goto :goto_f

    :goto_10
    const/16 v19, 0x0

    const/4 v13, -0x1

    const/high16 v14, -0x40000000    # -2.0f

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_11
    if-ne v2, v6, :cond_16

    .line 226
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->emojiButton:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    const v1, 0x3f4ccccd    # 0.8f

    .line 227
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 228
    iget-object v1, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->emojiButton:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 229
    iget-object v1, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->emojiButton:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    sget-object v2, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v1, v2, v7}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    const/high16 v1, 0x41180000    # 9.5f

    .line 230
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 231
    iget-object v2, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->emojiButton:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 232
    iget-object v1, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->emojiButton:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v1, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_12

    move v1, v10

    goto :goto_12

    :cond_12
    const/16 v1, 0x26

    .line 234
    :goto_12
    iget-object v2, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->emojiButton:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_13

    move v13, v10

    goto :goto_13

    :cond_13
    const/4 v13, 0x5

    :goto_13
    if-eqz v3, :cond_14

    int-to-float v5, v1

    move v14, v5

    goto :goto_14

    :cond_14
    move v14, v8

    :goto_14
    if-eqz v3, :cond_15

    :goto_15
    move/from16 v16, v8

    goto :goto_16

    :cond_15
    int-to-float v8, v1

    goto :goto_15

    :goto_16
    const/16 v17, 0x0

    const/16 v11, 0x30

    const/high16 v12, 0x42400000    # 48.0f

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    iget-object v1, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->emojiButton:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menuSelector:I

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 238
    iget-object v1, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->emojiButton:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    new-instance v2, Lorg/telegram/ui/Cells/PollEditTextCell$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Cells/PollEditTextCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/PollEditTextCell;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v1, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->emojiButton:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    sget v2, Lorg/telegram/messenger/R$string;->Emoji:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_16
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 215
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 218
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p0, p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->onCheckBoxClick(Lorg/telegram/ui/Cells/PollEditTextCell;Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 239
    invoke-virtual {p0, p0}, Lorg/telegram/ui/Cells/PollEditTextCell;->onEmojiButtonClicked(Lorg/telegram/ui/Cells/PollEditTextCell;)V

    return-void
.end method

.method private synthetic lambda$setEmojiButtonVisibility$2(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 463
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->emojiButton:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 465
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->emojiButton:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 466
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->emojiButton:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 521
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public addTextWatcher(Landroid/text/TextWatcher;)V
    .locals 1

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public callOnDelete()V
    .locals 1

    .line 333
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 336
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    return-void
.end method

.method public createErrorTextView()V
    .locals 10

    const/4 v0, 0x1

    .line 254
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->alwaysShowText2:Z

    .line 255
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0xd

    .line 256
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v2, 0x5

    const/4 v3, 0x3

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    or-int/lit8 v5, v2, 0x30

    const/4 v2, 0x0

    const/high16 v3, 0x41a00000    # 20.0f

    if-eqz v1, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    if-eqz v1, :cond_3

    move v8, v2

    goto :goto_2

    :cond_3
    move v8, v3

    :goto_2
    const/4 v9, 0x0

    const/16 v3, 0x30

    const/high16 v4, 0x41c00000    # 24.0f

    const/high16 v7, 0x41880000    # 17.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected drawDivider()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCheckBox()Lorg/telegram/ui/Components/CheckBox2;
    .locals 1

    .line 348
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    return-object v0
.end method

.method public getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 1

    .line 526
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object v0
.end method

.method public getEditText()Landroid/text/Editable;
    .locals 1

    .line 539
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;
    .locals 1

    .line 425
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->emojiButton:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    return-object v0
.end method

.method public getFieldText()Ljava/lang/CharSequence;
    .locals 1

    .line 531
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 532
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 1

    .line 344
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object v0
.end method

.method public getTextView2()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method protected isChecked(Lorg/telegram/ui/Cells/PollEditTextCell;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onActionModeStart(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 313
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PollEditTextCell;->shouldShowCheckBox()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/PollEditTextCell;->setShowCheckBox(ZZ)V

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p0, p0}, Lorg/telegram/ui/Cells/PollEditTextCell;->isChecked(Lorg/telegram/ui/Cells/PollEditTextCell;)Z

    move-result v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    :cond_0
    return-void
.end method

.method protected onCheckBoxClick(Lorg/telegram/ui/Cells/PollEditTextCell;Z)V
    .locals 1

    .line 321
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 504
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->needDivider:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PollEditTextCell;->drawDivider()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 505
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x41a00000    # 20.0f

    const/high16 v2, 0x427c0000    # 63.0f

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v4, v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->moveImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->moveImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    sub-int/2addr v0, v1

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v7, v0

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method protected onEditTextDraw(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected onEditTextFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method protected onEmojiButtonClicked(Lorg/telegram/ui/Cells/PollEditTextCell;)V
    .locals 0

    return-void
.end method

.method protected onFieldTouchUp(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 268
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 269
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ge v2, v3, :cond_7

    .line 270
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 271
    iget-object v5, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-ne v3, v5, :cond_0

    goto/16 :goto_1

    .line 272
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    const/high16 v6, 0x42400000    # 48.0f

    if-ne v3, v5, :cond_1

    .line 273
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1

    .line 274
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->emojiButton:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    if-ne v3, v5, :cond_2

    .line 275
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 276
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->moveImageView:Landroid/widget/ImageView;

    if-ne v3, v5, :cond_3

    .line 277
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 278
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-ne v3, v5, :cond_4

    .line 279
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 280
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-ne v3, v5, :cond_5

    .line 281
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 283
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 285
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 287
    :cond_6
    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 292
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->right:Ljava/lang/Integer;

    if-eqz p1, :cond_8

    .line 293
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    .line 294
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez p1, :cond_9

    const/16 p1, 0x2a

    goto :goto_2

    .line 296
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_a

    const/16 p1, 0x46

    goto :goto_2

    .line 298
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->emojiButton:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    if-eqz p1, :cond_b

    const/16 p1, 0x90

    goto :goto_2

    :cond_b
    const/16 p1, 0x7a

    .line 303
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr v2, p1

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, p1, v1}, Landroid/view/View;->measure(II)V

    .line 304
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/high16 p2, 0x42480000    # 50.0f

    .line 305
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-object v1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->needDivider:Z

    add-int/2addr p2, v1

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 306
    iget-object p2, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p2, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->alwaysShowText2:Z

    if-nez v0, :cond_d

    const/high16 v0, 0x42500000    # 52.0f

    .line 307
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-lt p1, v0, :cond_c

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_c
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_d
    return-void
.end method

.method public onPastedMultipleLines(Ljava/util/ArrayList;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method public setEmojiButtonVisibility(Z)V
    .locals 4

    .line 452
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 456
    iget-object v2, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->emojiButton:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 457
    iget-object v2, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->emojiButton:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 458
    iget-object v2, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->emojiButton:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    .line 459
    iget-object v2, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->emojiButton:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    const/4 v2, 0x2

    .line 461
    new-array v2, v2, [F

    aput v3, v2, v0

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 462
    new-instance v1, Lorg/telegram/ui/Cells/PollEditTextCell$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/PollEditTextCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/PollEditTextCell;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 471
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Cells/PollEditTextCell$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Cells/PollEditTextCell$2;-><init>(Lorg/telegram/ui/Cells/PollEditTextCell;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 498
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 499
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setFieldText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 516
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setShowCheckBox(ZZ)V
    .locals 7

    .line 384
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne p1, v0, :cond_1

    return-void

    .line 387
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBoxAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 388
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 389
    iput-object v3, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBoxAnimation:Landroid/animation/AnimatorSet;

    .line 391
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p1, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_6

    .line 393
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBoxAnimation:Landroid/animation/AnimatorSet;

    .line 394
    iget-object v4, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p1, :cond_4

    move v5, v3

    goto :goto_1

    :cond_4
    move v5, v0

    .line 395
    :goto_1
    new-array v6, v2, [F

    aput v5, v6, v1

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v6, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->moveImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    .line 396
    :goto_2
    new-array p1, v2, [F

    aput v0, p1, v1

    invoke-static {v6, v5, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v4, v0, v1

    aput-object p1, v0, v2

    .line 394
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 397
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBoxAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 398
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBoxAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 400
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p1, :cond_7

    move v1, v3

    goto :goto_3

    :cond_7
    move v1, v0

    :goto_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 401
    iget-object p2, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->moveImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    move v0, v3

    :goto_4
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 0

    .line 340
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->showNextButton:Z

    return-void
.end method

.method public setText2(Ljava/lang/String;)V
    .locals 1

    .line 441
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    return-void

    .line 444
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public setTextAndHint(Ljava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 2

    .line 412
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 413
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 415
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 417
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 419
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 420
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    .line 421
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 380
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    return-void
.end method

.method public setTextRight(I)V
    .locals 0

    .line 263
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->right:Ljava/lang/Integer;

    return-void
.end method

.method protected shouldShowCheckBox()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
