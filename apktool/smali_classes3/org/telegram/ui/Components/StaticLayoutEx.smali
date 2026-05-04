.class public abstract Lorg/telegram/ui/Components/StaticLayoutEx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static alignments:[Landroid/text/Layout$Alignment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Landroid/text/Layout$Alignment;->values()[Landroid/text/Layout$Alignment;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/StaticLayoutEx;->alignments:[Landroid/text/Layout$Alignment;

    return-void
.end method

.method public static ALIGN_LEFT()Landroid/text/Layout$Alignment;
    .locals 3

    .line 44
    sget-object v0, Lorg/telegram/ui/Components/StaticLayoutEx;->alignments:[Landroid/text/Layout$Alignment;

    array-length v1, v0

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public static ALIGN_RIGHT()Landroid/text/Layout$Alignment;
    .locals 3

    .line 41
    sget-object v0, Lorg/telegram/ui/Components/StaticLayoutEx;->alignments:[Landroid/text/Layout$Alignment;

    array-length v1, v0

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public static createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;
    .locals 11

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 100
    invoke-static/range {v0 .. v10}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IIZ)Landroid/text/StaticLayout;

    move-result-object p0

    return-object p0
.end method

.method public static createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IIZ)Landroid/text/StaticLayout;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v1, p8

    move/from16 v2, p9

    .line 126
    const-string/jumbo v3, "\u2026"

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    .line 127
    :try_start_0
    const-string v2, "\n"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    sub-int/2addr v2, v6

    if-lez v2, :cond_0

    .line 129
    invoke-interface {v0, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    int-to-float v1, v1

    .line 131
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v4, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 132
    new-instance v0, Landroid/text/StaticLayout;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    :cond_1
    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v11, p5

    move/from16 v12, p6

    .line 136
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v13

    invoke-static {v0, v5, v13, v4, v7}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v13

    .line 137
    invoke-virtual {v13, v8}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v13

    .line 138
    invoke-virtual {v13, v11, v9}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v13

    .line 139
    invoke-virtual {v13, v12}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v13

    .line 140
    invoke-virtual {v13, v10}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v13

    .line 141
    invoke-virtual {v13, v1}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v13

    .line 142
    invoke-virtual {v13, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v13

    .line 143
    invoke-virtual {v13, v6}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    .line 144
    invoke-virtual {v6, v5}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    .line 145
    invoke-virtual {v6}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v6

    move v13, v5

    .line 148
    :goto_1
    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v14

    if-ge v13, v14, :cond_3

    .line 149
    invoke-virtual {v6, v13}, Landroid/text/Layout;->getLineRight(I)F

    move-result v14

    int-to-float v15, v7

    cmpl-float v14, v14, v15

    if-lez v14, :cond_2

    .line 155
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v0, v5, v6, v4, v7}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    .line 156
    invoke-virtual {v6, v8}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    .line 157
    invoke-virtual {v6, v11, v9}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    .line 158
    invoke-virtual {v6, v12}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    .line 159
    invoke-virtual {v6, v10}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    .line 160
    invoke-virtual {v6, v1}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    .line 161
    invoke-virtual {v6, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    .line 162
    invoke-virtual {v6, v5}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    .line 163
    invoke-virtual {v6, v5}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    .line 164
    invoke-virtual {v6}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v6

    goto :goto_2

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 169
    :cond_3
    :goto_2
    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v13

    if-gt v13, v2, :cond_4

    return-object v6

    :cond_4
    add-int/lit8 v13, v2, -0x1

    .line 174
    invoke-virtual {v6, v13}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v14

    .line 175
    invoke-virtual {v6, v13}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v15

    const/16 v16, 0x0

    cmpl-float v16, v14, v16

    if-eqz v16, :cond_5

    .line 177
    invoke-virtual {v6, v13, v14}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v6

    goto :goto_3

    .line 179
    :cond_5
    invoke-virtual {v6, v13, v15}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v6

    :goto_3
    const/high16 v13, 0x41200000    # 10.0f

    .line 181
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int v13, v1, v13

    int-to-float v13, v13

    cmpg-float v13, v15, v13

    if-gez v13, :cond_6

    add-int/lit8 v6, v6, 0x3

    .line 184
    :cond_6
    new-instance v13, Landroid/text/SpannableStringBuilder;

    add-int/lit8 v6, v6, -0x3

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-interface {v0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v13, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {v13, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 187
    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-static {v13, v5, v0, v4, v7}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 188
    invoke-virtual {v0, v8}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0, v11, v9}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {v0, v12}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const-class v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v13, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    array-length v3, v3

    if-lez v3, :cond_7

    move-object v3, v10

    goto :goto_4

    :cond_7
    move-object/from16 v3, p7

    :goto_4
    invoke-virtual {v0, v3}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move/from16 v1, p10

    .line 194
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 195
    invoke-virtual {v0, v5}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 203
    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v10
.end method

.method public static createStaticLayout2(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;
    .locals 0

    .line 84
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 p7, 0x0

    invoke-static {p0, p7, p2, p1, p8}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 85
    invoke-virtual {p0, p3}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 86
    invoke-virtual {p0, p5, p4}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 87
    invoke-virtual {p0, p6}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 88
    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 89
    invoke-virtual {p0, p8}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 90
    invoke-virtual {p0, p9}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 91
    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 92
    invoke-virtual {p0, p7}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    return-object p0
.end method
