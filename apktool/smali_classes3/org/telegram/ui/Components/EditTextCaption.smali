.class public Lorg/telegram/ui/Components/EditTextCaption;
.super Lorg/telegram/ui/Components/EditTextBoldCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_ACTION_SHARE:I = 0x10000000


# instance fields
.field public adaptiveCreateLinkDialog:Z

.field private allowTextEntitiesIntersection:Z

.field private caption:Ljava/lang/String;

.field private captionLayout:Landroid/text/StaticLayout;

.field private copyPasteShowed:Z

.field private creationLinkDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private delegate:Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;

.field private hintColor:I

.field private isInitLineCount:Z

.field private lastLayoutText:Ljava/lang/CharSequence;

.field private lastLayoutWidth:I

.field private lineCount:I

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectionEnd:I

.field private selectionStart:I

.field private triesCount:I

.field private userNameLength:I

.field private xOffset:I

.field private yOffset:I


# direct methods
.method public static synthetic $r8$lambda$BDEyp03_BHErR3sGWzR_AKrcIkc(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    .line 396
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 397
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$C7gqoj0ckHohRO5FoVxfrZFiR-k(Lorg/telegram/ui/Components/EditTextCaption;Lorg/telegram/ui/Components/EditTextBoldCursor;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EditTextCaption;->lambda$makeSelectedUrl$3(Lorg/telegram/ui/Components/EditTextBoldCursor;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V2eUCR_CoSrMwX_lV4DOS0oNCCI()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$Y5RTU7JOVVSSOyryWW8n9EHmpWs(Lorg/telegram/ui/Components/EditTextCaption;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextCaption;->lambda$makeSelectedUrl$2(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kt-6KydkrQuSAM8WtUVX0kvwA2M(Lorg/telegram/ui/Components/EditTextCaption;IIII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/EditTextCaption;->lambda$makeSelectedDate$0(IIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$ljAV3NVz9WpOnXPX_HEjXs7w8h4(Lorg/telegram/ui/Components/EditTextCaption;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EditTextCaption;->lambda$onCreateInputConnection$8(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mnIHNYAxl78VPgpL2mJASkqy918(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    .line 402
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 403
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$plFTtUGpCdCBwOImqn731S4lla4(Lorg/telegram/ui/Components/EditTextCaption;IILorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/EditTextCaption;->lambda$makeSelectedUrl$4(IILorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pmeHjy7jufgNxzmdVK03pjy9p2E(Lorg/telegram/ui/Components/EditTextCaption;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->lambda$makeSelectedUrl$5(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetisInitLineCount(Lorg/telegram/ui/Components/EditTextCaption;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EditTextCaption;->isInitLineCount:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlineCount(Lorg/telegram/ui/Components/EditTextCaption;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/EditTextCaption;->lineCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcopyPasteShowed(Lorg/telegram/ui/Components/EditTextCaption;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->copyPasteShowed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlineCount(Lorg/telegram/ui/Components/EditTextCaption;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->lineCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRichPaste(Lorg/telegram/ui/Components/EditTextCaption;Landroid/content/ClipData;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->handleRichPaste(Landroid/content/ClipData;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 82
    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->triesCount:I

    const/4 p1, -0x1

    .line 86
    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    .line 87
    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    .line 101
    iput-object p2, p0, Lorg/telegram/ui/Components/EditTextCaption;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 102
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inQuote:I

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteColor:I

    .line 103
    new-instance p1, Lorg/telegram/ui/Components/EditTextCaption$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EditTextCaption$1;-><init>(Lorg/telegram/ui/Components/EditTextCaption;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 p1, 0x1

    .line 124
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setClipToPadding(Z)V

    return-void
.end method

.method private applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V
    .locals 6

    .line 440
    iget v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    if-ltz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    if-ltz v1, :cond_0

    const/4 v2, -0x1

    .line 443
    iput v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    iput v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 446
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 448
    :goto_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/EditTextCaption;->allowTextEntitiesIntersection:Z

    invoke-static {p1, v0, v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->addStyleToText(Lorg/telegram/ui/Components/TextStyleSpan;IILandroid/text/Spannable;Z)V

    if-nez p1, :cond_4

    .line 451
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 452
    const-class v2, Lorg/telegram/messenger/CodeHighlighting$Span;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/telegram/messenger/CodeHighlighting$Span;

    const/4 v3, 0x0

    move v4, v3

    .line 453
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 454
    aget-object v5, v2, v4

    invoke-interface {p1, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 455
    :cond_1
    const-class v2, Lorg/telegram/ui/Components/QuoteSpan;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/QuoteSpan;

    .line 456
    :goto_2
    array-length v1, v0

    if-ge v3, v1, :cond_3

    .line 457
    aget-object v1, v0, v3

    invoke-interface {p1, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 458
    aget-object v1, v0, v3

    iget-object v1, v1, Lorg/telegram/ui/Components/QuoteSpan;->styleSpan:Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    invoke-interface {p1, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 459
    aget-object v1, v0, v3

    iget-object v1, v1, Lorg/telegram/ui/Components/QuoteSpan;->collapsedSpan:Lorg/telegram/ui/Components/QuoteSpan$QuoteCollapsedPart;

    if-eqz v1, :cond_2

    .line 460
    invoke-interface {p1, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 463
    :cond_3
    array-length p1, v0

    if-lez p1, :cond_4

    const/4 p1, 0x1

    .line 464
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateQuotes(Z)V

    .line 468
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->delegate:Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;

    if-eqz p1, :cond_5

    .line 469
    invoke-interface {p1}, Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;->onSpansChanged()V

    :cond_5
    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 744
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private handleRichPaste(Landroid/content/ClipData;)Z
    .locals 9

    .line 855
    const-class v0, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 857
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    .line 859
    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "video/*"

    .line 860
    invoke-virtual {v2, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "audio/*"

    .line 861
    invoke-virtual {v2, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_5

    .line 865
    :cond_1
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    const-string/jumbo v3, "text/html"

    invoke-virtual {v2, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    .line 866
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-nez v2, :cond_3

    if-eqz v3, :cond_9

    .line 870
    :cond_3
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    .line 871
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 873
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 874
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->readHtmlFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    return v1

    .line 879
    :cond_5
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-static {v2}, Lorg/telegram/messenger/utils/CopyUtilities;->fromHTML(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 880
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[I)Ljava/lang/CharSequence;

    .line 881
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-class v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {p1, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v2, :cond_6

    .line 883
    array-length v3, v2

    move v5, v1

    :goto_2
    if-ge v5, v3, :cond_6

    aget-object v6, v2, v5

    .line 884
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getCacheTypeForEnterView()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->applyFontMetrics(Landroid/graphics/Paint$FontMetricsInt;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 887
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 888
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 889
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5, v2, v3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    if-eqz v5, :cond_7

    .line 890
    array-length v5, v5

    if-lez v5, :cond_7

    .line 891
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {p1, v1, v5, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    .line 892
    array-length v5, v0

    move v6, v1

    :goto_3
    if-ge v6, v5, :cond_8

    aget-object v7, v0, v6

    .line 893
    invoke-virtual {p1, v7}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 894
    iget-object v7, v7, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-virtual {p1, v7}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 897
    :cond_7
    invoke-static {p1}, Lorg/telegram/ui/Components/QuoteSpan;->normalizeQuotes(Landroid/text/Editable;)V

    .line 899
    :cond_8
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, v2, v3, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    add-int/2addr v2, p1

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 903
    :goto_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_9
    :goto_5
    return v1
.end method

.method private synthetic lambda$makeSelectedDate$0(IIII)V
    .locals 3

    .line 226
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 228
    new-instance v1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v1}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 229
    iget v2, v1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 230
    iput p1, v1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    .line 231
    iput p2, v1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    .line 233
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;-><init>()V

    .line 234
    iput p3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->date:I

    .line 235
    iput p4, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->flags:I

    .line 236
    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->applyFlags()V

    .line 239
    :try_start_0
    new-instance p3, Lorg/telegram/ui/Components/FormattedDateSpan;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4, v1, v2}, Lorg/telegram/ui/Components/FormattedDateSpan;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;)V

    const/16 p4, 0x21

    invoke-interface {v0, p3, p1, p2, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :catch_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->delegate:Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;

    if-eqz p1, :cond_0

    .line 244
    invoke-interface {p1}, Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;->onSpansChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$makeSelectedUrl$2(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;)V
    .locals 3

    .line 296
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 297
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "http://"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 298
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 299
    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const v1, 0x3f333333    # 0.7f

    if-eqz p1, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    move v2, v1

    .line 300
    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    .line 301
    :goto_3
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 302
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 303
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 304
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$makeSelectedUrl$3(Lorg/telegram/ui/Components/EditTextBoldCursor;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 2

    .line 307
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "clipboard"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ClipboardManager;

    const/4 v0, 0x0

    .line 310
    :try_start_0
    invoke-virtual {p3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 312
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_0

    .line 315
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-virtual {p1, v0, p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    .line 318
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$makeSelectedUrl$4(IILorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 5

    .line 361
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    .line 362
    const-class p5, Landroid/text/style/CharacterStyle;

    invoke-interface {p4, p1, p2, p5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Landroid/text/style/CharacterStyle;

    const/16 v0, 0x21

    if-eqz p5, :cond_2

    .line 363
    array-length v1, p5

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 364
    :goto_0
    array-length v2, p5

    if-ge v1, v2, :cond_2

    .line 365
    aget-object v2, p5, v1

    .line 366
    instance-of v3, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-nez v3, :cond_1

    instance-of v3, v2, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    if-nez v3, :cond_1

    .line 367
    invoke-interface {p4, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 368
    invoke-interface {p4, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 369
    invoke-interface {p4, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    if-ge v3, p1, :cond_0

    .line 371
    invoke-interface {p4, v2, v3, p1, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    if-le v4, p2, :cond_1

    .line 374
    invoke-interface {p4, v2, p2, v4, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    :cond_2
    :try_start_0
    new-instance p5, Lorg/telegram/ui/Components/URLSpanReplacement;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p5, p3}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p5, p1, p2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :catch_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->delegate:Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;

    if-eqz p1, :cond_3

    .line 385
    invoke-interface {p1}, Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;->onSpansChanged()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$makeSelectedUrl$5(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 392
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->creationLinkDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 393
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private synthetic lambda$onCreateInputConnection$8(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 5

    .line 800
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    and-int/2addr p2, v3

    if-eqz p2, :cond_0

    .line 803
    :try_start_0
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->requestPermission()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v2

    .line 809
    :cond_0
    :goto_0
    new-instance p2, Landroid/content/ClipData;

    .line 810
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    new-instance v1, Landroid/content/ClipData$Item;

    .line 811
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {p2, v0, v1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 814
    new-instance v0, Landroidx/core/view/ContentInfoCompat$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroid/content/ClipData;I)V

    .line 817
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getLinkUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/view/ContentInfoCompat$Builder;->setLinkUri(Landroid/net/Uri;)Landroidx/core/view/ContentInfoCompat$Builder;

    move-result-object p1

    .line 818
    invoke-virtual {p1, p3}, Landroidx/core/view/ContentInfoCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/core/view/ContentInfoCompat$Builder;

    move-result-object p1

    .line 819
    invoke-virtual {p1}, Landroidx/core/view/ContentInfoCompat$Builder;->build()Landroidx/core/view/ContentInfoCompat;

    move-result-object p1

    .line 821
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    move-result-object p1

    if-nez p1, :cond_1

    return v3

    :cond_1
    return v2
.end method

.method private overrideCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 2

    .line 494
    new-instance v0, Lorg/telegram/ui/Components/EditTextCaption$4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EditTextCaption$4;-><init>(Lorg/telegram/ui/Components/EditTextCaption;Landroid/view/ActionMode$Callback;)V

    .line 529
    new-instance v1, Lorg/telegram/ui/Components/EditTextCaption$5;

    invoke-direct {v1, p0, v0, p1}, Lorg/telegram/ui/Components/EditTextCaption$5;-><init>(Lorg/telegram/ui/Components/EditTextCaption;Landroid/view/ActionMode$Callback;Landroid/view/ActionMode$Callback;)V

    return-object v1
.end method

.method private readHtmlFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 910
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p1, :cond_0

    .line 928
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    return-object v0

    .line 913
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1000

    .line 914
    new-array v2, v2, [B

    const/4 v3, 0x0

    move v4, v3

    .line 920
    :cond_2
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 921
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2, v3, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v4, v5

    const v5, 0x8000

    if-lt v4, v5, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 927
    :cond_3
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 928
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    .line 910
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 929
    :goto_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public closeCreationLinkDialog(Z)Z
    .locals 1

    .line 421
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->creationLinkDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 422
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->creationLinkDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getAllowTextEntitiesIntersection()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->allowTextEntitiesIntersection:Z

    return v0
.end method

.method public getCaption()Ljava/lang/String;
    .locals 1

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public isNearRightCaption(I)Z
    .locals 4

    .line 670
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 671
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 672
    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    return v3

    .line 673
    :cond_1
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    int-to-float p1, p1

    add-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_2

    return v3

    :cond_2
    :goto_0
    return v1
.end method

.method public makeSelectedBold()V
    .locals 2

    .line 155
    new-instance v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 156
    iget v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 157
    new-instance v1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V

    return-void
.end method

.method public makeSelectedDate()V
    .locals 4

    .line 216
    iget v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    if-ltz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    if-ltz v1, :cond_0

    const/4 v2, -0x1

    .line 219
    iput v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    iput v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 222
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 225
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/EditTextCaption;II)V

    new-instance v0, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda8;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextCaption;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3, v0, v1}, Lorg/telegram/ui/Components/AlertsCreator;->createFormattedDatePickerDialog(Landroid/content/Context;Lorg/telegram/ui/Components/AlertsCreator$FormattedDatePickerDelegate;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    return-void
.end method

.method public makeSelectedItalic()V
    .locals 2

    .line 168
    new-instance v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 169
    iget v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 170
    new-instance v1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V

    return-void
.end method

.method public makeSelectedMono()V
    .locals 2

    .line 174
    new-instance v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 175
    iget v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 176
    new-instance v1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V

    return-void
.end method

.method public makeSelectedQuote()V
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedQuote(Z)V

    return-void
.end method

.method public makeSelectedQuote(Z)V
    .locals 3

    .line 197
    iget v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    if-ltz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    if-ltz v1, :cond_0

    const/4 v2, -0x1

    .line 200
    iput v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    iput v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 203
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 205
    :goto_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2, v0, v1, p1}, Lorg/telegram/ui/Components/QuoteSpan;->putQuoteToEditable(Landroid/text/Editable;IIZ)I

    move-result p1

    if-ltz p1, :cond_1

    .line 207
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 208
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->resetFontMetricsCache()V

    :cond_1
    const/4 p1, 0x1

    .line 210
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateQuotes(Z)V

    .line 211
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateSpoilers()V

    return-void
.end method

.method public makeSelectedRegular()V
    .locals 1

    const/4 v0, 0x0

    .line 429
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V

    return-void
.end method

.method public makeSelectedSpoiler()V
    .locals 2

    .line 161
    new-instance v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 162
    iget v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 163
    new-instance v1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V

    .line 164
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateSpoilers()V

    return-void
.end method

.method public makeSelectedStrike()V
    .locals 2

    .line 180
    new-instance v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 181
    iget v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 182
    new-instance v1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V

    return-void
.end method

.method public makeSelectedUnderline()V
    .locals 2

    .line 186
    new-instance v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 187
    iget v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 188
    new-instance v1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V

    return-void
.end method

.method public makeSelectedUrl()V
    .locals 18

    move-object/from16 v1, p0

    .line 251
    iget-boolean v0, v1, Lorg/telegram/ui/Components/EditTextCaption;->adaptiveCreateLinkDialog:Z

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialogDecor$Builder;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Components/EditTextCaption;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialogDecor$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_0
    move-object v2, v0

    goto :goto_1

    .line 254
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Components/EditTextCaption;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    .line 256
    :goto_1
    sget v0, Lorg/telegram/messenger/R$string;->CreateLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 258
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 259
    new-instance v4, Lorg/telegram/ui/Components/EditTextCaption$2;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v1, v0}, Lorg/telegram/ui/Components/EditTextCaption$2;-><init>(Lorg/telegram/ui/Components/EditTextCaption;Landroid/content/Context;)V

    const/high16 v0, 0x41900000    # 18.0f

    const/4 v5, 0x1

    .line 266
    invoke-virtual {v4, v5, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 267
    const-string v0, "http://"

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/EditTextCaption;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 269
    sget v0, Lorg/telegram/messenger/R$string;->URL:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    .line 270
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/EditTextCaption;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHeaderHintColor(I)V

    .line 271
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 272
    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 273
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTransformHintToHeader(Z)V

    .line 274
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/EditTextCaption;->getThemedColor(I)I

    move-result v0

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/EditTextCaption;->getThemedColor(I)I

    move-result v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/EditTextCaption;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v4, v0, v6, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    const/4 v0, 0x6

    .line 275
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    const/4 v6, 0x0

    .line 276
    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/4 v7, 0x0

    .line 278
    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 279
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/EditTextCaption;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 280
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_TextSelectionCursor:I

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/EditTextCaption;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    const/16 v0, 0x77

    const/4 v8, -0x1

    .line 281
    invoke-static {v8, v8, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x41400000    # 12.0f

    .line 284
    invoke-virtual {v0, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 285
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 286
    sget v9, Lorg/telegram/messenger/R$string;->Paste:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v9, 0x41200000    # 10.0f

    .line 287
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v0, v10, v7, v9, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v9, 0x11

    .line 288
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 289
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EditTextCaption;->getThemedColor(I)I

    move-result v9

    .line 290
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v10, 0x40c00000    # 6.0f

    .line 291
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const v11, 0x3df5c28f    # 0.12f

    invoke-static {v9, v11}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v11

    const v12, 0x3e19999a    # 0.15f

    invoke-static {v9, v12}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v9

    invoke-static {v10, v11, v9}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v9, 0x3dcccccd    # 0.1f

    const/high16 v10, 0x3fc00000    # 1.5f

    .line 292
    invoke-static {v0, v9, v10}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    const/high16 v16, 0x41c00000    # 24.0f

    const/high16 v17, 0x40400000    # 3.0f

    const/4 v11, -0x2

    const/high16 v12, 0x41d00000    # 26.0f

    const/16 v13, 0x15

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 293
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    new-instance v9, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda0;

    invoke-direct {v9, v1, v4, v0}, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EditTextCaption;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;)V

    .line 306
    new-instance v10, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda1;

    invoke-direct {v10, v1, v4, v9}, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EditTextCaption;Lorg/telegram/ui/Components/EditTextBoldCursor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    new-instance v0, Lorg/telegram/ui/Components/EditTextCaption$3;

    invoke-direct {v0, v1, v9}, Lorg/telegram/ui/Components/EditTextCaption$3;-><init>(Lorg/telegram/ui/Components/EditTextCaption;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 331
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v10, "clipboard"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 335
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 337
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v0, v6

    :goto_2
    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v4, v7, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    .line 345
    :cond_1
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 347
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 351
    iget v0, v1, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    if-ltz v0, :cond_2

    iget v3, v1, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    if-ltz v3, :cond_2

    .line 354
    iput v8, v1, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    iput v8, v1, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    goto :goto_3

    .line 356
    :cond_2
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 357
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 360
    :goto_3
    sget v8, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda2;

    invoke-direct {v9, v1, v0, v3, v4}, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EditTextCaption;IILorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v2, v8, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 388
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 389
    iget-boolean v0, v1, Lorg/telegram/ui/Components/EditTextCaption;->adaptiveCreateLinkDialog:Z

    if-eqz v0, :cond_3

    .line 390
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/EditTextCaption;->creationLinkDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 391
    new-instance v2, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EditTextCaption;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 395
    iget-object v0, v1, Lorg/telegram/ui/Components/EditTextCaption;->creationLinkDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v2, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda4;

    invoke-direct {v2, v4}, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 399
    iget-object v0, v1, Lorg/telegram/ui/Components/EditTextCaption;->creationLinkDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    goto :goto_4

    .line 401
    :cond_3
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda5;

    invoke-direct {v2, v4}, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 407
    :goto_4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_5

    .line 409
    instance-of v2, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_4

    .line 410
    move-object v2, v0

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_4
    const/high16 v2, 0x41c00000    # 24.0f

    .line 412
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/high16 v2, 0x42100000    # 36.0f

    .line 413
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 414
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    :cond_5
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v4, v7, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    return-void
.end method

.method protected onContextMenuClose()V
    .locals 0

    return-void
.end method

.method protected onContextMenuOpen()V
    .locals 0

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .line 790
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 795
    :cond_0
    const-string/jumbo v1, "text/html"

    const-string/jumbo v2, "text/plain"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 796
    invoke-static {p1, v1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setContentMimeTypes(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V

    .line 798
    new-instance v1, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/EditTextCaption;)V

    .line 824
    invoke-static {v0, p1, v1}, Landroidx/core/view/inputmethod/InputConnectionCompat;->createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 826
    new-instance v0, Lorg/telegram/ui/Components/EditTextCaption$6;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/telegram/ui/Components/EditTextCaption$6;-><init>(Lorg/telegram/ui/Components/EditTextCaption;Landroid/view/inputmethod/InputConnection;Z)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 689
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    .line 690
    iget v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->offsetY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 691
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onDraw(Landroid/graphics/Canvas;)V

    .line 693
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->userNameLength:I

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 694
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 695
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    .line 696
    iget v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->hintColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 697
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 698
    iget v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->xOffset:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/EditTextCaption;->yOffset:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 699
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 700
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 701
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 704
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 706
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    .line 711
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 712
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    .line 713
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHintText(Ljava/lang/CharSequence;)V

    .line 716
    :cond_0
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getActionList()Ljava/util/List;

    move-result-object v0

    .line 717
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 718
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 719
    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v4

    const/high16 v5, 0x10000000

    if-ne v4, v5, :cond_1

    .line 720
    invoke-virtual {p1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 724
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 725
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_spoiler:I

    sget v2, Lorg/telegram/messenger/R$string;->Spoiler:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 726
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_bold:I

    sget v2, Lorg/telegram/messenger/R$string;->Bold:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 727
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_italic:I

    sget v2, Lorg/telegram/messenger/R$string;->Italic:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 728
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_bold_italic:I

    sget v2, Lorg/telegram/messenger/R$string;->BoldItalic:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 729
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_mono:I

    sget v2, Lorg/telegram/messenger/R$string;->Mono:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 730
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_strike:I

    sget v2, Lorg/telegram/messenger/R$string;->Strike:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 731
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_underline:I

    sget v2, Lorg/telegram/messenger/R$string;->Underline:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 732
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_link:I

    sget v2, Lorg/telegram/messenger/R$string;->CreateLink:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 733
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_regular:I

    sget v2, Lorg/telegram/messenger/R$string;->Regular:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 734
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_date:I

    sget v2, Lorg/telegram/messenger/R$string;->FormattedDate:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_3
    return-void
.end method

.method protected onLineCountChanged(II)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 620
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->isInitLineCount:Z

    .line 621
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onMeasure(II)V

    .line 622
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EditTextCaption;->isInitLineCount:Z

    if-eqz p2, :cond_1

    .line 623
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/EditTextCaption;->lineCount:I

    .line 625
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->isInitLineCount:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 627
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x424c0000    # 51.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 628
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 631
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 632
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 634
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->lastLayoutText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    .line 635
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->lastLayoutWidth:I

    if-ne v0, p1, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v0, 0x0

    .line 639
    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    .line 640
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->lastLayoutText:Ljava/lang/CharSequence;

    .line 641
    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->lastLayoutWidth:I

    if-eqz v0, :cond_4

    .line 643
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 644
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_4

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0x40

    if-ne v0, v3, :cond_4

    const/16 v0, 0x20

    .line 645
    invoke-static {p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    .line 647
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 648
    const-string v3, "fonts/rregular.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    add-int/2addr v0, v1

    .line 649
    invoke-interface {p2, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 650
    invoke-virtual {v6, p2, v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p2

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p2, v3

    sub-int/2addr p1, p2

    .line 651
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 652
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->userNameLength:I

    .line 653
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    int-to-float v0, v7

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v6, v0, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 654
    iput p2, p0, Lorg/telegram/ui/Components/EditTextCaption;->xOffset:I

    .line 656
    :try_start_1
    new-instance v4, Landroid/text/StaticLayout;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v4, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    .line 657
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    if-lez p1, :cond_3

    .line 658
    iget p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->xOffset:I

    int-to-float p1, p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result p2

    neg-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->xOffset:I

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_4

    .line 660
    :cond_3
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->yOffset:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 662
    :goto_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 6

    const v0, 0x1020022

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 750
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 751
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 752
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EditTextCaption;->handleRichPaste(Landroid/content/ClipData;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_0
    const v0, 0x1020021

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 756
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 757
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 759
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 760
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    .line 761
    invoke-virtual {v3}, Landroid/app/Activity;->closeContextMenu()V

    .line 762
    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    if-eqz v3, :cond_1

    .line 763
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/FloatingActionMode;->finish()V

    .line 765
    :cond_1
    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_2
    const v0, 0x1020020

    if-ne p1, v0, :cond_5

    .line 769
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 770
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 772
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 773
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz v0, :cond_3

    .line 775
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 777
    :cond_3
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v3, v2, :cond_4

    .line 778
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v2, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 780
    :cond_4
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    .line 785
    :catch_0
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 479
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 481
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 740
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->performMenuAction(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public performMenuAction(I)Z
    .locals 2

    .line 565
    sget v0, Lorg/telegram/messenger/R$id;->menu_regular:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 566
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedRegular()V

    return v1

    .line 568
    :cond_0
    sget v0, Lorg/telegram/messenger/R$id;->menu_bold:I

    if-ne p1, v0, :cond_1

    .line 569
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedBold()V

    return v1

    .line 571
    :cond_1
    sget v0, Lorg/telegram/messenger/R$id;->menu_italic:I

    if-ne p1, v0, :cond_2

    .line 572
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedItalic()V

    return v1

    .line 574
    :cond_2
    sget v0, Lorg/telegram/messenger/R$id;->menu_bold_italic:I

    if-ne p1, v0, :cond_3

    .line 575
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedBold()V

    .line 576
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedItalic()V

    return v1

    .line 578
    :cond_3
    sget v0, Lorg/telegram/messenger/R$id;->menu_mono:I

    if-ne p1, v0, :cond_4

    .line 579
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedMono()V

    return v1

    .line 581
    :cond_4
    sget v0, Lorg/telegram/messenger/R$id;->menu_link:I

    if-ne p1, v0, :cond_5

    .line 582
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedUrl()V

    return v1

    .line 584
    :cond_5
    sget v0, Lorg/telegram/messenger/R$id;->menu_strike:I

    if-ne p1, v0, :cond_6

    .line 585
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedStrike()V

    return v1

    .line 587
    :cond_6
    sget v0, Lorg/telegram/messenger/R$id;->menu_underline:I

    if-ne p1, v0, :cond_7

    .line 588
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedUnderline()V

    return v1

    .line 590
    :cond_7
    sget v0, Lorg/telegram/messenger/R$id;->menu_spoiler:I

    if-ne p1, v0, :cond_8

    .line 591
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedSpoiler()V

    return v1

    .line 593
    :cond_8
    sget v0, Lorg/telegram/messenger/R$id;->menu_quote:I

    if-ne p1, v0, :cond_9

    .line 594
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedQuote()V

    return v1

    .line 596
    :cond_9
    sget v0, Lorg/telegram/messenger/R$id;->menu_date:I

    if-ne p1, v0, :cond_a

    .line 597
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedDate()V

    return v1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public setAllowTextEntitiesIntersection(Z)V
    .locals 0

    .line 147
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->allowTextEntitiesIntersection:Z

    return-void
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 135
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    if-eqz p1, :cond_3

    const/16 v0, 0xa

    const/16 v1, 0x20

    .line 137
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    .line 139
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_4
    :goto_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->delegate:Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;

    return-void
.end method

.method public setHintColor(I)V
    .locals 0

    .line 682
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    .line 683
    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->hintColor:I

    .line 684
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelectionOverride(II)V
    .locals 0

    .line 433
    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    .line 434
    iput p2, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 610
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->overrideCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    .line 605
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->overrideCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
