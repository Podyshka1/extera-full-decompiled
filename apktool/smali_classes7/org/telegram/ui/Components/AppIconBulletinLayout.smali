.class public Lorg/telegram/ui/Components/AppIconBulletinLayout;
.super Lorg/telegram/ui/Components/Bulletin$ButtonLayout;
.source "SourceFile"


# instance fields
.field public final imageView:Lorg/telegram/ui/Cells/AppIconsSelectorCell$AdaptiveIconImageView;

.field public final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/LauncherIconController$LauncherIcon;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 12

    .line 27
    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 23
    new-instance p3, Lorg/telegram/ui/Cells/AppIconsSelectorCell$AdaptiveIconImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lorg/telegram/ui/Cells/AppIconsSelectorCell$AdaptiveIconImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/AppIconBulletinLayout;->imageView:Lorg/telegram/ui/Cells/AppIconsSelectorCell$AdaptiveIconImageView;

    .line 24
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AppIconBulletinLayout;->textView:Landroid/widget/TextView;

    const/high16 v7, 0x41400000    # 12.0f

    const/high16 v8, 0x41000000    # 8.0f

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v3, 0x41f00000    # 30.0f

    const v4, 0x800013

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x41000000    # 8.0f

    .line 28
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x800003

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 31
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 32
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x1

    .line 33
    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 34
    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v10, 0x41800000    # 16.0f

    const/4 v11, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40000000    # -2.0f

    const v7, 0x800013

    const/high16 v8, 0x42600000    # 56.0f

    const/4 v9, 0x0

    .line 35
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget v2, p2, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->background:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Cells/AppIconsSelectorCell$AdaptiveIconImageView;->setOuterPadding(I)V

    const/high16 p1, 0x41c00000    # 24.0f

    .line 39
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Cells/AppIconsSelectorCell$AdaptiveIconImageView;->setBackgroundOuterPadding(I)V

    .line 40
    iget p1, p2, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->foreground:I

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Cells/AppIconsSelectorCell$AdaptiveIconImageView;->setForeground(I)V

    .line 41
    sget p1, Lorg/telegram/messenger/R$string;->AppIconChangedTo:I

    iget p2, p2, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    aput-object p2, p3, v4

    invoke-static {p1, p3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
