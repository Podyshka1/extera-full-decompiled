.class Lorg/telegram/ui/PollCreateActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PollCreateActivity;->createEmojiView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PollCreateActivity;


# direct methods
.method public static synthetic $r8$lambda$ncW7q8xYMsIf6hTeUs5J0hDKEOY(Lorg/telegram/ui/PollCreateActivity$9;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PollCreateActivity$9;->lambda$onClearEmojiRecent$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PollCreateActivity;)V
    .locals 0

    .line 1439
    iput-object p1, p0, Lorg/telegram/ui/PollCreateActivity$9;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClearEmojiRecent$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 1503
    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$9;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetemojiView(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView;->clearRecentEmoji()V

    return-void
.end method


# virtual methods
.method public synthetic canAddCaptionToGif(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate$-CC;->$default$canAddCaptionToGif(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    return p1
.end method

.method public synthetic canSchedule()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate$-CC;->$default$canSchedule(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic getDialogId()J
    .locals 2

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate$-CC;->$default$getDialogId(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic getProgressToSearchOpened()F
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate$-CC;->$default$getProgressToSearchOpened(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)F

    move-result v0

    return v0
.end method

.method public synthetic getThreadId()I
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate$-CC;->$default$getThreadId(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)I

    move-result v0

    return v0
.end method

.method public synthetic invalidateEnterView()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate$-CC;->$default$invalidateEnterView(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)V

    return-void
.end method

.method public synthetic isExpanded()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate$-CC;->$default$isExpanded(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic isInScheduleMode()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate$-CC;->$default$isInScheduleMode(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public isSearchOpened()Z
    .locals 1

    .line 1516
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$9;->this$0:Lorg/telegram/ui/PollCreateActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/PollCreateActivity;->isEmojiSearchOpened:Z

    return v0
.end method

.method public synthetic isUserSelf()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate$-CC;->$default$isUserSelf(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic onAnimatedEmojiUnlockClick()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate$-CC;->$default$onAnimatedEmojiUnlockClick(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)V

    return-void
.end method

.method public onBackspace()Z
    .locals 4

    .line 1442
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$9;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetcurrentCell(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/Cells/PollEditTextCell;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1446
    :cond_0
    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x43

    invoke-direct {v2, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onClearEmojiRecent()V
    .locals 3

    .line 1500
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity$9;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity$9;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/PollCreateActivity;->access$700(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1501
    sget v1, Lorg/telegram/messenger/R$string;->ClearRecentEmojiTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1502
    sget v1, Lorg/telegram/messenger/R$string;->ClearRecentEmojiText:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1503
    sget v1, Lorg/telegram/messenger/R$string;->ClearButton:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PollCreateActivity$9$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PollCreateActivity$9$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PollCreateActivity$9;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1504
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1505
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method public onCustomEmojiSelected(JLorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Z)V
    .locals 3

    .line 1472
    iget-object p5, p0, Lorg/telegram/ui/PollCreateActivity$9;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p5}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetcurrentCell(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/Cells/PollEditTextCell;

    move-result-object p5

    invoke-virtual {p5}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p5

    if-nez p5, :cond_0

    return-void

    .line 1476
    :cond_0
    invoke-virtual {p5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    move v0, v1

    .line 1481
    :cond_1
    :try_start_0
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_2

    .line 1484
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {p5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 1486
    :cond_2
    new-instance p3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {p5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p4

    invoke-direct {p3, p1, p2, p4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    move-object p1, p3

    .line 1488
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/PollCreateActivity$9;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetemojiView(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object p2

    iget p2, p2, Lorg/telegram/ui/Components/EmojiView;->emojiCacheType:I

    iput p2, p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    .line 1489
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result p2

    const/16 p3, 0x21

    invoke-virtual {v2, p1, v1, p2, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1490
    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1491
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result p1

    add-int/2addr v0, p1

    .line 1492
    invoke-virtual {p5, v0, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1494
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onEmojiSelected(Ljava/lang/String;)V
    .locals 4

    .line 1452
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$9;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetcurrentCell(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/Cells/PollEditTextCell;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1456
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_1

    move v1, v2

    .line 1461
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {p1, v3, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1462
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1463
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr v1, p1

    .line 1464
    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1466
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onEmojiSettingsClick(Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate$-CC;->$default$onEmojiSettingsClick(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;Ljava/util/ArrayList;)V

    return-void
.end method

.method public synthetic onGifSelected(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZII)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate$-CC;->$default$onGifSelected(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZII)V

    return-void
.end method

.method public synthetic onGifSelectedForAddCaption(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZII)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate$-CC;->$default$onGifSelectedForAddCaption(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZII)V

    return-void
.end method

.method public onSearchOpenClose(I)V
    .locals 1

    .line 1510
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$9;->this$0:Lorg/telegram/ui/PollCreateActivity;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lorg/telegram/ui/PollCreateActivity;->isEmojiSearchOpened:Z

    .line 1511
    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetsizeNotifierFrameLayout(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public synthetic onShowStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate$-CC;->$default$onShowStickerSet(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)V

    return-void
.end method

.method public synthetic onStickerSelected(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZII)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p8}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate$-CC;->$default$onStickerSelected(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZII)V

    return-void
.end method

.method public synthetic onStickerSetAdd(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate$-CC;->$default$onStickerSetAdd(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V

    return-void
.end method

.method public synthetic onStickerSetRemove(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate$-CC;->$default$onStickerSetRemove(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V

    return-void
.end method

.method public synthetic onStickersGroupClick(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate$-CC;->$default$onStickersGroupClick(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;J)V

    return-void
.end method

.method public synthetic onStickersSettingsClick()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate$-CC;->$default$onStickersSettingsClick(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)V

    return-void
.end method

.method public synthetic onTabOpened(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate$-CC;->$default$onTabOpened(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;I)V

    return-void
.end method

.method public synthetic showTrendingStickersAlert(Lorg/telegram/ui/Components/TrendingStickersLayout;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate$-CC;->$default$showTrendingStickersAlert(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;Lorg/telegram/ui/Components/TrendingStickersLayout;)V

    return-void
.end method
