.class public Lorg/telegram/ui/TopicsFragment$TopicDialogCell;
.super Lorg/telegram/ui/Cells/DialogCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/TopicsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TopicDialogCell"
.end annotation


# instance fields
.field private animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field attached:Z

.field private closed:Z

.field private currentTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

.field public drawDivider:Z

.field private forumIcon:Landroid/graphics/drawable/Drawable;

.field private hidden:Ljava/lang/Boolean;

.field private hiddenAnimator:Landroid/animation/ValueAnimator;

.field private hiddenT:F

.field private isGeneral:Z

.field public position:I

.field final synthetic this$0:Lorg/telegram/ui/TopicsFragment;


# direct methods
.method public static synthetic $r8$lambda$AixhsEp_MYdvdwtZcCk_SJl0WSg(Lorg/telegram/ui/TopicsFragment$TopicDialogCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->lambda$updateHidden$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurrentTopic(Lorg/telegram/ui/TopicsFragment$TopicDialogCell;)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->currentTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZ)V
    .locals 0

    .line 3114
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->this$0:Lorg/telegram/ui/TopicsFragment;

    .line 3115
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Cells/DialogCell;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZ)V

    const/4 p2, -0x1

    .line 3112
    iput p2, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->position:I

    const/4 p2, 0x0

    .line 3116
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->drawAvatar:Z

    .line 3117
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto :goto_0

    :cond_0
    const/16 p1, 0x32

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    const/high16 p1, 0x41c00000    # 24.0f

    .line 3118
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->chekBoxPaddingTop:F

    const/16 p1, 0x40

    .line 3119
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->heightDefault:I

    const/16 p1, 0x4c

    .line 3120
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->heightThreeLines:I

    const/4 p1, 0x1

    .line 3121
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->forbidVerified:Z

    return-void
.end method

.method private synthetic lambda$updateHidden$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 3285
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->hiddenT:F

    .line 3286
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->setHiddenT()V

    return-void
.end method

.method private setHiddenT()V
    .locals 4

    .line 3297
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->forumIcon:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;

    if-eqz v1, :cond_0

    .line 3298
    check-cast v0, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->this$0:Lorg/telegram/ui/TopicsFragment;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePullDownBackground:I

    .line 3299
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->this$0:Lorg/telegram/ui/TopicsFragment;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Saved:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->hiddenT:F

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    .line 3298
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;->setColor(I)V

    .line 3302
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v1, v0, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;

    if-eqz v1, :cond_1

    .line 3303
    check-cast v0, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->this$0:Lorg/telegram/ui/TopicsFragment;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePullDownBackground:I

    .line 3304
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->this$0:Lorg/telegram/ui/TopicsFragment;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Saved:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->hiddenT:F

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    .line 3303
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;->setColor(I)V

    .line 3307
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method private updateHidden(ZZ)V
    .locals 3

    .line 3272
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->hidden:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move p2, v1

    .line 3276
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->hiddenAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 3277
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 3278
    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->hiddenAnimator:Landroid/animation/ValueAnimator;

    .line 3281
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->hidden:Ljava/lang/Boolean;

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    .line 3283
    iget p2, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->hiddenT:F

    if-eqz p1, :cond_2

    move v0, v2

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [F

    aput p2, p1, v1

    const/4 p2, 0x1

    aput v0, p1, p2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->hiddenAnimator:Landroid/animation/ValueAnimator;

    .line 3284
    new-instance p2, Lorg/telegram/ui/TopicsFragment$TopicDialogCell$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/TopicsFragment$TopicDialogCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3288
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->hiddenAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3289
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->hiddenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    move v0, v2

    .line 3291
    :cond_4
    iput v0, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->hiddenT:F

    .line 3292
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->setHiddenT()V

    return-void
.end method


# virtual methods
.method public buildLayout()V
    .locals 0

    .line 3179
    invoke-super {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    .line 3180
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->setHiddenT()V

    return-void
.end method

.method protected drawLock2()Z
    .locals 1

    .line 3312
    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->closed:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 3185
    invoke-super {p0}, Lorg/telegram/ui/Cells/DialogCell;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 3186
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->attached:Z

    .line 3187
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 3188
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 3194
    invoke-super {p0}, Lorg/telegram/ui/Cells/DialogCell;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 3195
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->attached:Z

    .line 3196
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 3197
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 3133
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v2, v2, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->isMonoForum(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3134
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Cells/DialogCell;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 3138
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->inPreviewMode:Z

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CheckBox2;->getProgress()F

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    goto :goto_0

    :cond_1
    move v1, v6

    :goto_0
    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->xOffset:F

    .line 3139
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3140
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->xOffset:F

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3141
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->this$0:Lorg/telegram/ui/TopicsFragment;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 3142
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Cells/DialogCell;->onDraw(Landroid/graphics/Canvas;)V

    .line 3143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3145
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3146
    iget-boolean v1, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->drawDivider:Z

    if-eqz v1, :cond_4

    .line 3147
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->fullSeparator:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 3148
    :goto_1
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_3

    .line 3149
    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    sub-float v2, v6, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v1

    int-to-float v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move v0, v3

    move v3, v1

    move v1, v2

    move v2, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    int-to-float v0, v1

    .line 3151
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    sub-float v1, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3154
    :cond_4
    :goto_2
    iget-boolean v1, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->isGeneral:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v1, :cond_5

    iget v1, v1, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_a

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->forumIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    :cond_6
    const/high16 v1, 0x41200000    # 10.0f

    .line 3155
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 3156
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v3, 0x41e00000    # 28.0f

    .line 3157
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 3158
    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v4, :cond_8

    .line 3159
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_7

    .line 3160
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    sub-int/2addr v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v6, v2

    add-int/2addr v3, v1

    invoke-virtual {v4, v5, v1, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    :cond_7
    add-int v5, v2, v3

    add-int/2addr v3, v1

    .line 3162
    invoke-virtual {v4, v2, v1, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3164
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    .line 3166
    :cond_8
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_9

    .line 3167
    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->forumIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    sub-int/2addr v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v6, v2

    add-int/2addr v3, v1

    invoke-virtual {v4, v5, v1, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4

    .line 3169
    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->forumIcon:Landroid/graphics/drawable/Drawable;

    add-int v5, v2, v3

    add-int/2addr v3, v1

    invoke-virtual {v4, v2, v1, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3171
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->forumIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3174
    :cond_a
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V
    .locals 2

    .line 3202
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 3205
    iget-boolean v1, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->attached:Z

    if-eqz v1, :cond_1

    .line 3206
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 3209
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3211
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p1, :cond_3

    .line 3212
    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->attached:Z

    if-eqz v0, :cond_3

    .line 3213
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setForumIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 3218
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->forumIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setTopicIcon(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 7

    .line 3222
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->currentTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 3223
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->closed:Z

    .line 3224
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->inPreviewMode:Z

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    .line 3225
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->updateHidden(ZZ)V

    :cond_2
    if-eqz p1, :cond_3

    .line 3227
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v2, v1, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->isGeneral:Z

    if-eqz p1, :cond_5

    .line 3228
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v2}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetgeneralTopicViewMoving(Lorg/telegram/ui/TopicsFragment;)Landroid/view/View;

    move-result-object v2

    if-eq p0, v2, :cond_5

    .line 3229
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    if-eqz v2, :cond_4

    .line 3230
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeAction:Z

    .line 3231
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionBackgroundColorKey:I

    .line 3232
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionRevealBackgroundColorKey:I

    .line 3233
    const-string v2, "Unhide"

    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionStringKey:Ljava/lang/String;

    .line 3234
    sget v2, Lorg/telegram/messenger/R$string;->Unhide:I

    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionStringId:I

    .line 3235
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unpinArchiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_3

    .line 3237
    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeAction:Z

    .line 3238
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionBackgroundColorKey:I

    .line 3239
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionRevealBackgroundColorKey:I

    .line 3240
    const-string v2, "Hide"

    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionStringKey:Ljava/lang/String;

    .line 3241
    sget v2, Lorg/telegram/messenger/R$string;->Hide:I

    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionStringId:I

    .line 3242
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinArchiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3244
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    .line 3247
    :cond_5
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->inPreviewMode:Z

    if-eqz v2, :cond_6

    return-void

    :cond_6
    const/4 v2, 0x0

    if-eqz p1, :cond_7

    .line 3250
    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v3, v1, :cond_7

    .line 3251
    invoke-virtual {p0, v2}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 3252
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->this$0:Lorg/telegram/ui/TopicsFragment;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMenu:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4, v3, v0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->createGeneralTopicDrawable(Landroid/content/Context;FIZ)Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->setForumIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_7
    if-eqz p1, :cond_a

    .line 3253
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_a

    .line 3254
    invoke-virtual {p0, v2}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->setForumIcon(Landroid/graphics/drawable/Drawable;)V

    .line 3255
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentId()J

    move-result-wide v2

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    .line 3256
    :cond_8
    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v3}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetopenedForForward(Lorg/telegram/ui/TopicsFragment;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v3, 0xd

    goto :goto_4

    :cond_9
    const/16 v3, 0xa

    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v4}, Lorg/telegram/ui/TopicsFragment;->access$1700(Lorg/telegram/ui/TopicsFragment;)I

    move-result v4

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    goto :goto_5

    .line 3259
    :cond_a
    invoke-virtual {p0, v2}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 3260
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->createTopicDrawable(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->setForumIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    :goto_5
    if-eqz p1, :cond_c

    .line 3262
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    if-eqz p1, :cond_c

    move v0, v1

    :cond_c
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->updateHidden(ZZ)V

    .line 3264
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->buildLayout()V

    return-void
.end method
