.class Lorg/telegram/ui/Components/EditTextEmoji$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EditTextEmoji;->createEmojiView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EditTextEmoji;


# direct methods
.method public static synthetic $r8$lambda$-fzUcZkzyHad2-pFi4xSyVONH1Y(Lorg/telegram/ui/Components/EditTextEmoji$7;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextEmoji$7;->lambda$onClearEmojiRecent$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/EditTextEmoji;)V
    .locals 0

    .line 832
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClearEmojiRecent$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 953
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fgetemojiView(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EmojiView;

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

    .line 854
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiExpanded:Z

    return v0
.end method

.method public synthetic isUserSelf()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate$-CC;->$default$isUserSelf(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public onAnimatedEmojiUnlockClick()V
    .locals 4

    .line 859
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-nez v0, :cond_0

    .line 861
    new-instance v0, Lorg/telegram/ui/Components/EditTextEmoji$7$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextEmoji$7$1;-><init>(Lorg/telegram/ui/Components/EditTextEmoji$7;)V

    .line 895
    new-instance v3, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-direct {v3, v0, v2, v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    return-void

    .line 897
    :cond_0
    new-instance v3, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-direct {v3, v0, v2, v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public onBackspace()Z
    .locals 4

    .line 835
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fgeteditText(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 838
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fgeteditText(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x43

    invoke-direct {v2, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onClearEmojiRecent()V
    .locals 3

    .line 950
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 951
    sget v1, Lorg/telegram/messenger/R$string;->ClearRecentEmojiTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 952
    sget v1, Lorg/telegram/messenger/R$string;->ClearRecentEmojiText:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 953
    sget v1, Lorg/telegram/messenger/R$string;->ClearButton:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/EditTextEmoji$7$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/EditTextEmoji$7$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EditTextEmoji$7;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 954
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 955
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 956
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 958
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method public onCustomEmojiSelected(JLorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Z)V
    .locals 3

    .line 922
    iget-object p5, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {p5}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fgeteditText(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p5

    const/4 v0, 0x0

    if-gez p5, :cond_0

    move p5, v0

    .line 928
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fputinnerTextChange(Lorg/telegram/ui/Components/EditTextEmoji;I)V

    .line 929
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_1

    .line 932
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fgeteditText(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    .line 934
    :cond_1
    new-instance p3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object p4, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {p4}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fgeteditText(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p4

    invoke-direct {p3, p1, p2, p4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    move-object p1, p3

    .line 936
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fgetemojiView(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object p2

    iget p2, p2, Lorg/telegram/ui/Components/EmojiView;->emojiCacheType:I

    iput p2, p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    .line 937
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result p2

    const/16 p3, 0x21

    invoke-virtual {v1, p1, v0, p2, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 938
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fgeteditText(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fgeteditText(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2, p5, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 939
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result p1

    add-int/2addr p5, p1

    .line 940
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fgeteditText(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1, p5, p5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fputinnerTextChange(Lorg/telegram/ui/Components/EditTextEmoji;I)V

    return-void

    .line 942
    :goto_2
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 944
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fputinnerTextChange(Lorg/telegram/ui/Components/EditTextEmoji;I)V

    .line 945
    throw p1
.end method

.method public onEmojiSelected(Ljava/lang/String;)V
    .locals 4

    .line 903
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fgeteditText(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    move v0, v1

    .line 908
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fputinnerTextChange(Lorg/telegram/ui/Components/EditTextEmoji;I)V

    .line 909
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fgeteditText(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    .line 910
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fgeteditText(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {v3}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fgeteditText(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 911
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr v0, p1

    .line 912
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fgeteditText(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fputinnerTextChange(Lorg/telegram/ui/Components/EditTextEmoji;I)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 914
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 916
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fputinnerTextChange(Lorg/telegram/ui/Components/EditTextEmoji;I)V

    .line 917
    throw p1
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

    .line 844
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->allowSearch()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 845
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiExpanded:Z

    .line 846
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->updatedEmojiExpanded()V

    .line 847
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fgetsizeNotifierLayout(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 848
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fgetsizeNotifierLayout(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    :cond_2
    :goto_1
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
