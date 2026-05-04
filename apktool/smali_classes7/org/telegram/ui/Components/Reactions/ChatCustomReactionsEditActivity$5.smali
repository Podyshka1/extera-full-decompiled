.class Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;
.super Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->initSelectAnimatedEmojiDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private firstLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;


# direct methods
.method public static synthetic $r8$lambda$-IE-NGH9rZBcG-Zcu1aC7X_TvLk(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->lambda$onEmojiSelected$0(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V
    .locals 0

    .line 472
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p10}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    const/4 p2, 0x1

    .line 474
    iput-boolean p2, p1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->firstLayout:Z

    const/4 p2, 0x0

    .line 477
    invoke-virtual {p0, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setDrawBackground(Z)V

    return-void
.end method

.method private synthetic lambda$onEmojiSelected$0(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V
    .locals 5

    .line 494
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgeteditText(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 495
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 496
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    if-ne v4, p1, :cond_1

    .line 498
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgeteditText(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->getEditTextSelectionEnd()I

    move-result p1

    .line 499
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 500
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 501
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgeteditText(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    sub-int v0, v1, v0

    .line 503
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgeteditText(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    move-result-object v2

    if-gt v1, p1, :cond_0

    sub-int/2addr p1, v0

    :cond_0
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;)V
    .locals 3

    .line 490
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgetselectedEmojisMap(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 p4, 0x0

    const/4 p5, 0x1

    if-eqz p1, :cond_0

    .line 491
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgetselectedEmojisIds(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 492
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgetselectedEmojisMap(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 493
    new-instance p3, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->setRemoved(Ljava/lang/Runnable;)V

    .line 508
    iget-object p3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p3, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$manimateChangesInNextRows(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    .line 509
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgetselectAnimatedEmojiDialog(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    move-result-object p1

    invoke-virtual {p1, p2, p5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setMultiSelected(Ljava/lang/Long;Z)V

    .line 510
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p1, p4}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$mcheckMaxCustomReactions(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Z)V

    return-void

    .line 512
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgetselectedEmojisMap(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgetselectedEmojisMap(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgetmaxReactionsCount(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 513
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgetmaxReactionsCount(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)I

    move-result p2

    new-array p3, p4, [Ljava/lang/Object;

    const-string p4, "ReactionMaxCountError"

    invoke-static {p4, p2, p3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 517
    :cond_1
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgeteditText(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->getEditTextSelectionEnd()I

    move-result p1

    .line 518
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "b"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgeteditText(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {p3, p2, v1}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->createAnimatedEmojiSpan(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Long;Landroid/graphics/Paint$FontMetricsInt;)Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object p3

    .line 520
    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getCacheTypeForEnterView()I

    move-result v1

    iput v1, p3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    .line 521
    invoke-virtual {p3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->setAdded()V

    .line 522
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgetselectedEmojisIds(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 523
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgetselectedEmojisMap(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {v0, p3, p4, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 525
    iget-object p4, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p4}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgeteditText(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-interface {p4, p1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 526
    iget-object p4, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p4}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgeteditText(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    move-result-object p4

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p4, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 527
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgetselectAnimatedEmojiDialog(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    move-result-object p1

    invoke-virtual {p1, p2, p5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setMultiSelected(Ljava/lang/Long;Z)V

    .line 528
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p1, p5}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$mcheckMaxCustomReactions(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Z)V

    .line 529
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$manimateChangesInNextRows(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 531
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 482
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onLayout(ZIIII)V

    move-object p1, p0

    .line 483
    iget-boolean p2, p1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->firstLayout:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 484
    iput-boolean p2, p1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->firstLayout:Z

    .line 485
    iget-object p2, p1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgetselectAnimatedEmojiDialog(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onShow(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
