.class Lorg/telegram/ui/ArticleViewer$ReportCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportCell"
.end annotation


# instance fields
.field private hasViews:Z

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field private viewsTextView:Landroid/widget/TextView;

.field public final web:Z


# direct methods
.method static bridge synthetic -$$Nest$fgethasViews(Lorg/telegram/ui/ArticleViewer$ReportCell;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->hasViews:Z

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Z)V
    .locals 12

    .line 12426
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 12427
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 12428
    iput-boolean p3, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->web:Z

    const/16 p1, 0x5a

    .line 12429
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12431
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->textView:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    .line 12432
    sget p3, Lorg/telegram/messenger/R$string;->PreviewFeedbackAuto:I

    goto :goto_0

    :cond_0
    sget p3, Lorg/telegram/messenger/R$string;->PreviewFeedback2:I

    :goto_0
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12433
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->textView:Landroid/widget/TextView;

    const/4 p3, 0x1

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p1, p3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 12434
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->textView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 12435
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 12436
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->textView:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x42080000    # 34.0f

    const/16 v7, 0x33

    const/4 v8, 0x0

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12438
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->viewsTextView:Landroid/widget/TextView;

    .line 12439
    invoke-virtual {p1, p3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 12440
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->viewsTextView:Landroid/widget/TextView;

    const/16 p2, 0x13

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 12441
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->viewsTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {p1, p2, v4, p3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 12442
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->viewsTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, -0x1

    const/high16 v1, 0x42080000    # 34.0f

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    const/high16 p2, 0x42300000    # 44.0f

    .line 12447
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setViews(I)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 12452
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->hasViews:Z

    .line 12453
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->viewsTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12454
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->textView:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 12456
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->hasViews:Z

    .line 12457
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->viewsTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12458
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->textView:Landroid/widget/TextView;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 12459
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->viewsTextView:Landroid/widget/TextView;

    const-string v1, "Views"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12461
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result p1

    .line 12462
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mgetGrayTextColor(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12463
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->viewsTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mgetGrayTextColor(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12464
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->textView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/16 v3, 0x22

    invoke-static {v3, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
