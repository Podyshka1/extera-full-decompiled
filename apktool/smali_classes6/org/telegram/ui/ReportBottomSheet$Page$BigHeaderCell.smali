.class Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ReportBottomSheet$Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BigHeaderCell"
.end annotation


# instance fields
.field public backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

.field private final btnBack:Landroid/widget/ImageView;

.field private onBackClickListener:Ljava/lang/Runnable;

.field private final textView:Landroid/widget/TextView;

.field final synthetic this$1:Lorg/telegram/ui/ReportBottomSheet$Page;


# direct methods
.method public static synthetic $r8$lambda$UpPSpwJEOsf7uh6ijXd5AsFTUtk(Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ReportBottomSheet$Page;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 700
    iput-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;->this$1:Lorg/telegram/ui/ReportBottomSheet$Page;

    .line 701
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 702
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;->textView:Landroid/widget/TextView;

    .line 703
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x41a00000    # 20.0f

    const/4 v1, 0x1

    .line 704
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 705
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v2, 0x3

    const/4 v3, 0x5

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 706
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v0, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 707
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 709
    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;->btnBack:Landroid/widget/ImageView;

    .line 710
    new-instance p2, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    iput-object p2, p0, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 711
    iget-object p2, p0, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    .line 712
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_1

    move v2, v3

    :cond_1
    or-int/lit8 v5, v2, 0x30

    const/high16 v8, 0x41800000    # 16.0f

    const/4 v9, 0x0

    const/16 v3, 0x18

    const/high16 v4, 0x41c00000    # 24.0f

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 713
    new-instance p2, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;->setCloseImageVisible(Z)V

    const/high16 p1, 0x42600000    # 56.0f

    .line 720
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 714
    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;->onBackClickListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 715
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 728
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 743
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 742
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCloseImageVisible(Z)V
    .locals 11

    .line 732
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;->btnBack:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;->textView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v2, 0x41b00000    # 22.0f

    const/high16 v3, 0x42540000    # 53.0f

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v7, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v7, v2

    :goto_2
    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    move v9, v3

    goto :goto_3

    :cond_3
    move v9, v2

    :goto_3
    const/high16 v10, 0x41400000    # 12.0f

    const/4 v4, -0x1

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x37

    const/high16 v8, 0x41600000    # 14.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setOnBackClickListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;->onBackClickListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 724
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
