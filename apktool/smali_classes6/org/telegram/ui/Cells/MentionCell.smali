.class public Lorg/telegram/ui/Cells/MentionCell;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private attached:Z

.field private final avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private emojiDrawable:Landroid/graphics/drawable/Drawable;

.field private final imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final nameTextView:Landroid/widget/TextView;

.field private needsDivider:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final usernameTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/MentionCell;->needsDivider:Z

    .line 47
    iput-object p2, p0, Lorg/telegram/ui/Cells/MentionCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51
    new-instance p2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Cells/MentionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/high16 v0, 0x41900000    # 18.0f

    .line 52
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 54
    new-instance p2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v0, 0x41e00000    # 28.0f

    .line 55
    invoke-static {v0}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v1, 0x1c

    const/16 v2, 0x1c

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x40800000    # 4.0f

    .line 56
    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance p2, Lorg/telegram/ui/Cells/MentionCell$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Cells/MentionCell$1;-><init>(Lorg/telegram/ui/Cells/MentionCell;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    .line 65
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/MentionCell;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    const/high16 v1, 0x41700000    # 15.0f

    .line 66
    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 67
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v2, 0x3

    .line 68
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 69
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x10

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 70
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    .line 73
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/MentionCell;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 75
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 76
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 77
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v9, 0x8

    const/4 v4, -0x2

    .line 78
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 212
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 214
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->emojiDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 215
    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    const/high16 v0, 0x41c00000    # 24.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 216
    iget-object v1, p0, Lorg/telegram/ui/Cells/MentionCell;->emojiDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_1

    const/high16 v1, -0x40000000    # -2.0f

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 217
    iget-object v2, p0, Lorg/telegram/ui/Cells/MentionCell;->emojiDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    .line 218
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    .line 219
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    .line 220
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v5, v1

    add-int/2addr v5, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    .line 221
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v6, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v1, v6

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 217
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->emojiDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_2

    .line 224
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setTime(J)V

    .line 226
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->emojiDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 166
    invoke-super {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public invalidateEmojis()V
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 275
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/MentionCell;->attached:Z

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->emojiDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_0

    .line 278
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 266
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/MentionCell;->attached:Z

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->emojiDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_0

    .line 269
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 126
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 127
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/MentionCell;->needsDivider:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42500000    # 52.0f

    .line 128
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 88
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public resetEmojiSuggestion()V
    .locals 2

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->emojiDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 173
    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_0

    .line 174
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->emojiDrawable:Landroid/graphics/drawable/Drawable;

    .line 177
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/MentionCell;->invalidate()V

    :cond_1
    return-void
.end method

.method public setBotCommand(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 3

    .line 231
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/MentionCell;->resetEmojiSuggestion()V

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 233
    iget-object v1, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v1, p0, Lorg/telegram/ui/Cells/MentionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, p3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 235
    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/MentionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, p3, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/MentionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p3, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object p3, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object p1, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p3

    invoke-static {p2, p3, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setChat(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 3

    .line 133
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/MentionCell;->resetEmojiSuggestion()V

    .line 134
    const-string v0, ""

    if-nez p1, :cond_0

    .line 135
    iget-object p1, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object p1, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object p1, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/MentionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 141
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/MentionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/MentionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 151
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object p1, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setDivider(Z)V
    .locals 1

    .line 117
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/MentionCell;->needsDivider:Z

    if-eq p1, v0, :cond_0

    .line 118
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/MentionCell;->needsDivider:Z

    xor-int/lit8 p1, p1, 0x1

    .line 119
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 120
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/MentionCell;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEmojiSuggestion(Lorg/telegram/messenger/MediaDataController$KeywordResult;)V
    .locals 4

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v0, p1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "animated_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->emojiDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_0

    .line 187
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->emojiDrawable:Landroid/graphics/drawable/Drawable;

    .line 190
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 191
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->emojiDrawable:Landroid/graphics/drawable/Drawable;

    .line 192
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/MentionCell;->attached:Z

    if-eqz v2, :cond_2

    .line 193
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    iget-object v0, p1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->emojiDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->emojiDrawable:Landroid/graphics/drawable/Drawable;

    .line 201
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->emojiDrawable:Landroid/graphics/drawable/Drawable;

    const-string v2, ":  "

    if-nez v0, :cond_3

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->keyword:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 205
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v3, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->keyword:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public setIsDarkTheme(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 250
    iget-object p1, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    iget-object p1, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    const v0, -0x444445

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 253
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/MentionCell;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    iget-object p1, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/MentionCell;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .line 158
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/MentionCell;->resetEmojiSuggestion()V

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 3

    .line 92
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/MentionCell;->resetEmojiSuggestion()V

    .line 93
    const-string v0, ""

    if-nez p1, :cond_0

    .line 94
    iget-object p1, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p1, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p1, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/MentionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 100
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/MentionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/MentionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 109
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object p1, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
