.class public abstract Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PollVotesAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SectionCell"
.end annotation


# instance fields
.field private middleTextView:Landroid/widget/TextView;

.field private righTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

.field final synthetic this$0:Lorg/telegram/ui/Components/PollVotesAlert;


# direct methods
.method public static synthetic $r8$lambda$Ys-aNUcAsU22Z7J0y6WQ8knGcOQ(Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 159
    iput-object v1, v0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    move-object/from16 v2, p2

    .line 160
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 162
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 164
    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    .line 165
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 166
    iget-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 167
    iget-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_graySectionText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    iget-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 169
    iget-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 170
    iget-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v7, 0x3

    const/4 v8, 0x5

    if-eqz v6, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    const/16 v9, 0x10

    or-int/2addr v6, v9

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 172
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->middleTextView:Landroid/widget/TextView;

    .line 173
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 174
    iget-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->middleTextView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    iget-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->middleTextView:Landroid/widget/TextView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_1

    move v3, v8

    goto :goto_1

    :cond_1
    move v3, v7

    :goto_1
    or-int/2addr v3, v9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 177
    new-instance v2, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell$1;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell$1;-><init>(Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;Landroid/content/Context;Lorg/telegram/ui/Components/PollVotesAlert;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->righTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    .line 196
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 197
    iget-object v1, v0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->righTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 198
    iget-object v1, v0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->righTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2

    move v2, v7

    goto :goto_2

    :cond_2
    move v2, v8

    :goto_2
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 199
    iget-object v1, v0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->righTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    new-instance v2, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v1, v0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_3

    move v3, v8

    goto :goto_3

    :cond_3
    move v3, v7

    :goto_3
    or-int/lit8 v12, v3, 0x30

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    move v4, v9

    :goto_4
    int-to-float v13, v4

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    move v9, v3

    :goto_5
    int-to-float v15, v9

    const/16 v16, 0x0

    const/4 v10, -0x2

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object v1, v0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->middleTextView:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_6

    move v2, v8

    goto :goto_6

    :cond_6
    move v2, v7

    :goto_6
    or-int/lit8 v11, v2, 0x30

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v9, -0x2

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v1, v0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->righTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_7

    goto :goto_7

    :cond_7
    move v7, v8

    :goto_7
    or-int/lit8 v10, v7, 0x30

    const/high16 v13, 0x41800000    # 16.0f

    const/4 v14, 0x0

    const/4 v8, -0x2

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v11, 0x41800000    # 16.0f

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 199
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->onCollapseClick()V

    return-void
.end method


# virtual methods
.method protected abstract onCollapseClick()V
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 218
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 219
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_0

    .line 220
    iget-object p2, p1, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iget-object p3, p1, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->middleTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p2, p3

    .line 221
    iget-object p3, p1, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->middleTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p4

    iget-object p5, p1, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->middleTextView:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p2

    iget-object v0, p1, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->middleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p3, p2, p4, p5, v0}, Landroid/view/View;->layout(IIII)V

    return-void

    .line 223
    :cond_0
    iget-object p2, p1, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    .line 224
    iget-object p3, p1, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->middleTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p4

    iget-object p5, p1, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->middleTextView:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p2

    iget-object v0, p1, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->middleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p3, p2, p4, p5, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    const/high16 p2, 0x42000000    # 32.0f

    .line 208
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 209
    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->middleTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 210
    iget-object v3, v2, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->righTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 211
    iget-object v3, v2, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    iget-object p1, v2, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->middleTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object v0, v2, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->righTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int v5, p1, v0

    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 213
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/util/ArrayList;IIIZ)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 234
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 235
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 236
    invoke-static {p2, p1, v1}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/text/Spannable;)V

    .line 237
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    .line 238
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    .line 239
    iget-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 241
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    new-array v1, p2, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 245
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    .line 246
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array v2, p2, [Ljava/lang/Object;

    aput-object p3, v2, v0

    const-string p3, "%s%% \u2013 "

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 248
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array v2, p2, [Ljava/lang/Object;

    aput-object p3, v2, v0

    const-string p3, " \u2013 %s%%"

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 250
    :goto_1
    new-instance p3, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p3, v2}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x3

    add-int/2addr p1, v2

    const/16 v3, 0x21

    invoke-virtual {v1, p3, v2, p1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 251
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->middleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p5, :cond_3

    .line 253
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetpoll(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz p1, :cond_2

    .line 254
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->righTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string p2, "Answer"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p2, p4, p3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p6}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 256
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->righTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string p2, "Vote"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p2, p4, p3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p6}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_3
    if-ne p5, p2, :cond_4

    .line 259
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->righTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget p2, Lorg/telegram/messenger/R$string;->PollExpand:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p6}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 261
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->righTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget p2, Lorg/telegram/messenger/R$string;->PollCollapse:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p6}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method
