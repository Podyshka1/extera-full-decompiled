.class Lorg/telegram/ui/Components/ChatActivityEnterView$53;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->createMessageEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field heightShouldBeChanged:Z

.field private ignorePrevTextChange:Z

.field private nextChangeIsSend:Z

.field private prevText:Ljava/lang/CharSequence;

.field private processChange:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method public static synthetic $r8$lambda$0T39IMvn5YtnOif6XH0NMCBzx4o(Lorg/telegram/ui/Components/ChatActivityEnterView$53;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->lambda$afterTextChanged$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 6084
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$afterTextChanged$0()V
    .locals 1

    .line 6234
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mshowCaptionLimitBulletin(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9

    .line 6163
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->ignorePrevTextChange:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 6166
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->prevText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 6167
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->ignorePrevTextChange:Z

    .line 6168
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->prevText:Ljava/lang/CharSequence;

    invoke-interface {p1, v3, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 6169
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->prevText:Ljava/lang/CharSequence;

    .line 6170
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->ignorePrevTextChange:Z

    return-void

    .line 6173
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetinnerTextChange(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    if-nez v0, :cond_4

    .line 6174
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->nextChangeIsSend:Z

    if-eqz v0, :cond_2

    .line 6175
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendMessage()Z

    .line 6176
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->nextChangeIsSend:Z

    .line 6178
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->processChange:Z

    if-eqz v0, :cond_4

    .line 6179
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v4, Landroid/text/style/ImageSpan;

    invoke-interface {p1, v3, v0, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    move v4, v3

    .line 6180
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 6181
    aget-object v5, v0, v4

    invoke-interface {p1, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6183
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-static {p1, v0, v3, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[I)Ljava/lang/CharSequence;

    .line 6184
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->processChange:Z

    .line 6189
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {p1, v3, v4}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputcodePointCount(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

    .line 6191
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentLimit(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    const-wide/16 v4, 0x64

    const/4 v0, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    if-lez p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentLimit(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcodePointCount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v7

    sub-int/2addr p1, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetisLiveComment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x5

    goto :goto_1

    :cond_5
    const/16 v7, 0x64

    :goto_1
    if-gt p1, v7, :cond_a

    const/16 v7, -0x270f

    if-ge p1, v7, :cond_6

    move p1, v7

    .line 6195
    :cond_6
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mcreateCaptionLimitView(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 6196
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatActivityEnterView;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_7

    move v8, v2

    goto :goto_2

    :cond_7
    move v8, v3

    :goto_2
    invoke-virtual {v7, p1, v8}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 6197
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatActivityEnterView;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_8

    .line 6198
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatActivityEnterView;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6199
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatActivityEnterView;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v7, v0}, Landroid/view/View;->setAlpha(F)V

    .line 6200
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleX(F)V

    .line 6201
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleY(F)V

    .line 6203
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 6204
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    if-gez p1, :cond_9

    .line 6207
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    goto :goto_4

    .line 6209
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    goto :goto_3

    .line 6211
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    if-eqz p1, :cond_b

    .line 6212
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterView$53$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$53$1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$53;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_b
    :goto_3
    move v3, v2

    .line 6220
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonEnabled:Z

    if-eq v0, v3, :cond_c

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdoneButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 6221
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean v3, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonEnabled:Z

    .line 6222
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdoneButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 6223
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdoneButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 6226
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCommandsMenuContainer:Lorg/telegram/ui/bots/BotCommandsMenuContainer;

    if-eqz p1, :cond_d

    .line 6227
    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->dismiss()V

    .line 6229
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mcheckBotMenu(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 6231
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgeteditingCaption(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcaptionLimitBulletinShown(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcodePointCount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->captionLengthLimitDefault:I

    if-le p1, v0, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcodePointCount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->captionLengthLimitPremium:I

    if-ge p1, v0, :cond_f

    .line 6232
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputcaptionLimitBulletinShown(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 6233
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->heightShouldBeChanged:Z

    if-eqz p1, :cond_e

    .line 6234
    new-instance p1, Lorg/telegram/ui/Components/ChatActivityEnterView$53$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$53$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$53;)V

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 6236
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mshowCaptionLimitBulletin(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    :cond_f
    :goto_5
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 6094
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->ignorePrevTextChange:Z

    if-eqz p2, :cond_0

    goto :goto_0

    .line 6097
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordingAudioVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6098
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->prevText:Ljava/lang/CharSequence;

    :cond_1
    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    .line 6104
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->ignorePrevTextChange:Z

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 6110
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetemojiView(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 6111
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "selected_page"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 6113
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetemojiView(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->getCurrentPage()I

    move-result v0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 6115
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetallowStickers(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetallowGifs(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v1

    :goto_2
    if-nez p3, :cond_4

    .line 6119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    if-eqz p3, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    if-eqz v0, :cond_6

    .line 6120
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$msetEmojiButtonImage(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)V

    .line 6122
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetlineCount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    if-eq v0, v3, :cond_b

    .line 6123
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_7

    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v1

    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetlineCount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v4

    if-lt v4, v3, :cond_8

    move v3, v2

    goto :goto_4

    :cond_8
    move v3, v1

    :goto_4
    if-eq v0, v3, :cond_9

    move v0, v2

    goto :goto_5

    :cond_9
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->heightShouldBeChanged:Z

    .line 6124
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetisInitLineCount(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_a

    .line 6125
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetlineCount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onLineCountChanged(II)V

    .line 6127
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputlineCount(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

    goto :goto_6

    .line 6129
    :cond_b
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->heightShouldBeChanged:Z

    .line 6132
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetinnerTextChange(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    if-ne v0, v2, :cond_c

    :goto_7
    return-void

    .line 6135
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendByEnter(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->ctrlPressed:Z

    if-nez v3, :cond_d

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shiftPressed:Z

    if-nez v3, :cond_d

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetignoreTextChange(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetisPaste(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgeteditingMessageObject(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_d

    if-le p4, p3, :cond_d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr p2, p4

    if-ne v0, p2, :cond_d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    const/16 v0, 0xa

    if-ne p2, v0, :cond_d

    .line 6136
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->nextChangeIsSend:Z

    .line 6138
    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputisPaste(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 6139
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    .line 6140
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTrimmedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 6141
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    const/4 v3, 0x2

    if-eqz v0, :cond_12

    .line 6142
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetignoreTextChange(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-nez v0, :cond_12

    add-int/lit8 v0, p4, 0x1

    if-gt p3, v0, :cond_e

    sub-int v4, p4, p3

    if-gt v4, v3, :cond_e

    .line 6143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 6144
    :cond_e
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputmessageWebPageSearch(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 6146
    :cond_f
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v4

    if-gt p3, v0, :cond_11

    sub-int v0, p4, p3

    if-le v0, v3, :cond_10

    goto :goto_8

    :cond_10
    move v0, v1

    goto :goto_9

    :cond_11
    :goto_8
    move v0, v2

    :goto_9
    invoke-interface {v4, p1, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onTextChanged(Ljava/lang/CharSequence;ZZ)V

    .line 6149
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetinnerTextChange(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    if-eq p1, v3, :cond_13

    sub-int/2addr p4, p3

    if-le p4, v2, :cond_13

    .line 6150
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->processChange:Z

    .line 6152
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgeteditingMessageObject(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcanWriteToChannel(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-nez p1, :cond_14

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetlastTypingTimeSend(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    const-wide/16 v0, 0x1388

    sub-long/2addr p3, v0

    cmp-long p1, p1, p3

    if-gez p1, :cond_14

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetignoreTextChange(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 6153
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputlastTypingTimeSend(Lorg/telegram/ui/Components/ChatActivityEnterView;J)V

    .line 6154
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 6155
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needSendTyping()V

    .line 6158
    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$53;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateSendButtonPaid()V

    return-void
.end method
