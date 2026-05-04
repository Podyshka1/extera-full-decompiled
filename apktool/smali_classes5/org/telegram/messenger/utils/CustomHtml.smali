.class public abstract Lorg/telegram/messenger/utils/CustomHtml;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static toHTML_0_wrapQuote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 4

    :goto_0
    if-ge p2, p3, :cond_5

    .line 27
    const-class v0, Lorg/telegram/ui/Components/QuoteSpan;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    if-gez v1, :cond_0

    move v1, p3

    .line 31
    :cond_0
    invoke-interface {p1, p2, v1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/QuoteSpan;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 34
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 35
    aget-object v3, v0, v2

    iget-boolean v3, v3, Lorg/telegram/ui/Components/QuoteSpan;->isCollapsing:Z

    if-eqz v3, :cond_1

    const-string v3, "<details>"

    goto :goto_2

    :cond_1
    const-string v3, "<blockquote>"

    :goto_2
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 39
    :cond_2
    invoke-static {p0, p1, p2, v1}, Lorg/telegram/messenger/utils/CustomHtml;->toHTML_1_wrapTextStyle(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    if-eqz v0, :cond_4

    .line 42
    array-length p2, v0

    add-int/lit8 p2, p2, -0x1

    :goto_3
    if-ltz p2, :cond_4

    .line 43
    aget-object v2, v0, p2

    iget-boolean v2, v2, Lorg/telegram/ui/Components/QuoteSpan;->isCollapsing:Z

    if-eqz v2, :cond_3

    const-string v2, "</details>"

    goto :goto_4

    :cond_3
    const-string v2, "</blockquote>"

    :goto_4
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_4
    move p2, v1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static toHTML_1_wrapTextStyle(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 7

    :goto_0
    if-ge p2, p3, :cond_f

    .line 52
    const-class v0, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    if-gez v1, :cond_0

    move v1, p3

    .line 56
    :cond_0
    invoke-interface {p1, p2, v1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/TextStyleSpan;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    move v3, v2

    .line 59
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_7

    .line 60
    aget-object v4, v0, v3

    if-eqz v4, :cond_6

    .line 63
    invoke-virtual {v4}, Lorg/telegram/ui/Components/TextStyleSpan;->getStyleFlags()I

    move-result v5

    and-int/lit16 v6, v5, 0x300

    if-lez v6, :cond_1

    .line 65
    const-string v6, "<spoiler>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v6, v5, 0x1

    if-lez v6, :cond_2

    .line 68
    const-string v6, "<b>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v6, v5, 0x2

    if-lez v6, :cond_3

    .line 71
    const-string v6, "<i>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v6, v5, 0x10

    if-lez v6, :cond_4

    .line 74
    const-string v6, "<u>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 v6, v5, 0x8

    if-lez v6, :cond_5

    .line 77
    const-string v6, "<s>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit16 v5, v5, 0x80

    if-lez v5, :cond_6

    .line 80
    invoke-virtual {v4}, Lorg/telegram/ui/Components/TextStyleSpan;->getTextStyleRun()Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lorg/telegram/ui/Components/TextStyleSpan;->getTextStyleRun()Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    if-eqz v5, :cond_6

    .line 81
    const-string v5, "<a href=\""

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/TextStyleSpan;->getTextStyleRun()Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\">"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 90
    :cond_7
    invoke-static {p0, p1, p2, v1}, Lorg/telegram/messenger/utils/CustomHtml;->toHTML_2_wrapURLReplacements(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    if-eqz v0, :cond_e

    .line 93
    :goto_2
    array-length p2, v0

    if-ge v2, p2, :cond_e

    .line 94
    aget-object p2, v0, v2

    if-eqz p2, :cond_d

    .line 97
    invoke-virtual {p2}, Lorg/telegram/ui/Components/TextStyleSpan;->getStyleFlags()I

    move-result v3

    and-int/lit16 v4, v3, 0x80

    if-lez v4, :cond_8

    .line 98
    invoke-virtual {p2}, Lorg/telegram/ui/Components/TextStyleSpan;->getTextStyleRun()Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {p2}, Lorg/telegram/ui/Components/TextStyleSpan;->getTextStyleRun()Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    if-eqz p2, :cond_8

    .line 99
    const-string p2, "</a>"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    and-int/lit8 p2, v3, 0x8

    if-lez p2, :cond_9

    .line 102
    const-string p2, "</s>"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    and-int/lit8 p2, v3, 0x10

    if-lez p2, :cond_a

    .line 105
    const-string p2, "</u>"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    and-int/lit8 p2, v3, 0x2

    if-lez p2, :cond_b

    .line 108
    const-string p2, "</i>"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    and-int/lit8 p2, v3, 0x1

    if-lez p2, :cond_c

    .line 111
    const-string p2, "</b>"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    and-int/lit16 p2, v3, 0x300

    if-lez p2, :cond_d

    .line 114
    const-string p2, "</spoiler>"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_e
    move p2, v1

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method private static toHTML_2_wrapURLReplacements(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 6

    :goto_0
    if-ge p2, p3, :cond_3

    .line 125
    const-class v0, Lorg/telegram/ui/Components/URLSpanReplacement;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    if-gez v1, :cond_0

    move v1, p3

    .line 129
    :cond_0
    invoke-interface {p1, p2, v1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/URLSpanReplacement;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v3, v2

    .line 132
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 133
    aget-object v4, v0, v3

    .line 134
    const-string v5, "<a href=\""

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\">"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 138
    :cond_1
    invoke-static {p0, p1, p2, v1}, Lorg/telegram/messenger/utils/CustomHtml;->toHTML_3_wrapMonoscape(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    if-eqz v0, :cond_2

    .line 141
    :goto_2
    array-length p2, v0

    if-ge v2, p2, :cond_2

    .line 142
    const-string p2, "</a>"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move p2, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static toHTML_3_wrapMonoscape(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 5

    :goto_0
    if-ge p2, p3, :cond_5

    .line 152
    const-class v0, Lorg/telegram/ui/Components/URLSpanMono;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    if-gez v1, :cond_0

    move v1, p3

    .line 156
    :cond_0
    invoke-interface {p1, p2, v1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/URLSpanMono;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v3, v2

    .line 159
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 160
    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    .line 162
    const-string v4, "<pre>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 167
    :cond_2
    invoke-static {p0, p1, p2, v1}, Lorg/telegram/messenger/utils/CustomHtml;->toHTML_4_wrapMonoscape2(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    if-eqz v0, :cond_4

    .line 170
    :goto_2
    array-length p2, v0

    if-ge v2, p2, :cond_4

    .line 171
    aget-object p2, v0, v2

    if-eqz p2, :cond_3

    .line 173
    const-string p2, "</pre>"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move p2, v1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static toHTML_4_wrapMonoscape2(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 6

    :goto_0
    if-ge p2, p3, :cond_6

    .line 184
    const-class v0, Lorg/telegram/messenger/CodeHighlighting$Span;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    if-gez v1, :cond_0

    move v1, p3

    .line 188
    :cond_0
    invoke-interface {p1, p2, v1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/CodeHighlighting$Span;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v3, v2

    .line 191
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 192
    aget-object v4, v0, v3

    if-eqz v4, :cond_2

    .line 194
    iget-object v5, v4, Lorg/telegram/messenger/CodeHighlighting$Span;->lng:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 195
    const-string v4, "<pre>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 197
    :cond_1
    const-string v5, "<pre lang=\""

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lorg/telegram/messenger/CodeHighlighting$Span;->lng:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\">"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 203
    :cond_3
    invoke-static {p0, p1, p2, v1}, Lorg/telegram/messenger/utils/CustomHtml;->toHTML_6_wrapAnimatedEmoji(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    if-eqz v0, :cond_5

    .line 206
    :goto_3
    array-length p2, v0

    if-ge v2, p2, :cond_5

    .line 207
    aget-object p2, v0, v2

    if-eqz p2, :cond_4

    .line 209
    const-string p2, "</pre>"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move p2, v1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private static toHTML_6_wrapAnimatedEmoji(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 8

    :goto_0
    if-ge p2, p3, :cond_5

    .line 219
    const-class v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    if-gez v1, :cond_0

    move v1, p3

    .line 223
    :cond_0
    invoke-interface {p1, p2, v1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v3, v2

    .line 226
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 227
    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    .line 228
    iget-boolean v5, v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->standard:Z

    if-nez v5, :cond_1

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<animated-emoji data-document-id=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "\">"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 234
    :cond_2
    invoke-static {p0, p1, p2, v1}, Lorg/telegram/messenger/utils/CustomHtml;->toHTML_7_withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    if-eqz v0, :cond_4

    .line 237
    :goto_2
    array-length p2, v0

    if-ge v2, p2, :cond_4

    .line 238
    aget-object p2, v0, v2

    if-eqz p2, :cond_3

    .line 239
    iget-boolean p2, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->standard:Z

    if-nez p2, :cond_3

    .line 240
    const-string p2, "</animated-emoji>"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move p2, v1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static toHTML_7_withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .locals 9

    :goto_0
    if-ge p2, p3, :cond_a

    .line 249
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 252
    const-string v0, "<br>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_0
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_1

    .line 254
    const-string v0, "&lt;"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_1
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_2

    .line 256
    const-string v0, "&gt;"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_2
    const/16 v2, 0x26

    if-ne v0, v2, :cond_3

    .line 258
    const-string v0, "&amp;"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 259
    :cond_3
    const-string v2, ";"

    const-string v3, "&#"

    const v4, 0xd800

    if-lt v0, v4, :cond_4

    const v5, 0xdfff

    if-gt v0, v5, :cond_4

    const v6, 0xdc00

    if-ge v0, v6, :cond_9

    add-int/lit8 v7, p2, 0x1

    if-ge v7, p3, :cond_9

    .line 261
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_9

    if-gt v8, v5, :cond_9

    sub-int/2addr v0, v4

    shl-int/lit8 p2, v0, 0xa

    const/high16 v0, 0x10000

    or-int/2addr p2, v0

    sub-int/2addr v8, v6

    or-int/2addr p2, v8

    .line 265
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p2, v7

    goto :goto_3

    :cond_4
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_8

    const/16 v1, 0x20

    if-ge v0, v1, :cond_5

    goto :goto_2

    :cond_5
    if-ne v0, v1, :cond_7

    :goto_1
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_6

    .line 271
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_6

    .line 272
    const-string p2, "&nbsp;"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p2, v0

    goto :goto_1

    .line 276
    :cond_6
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 278
    :cond_7
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 269
    :cond_8
    :goto_2
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public static toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 3

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 19
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, p0, v1, v2}, Lorg/telegram/messenger/utils/CustomHtml;->toHTML_0_wrapQuote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
