.class public Lorg/telegram/ui/Cells/DialogsHintCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

.field private final chevronView:Landroid/widget/ImageView;

.field private final closeView:Landroid/widget/ImageView;

.field private final contentView:Landroid/widget/LinearLayout;

.field private height:I

.field public final imageView:Lorg/telegram/ui/Components/BackupImageView;

.field public final messageView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private final parentView:Landroid/widget/LinearLayout;

.field public titleIsError:Z

.field public final titleView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;


# direct methods
.method public static synthetic $r8$lambda$FvPM2jgalq6XiMCbD0sWdoOaMdQ(Lorg/telegram/ui/Cells/DialogsHintCell;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Cells/DialogsHintCell;->lambda$setOnClickListener$1(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_4YT1hr9ofTBLrnt-2kgLUZ7aqI(Lorg/telegram/ui/Cells/DialogsHintCell;[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogsHintCell;->lambda$new$0([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 50
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    const/high16 v3, 0x41100000    # 9.0f

    .line 53
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 55
    new-instance v3, Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/Components/AvatarsImageView;-><init>(Landroid/content/Context;Z)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/DialogsHintCell;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const v4, 0x3f1161fa

    .line 56
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AvatarsImageView;->setStepFactor(F)V

    const/16 v4, 0x8

    .line 57
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 58
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->setCount(I)V

    .line 60
    new-instance v5, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogsHintCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v6, 0x42100000    # 36.0f

    .line 61
    invoke-static {v6}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 62
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 64
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogsHintCell;->contentView:Landroid/widget/LinearLayout;

    const/4 v7, 0x1

    .line 65
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v9, 0x41c00000    # 24.0f

    if-eqz v8, :cond_0

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto :goto_0

    :cond_0
    move v8, v2

    :goto_0
    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_1

    move v9, v2

    goto :goto_1

    :cond_1
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    :goto_1
    invoke-virtual {v6, v8, v2, v9, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 68
    new-instance v8, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-direct {v8, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Cells/DialogsHintCell;->titleView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    .line 69
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v10, 0x41600000    # 14.0f

    .line 70
    invoke-virtual {v8, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 71
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v10, 0x5

    .line 72
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 74
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v12, 0x3

    if-eqz v11, :cond_2

    move v11, v10

    goto :goto_2

    :cond_2
    move v11, v12

    :goto_2
    const/16 v13, 0x30

    or-int/2addr v11, v13

    const/4 v14, -0x2

    const/4 v15, 0x0

    invoke-static {v14, v14, v15, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v8, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v8, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Cells/DialogsHintCell;->messageView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v11, 0x41500000    # 13.0f

    .line 77
    invoke-virtual {v8, v7, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 78
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 79
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 v7, -0x1

    .line 80
    invoke-static {v7, v14, v15, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    new-instance v11, Lorg/telegram/ui/Cells/DialogsHintCell$$ExternalSyntheticLambda1;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Cells/DialogsHintCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/DialogsHintCell;)V

    invoke-virtual {v8, v0, v9, v11}, Lorg/telegram/messenger/NotificationCenter;->listenGlobal(Landroid/view/View;ILorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    .line 91
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Cells/DialogsHintCell;->parentView:Landroid/widget/LinearLayout;

    .line 92
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_3

    const/high16 v18, 0x40e00000    # 7.0f

    const/16 v19, 0x0

    const/4 v13, -0x1

    const/high16 v14, -0x40800000    # -1.0f

    const/16 v15, 0x10

    const/high16 v16, 0x40e00000    # 7.0f

    const/16 v17, 0x0

    .line 94
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v18, -0x40000000    # -2.0f

    const/4 v13, 0x0

    const/16 v16, 0x0

    .line 95
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v8, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v13, 0x24

    const/high16 v14, 0x42100000    # 36.0f

    const/16 v15, 0x15

    .line 96
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v8, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_3
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v13, 0x24

    const/high16 v14, 0x42100000    # 36.0f

    const/16 v15, 0x13

    const/high16 v16, -0x40000000    # -2.0f

    const/16 v17, 0x0

    .line 98
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v13, 0x0

    const/high16 v14, -0x40800000    # -1.0f

    const/16 v15, 0x10

    .line 99
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v18, 0x40e00000    # 7.0f

    const/4 v13, -0x1

    const/high16 v16, 0x40e00000    # 7.0f

    .line 100
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v8, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    const/high16 v3, -0x40800000    # -1.0f

    .line 102
    invoke-static {v7, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 104
    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 106
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/DialogsHintCell;->chevronView:Landroid/widget/ImageView;

    .line 107
    sget v5, Lorg/telegram/messenger/R$drawable;->arrow_newchat:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_4

    move v5, v12

    goto :goto_4

    :cond_4
    move v5, v10

    :goto_4
    or-int/lit8 v15, v5, 0x10

    const/high16 v18, 0x40800000    # 4.0f

    const/16 v19, 0x0

    const/16 v13, 0x10

    const/high16 v14, 0x41800000    # 16.0f

    const/high16 v16, 0x40800000    # 4.0f

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/DialogsHintCell;->closeView:Landroid/widget/ImageView;

    .line 111
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_close:I

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v1, 0x40c00000    # 6.0f

    .line 112
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v3, v5, v6, v7, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 113
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_5

    move v10, v12

    :cond_5
    or-int/lit8 v13, v10, 0x10

    const/high16 v16, -0x3f800000    # -4.0f

    const/16 v17, 0x0

    const/16 v11, 0x24

    const/high16 v12, 0x42100000    # 36.0f

    const/high16 v14, -0x3f800000    # -4.0f

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 116
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 117
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogsHintCell;->updateColors()V

    return-void
.end method

.method private synthetic lambda$new$0([Ljava/lang/Object;)V
    .locals 0

    .line 83
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->titleView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 86
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->messageView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz p1, :cond_1

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$setOnClickListener$1(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 2

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 193
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/DialogsHintCell;->setCompact(Z)V

    .line 158
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/DialogsHintCell;->setAvatars(ILjava/util/ArrayList;)V

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->clearImage()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 209
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 210
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->parentView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->contentView:Landroid/widget/LinearLayout;

    .line 211
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v2, 0x0

    .line 212
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 210
    invoke-virtual {p2, v0, v2}, Landroid/view/View;->measure(II)V

    .line 214
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->height:I

    .line 215
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 217
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->closeView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 218
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 219
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 220
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->chevronView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 202
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAvatars(ILjava/util/ArrayList;)V
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    const/4 v2, 0x3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 136
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    iget-object v4, v3, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget v4, v4, Lorg/telegram/ui/Components/AvatarsDrawable;->count:I

    const/4 v5, 0x1

    if-eq v1, v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    const/high16 v6, 0x42100000    # 36.0f

    if-gt v1, v5, :cond_2

    const/high16 v7, 0x41b00000    # 22.0f

    .line 138
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/AvatarsImageView;->setAvatarsTextSize(I)V

    .line 139
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/AvatarsImageView;->setSize(I)V

    goto :goto_2

    :cond_2
    const/high16 v7, 0x41a00000    # 20.0f

    .line 141
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/AvatarsImageView;->setAvatarsTextSize(I)V

    .line 142
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/AvatarsImageView;->setSize(I)V

    .line 144
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/AvatarsImageView;->setCount(I)V

    .line 145
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    if-gtz v1, :cond_3

    const/16 v7, 0x8

    goto :goto_3

    :cond_3
    move v7, v0

    :goto_3
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-gt v1, v5, :cond_4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_4

    :cond_4
    sub-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x12

    add-int/lit8 v1, v1, 0x1e

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_4
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v4, :cond_5

    .line 147
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->parentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_5
    if-eqz p2, :cond_7

    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_7

    .line 150
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_6

    const/4 v4, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    :goto_6
    invoke-virtual {v3, v1, p1, v4}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 153
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    return-void
.end method

.method public setCompact(Z)V
    .locals 0

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 191
    new-instance v0, Lorg/telegram/ui/Cells/DialogsHintCell$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Cells/DialogsHintCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/DialogsHintCell;Landroid/view/View$OnClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnCloseListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->chevronView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->closeView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->closeView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Cells/DialogsHintCell;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V
    .locals 3

    .line 171
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->titleIsError:Z

    .line 172
    iget-object p4, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->titleView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object p4, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->titleView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->titleView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p4, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 175
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->messageView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->chevronView:Landroid/widget/ImageView;

    if-eqz p3, :cond_1

    move p2, v2

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->closeView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p3, :cond_2

    const/high16 p1, 0x41c00000    # 24.0f

    .line 178
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_2

    :cond_2
    move p1, v2

    .line 179
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->contentView:Landroid/widget/LinearLayout;

    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p3, :cond_3

    move p4, p1

    goto :goto_3

    :cond_3
    move p4, v2

    :goto_3
    if-eqz p3, :cond_4

    move p1, v2

    :cond_4
    invoke-virtual {p2, p4, v2, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 180
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogsHintCell;->updateColors()V

    return-void
.end method

.method public showImage()V
    .locals 2

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->titleView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->titleIsError:Z

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->messageView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->messageView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->chevronView:Landroid/widget/ImageView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->closeView:Landroid/widget/ImageView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->closeView:Landroid/widget/ImageView;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledCircle()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
