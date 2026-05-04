.class public Lorg/telegram/ui/Components/Bulletin$UsersLayout;
.super Lorg/telegram/ui/Components/Bulletin$ButtonLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Bulletin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsersLayout"
.end annotation


# instance fields
.field public avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

.field linearLayout:Landroid/widget/LinearLayout;

.field public subtitleView:Landroid/widget/TextView;

.field public textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    .line 2070
    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2072
    new-instance p3, Lorg/telegram/ui/Components/AvatarsImageView;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0}, Lorg/telegram/ui/Components/AvatarsImageView;-><init>(Landroid/content/Context;Z)V

    iput-object p3, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v1, 0xb

    .line 2073
    invoke-virtual {p3, v1}, Lorg/telegram/ui/Components/AvatarsImageView;->setStyle(I)V

    .line 2074
    iget-object p3, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p3, v1}, Lorg/telegram/ui/Components/AvatarsImageView;->setAvatarsTextSize(I)V

    .line 2075
    iget-object p3, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v1, 0x42600000    # 56.0f

    const/high16 v2, 0x42400000    # 48.0f

    const v3, 0x800013

    const/high16 v4, 0x41400000    # 12.0f

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p3, 0x3

    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 2078
    new-instance p2, Lorg/telegram/ui/Components/Bulletin$UsersLayout$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/Bulletin$UsersLayout$1;-><init>(Lorg/telegram/ui/Components/Bulletin$UsersLayout;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    .line 2085
    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 2086
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    sget-object p2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2087
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    const/high16 p2, 0x41700000    # 15.0f

    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2088
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2089
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, v0, v1, v0, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2090
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_0

    const/4 p3, 0x5

    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2091
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    const/high16 v5, 0x41400000    # 12.0f

    const/4 v6, 0x0

    const/high16 v0, -0x40000000    # -2.0f

    const/high16 v1, -0x40000000    # -2.0f

    const v2, 0x800013

    const/high16 v3, 0x428c0000    # 70.0f

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2093
    :cond_1
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    .line 2094
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2095
    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    const/high16 v7, 0x41400000    # 12.0f

    const/high16 v8, 0x40c00000    # 6.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40000000    # -2.0f

    const v4, 0x800013

    const/high16 v5, 0x42980000    # 76.0f

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2097
    new-instance p2, Lorg/telegram/ui/Components/Bulletin$UsersLayout$2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/Bulletin$UsersLayout$2;-><init>(Lorg/telegram/ui/Components/Bulletin$UsersLayout;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    .line 2104
    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 2105
    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2106
    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2107
    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2108
    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2109
    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2110
    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2112
    new-instance p2, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    .line 2113
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2114
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    const/high16 p2, 0x41400000    # 12.0f

    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2115
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2116
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2117
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2118
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 2119
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, -0x2

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2121
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 2123
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->setTextColor(I)V

    .line 2124
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->setBackground(I)V

    return-void
.end method


# virtual methods
.method public getAccessibilityText()Ljava/lang/CharSequence;
    .locals 1

    .line 2146
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onShow()V
    .locals 0

    .line 2142
    invoke-super {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->onShow()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 2134
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2135
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2136
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
