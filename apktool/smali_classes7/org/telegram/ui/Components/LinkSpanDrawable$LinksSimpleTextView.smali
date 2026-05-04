.class public Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;
.super Lorg/telegram/ui/ActionBar/SimpleTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/LinkSpanDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinksSimpleTextView"
.end annotation


# instance fields
.field private final links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

.field private pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 783
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    .line 787
    new-instance p1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    .line 784
    iput-object p2, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public hit(II)Landroid/text/style/ClickableSpan;
    .locals 6

    .line 803
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    int-to-float p1, p1

    .line 807
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLayoutX()F

    move-result v2

    sub-float/2addr p1, v2

    float-to-int p1, p1

    int-to-float p2, p2

    .line 808
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLayoutY()F

    move-result v2

    sub-float/2addr p2, v2

    float-to-int p2, p2

    .line 809
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    int-to-float p1, p1

    .line 810
    invoke-virtual {v0, v2, p1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 811
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    cmpg-float v5, v4, p1

    if-gtz v5, :cond_1

    .line 812
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    add-float/2addr v4, v2

    cmpl-float p1, v4, p1

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result p1

    if-gt p2, p1, :cond_1

    .line 813
    new-instance p1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 814
    const-class p2, Landroid/text/style/ClickableSpan;

    invoke-interface {p1, v3, v3, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    .line 815
    array-length p2, p1

    if-eqz p2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAccessibilityScreenReaderEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 816
    aget-object p1, p1, p2

    return-object p1

    :cond_1
    return-object v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 791
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 792
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 793
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLayoutX()F

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLayoutY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 794
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 797
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 824
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 825
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 827
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;->hit(II)Landroid/text/style/ClickableSpan;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 828
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 829
    new-instance v3, Lorg/telegram/ui/Components/LinkSpanDrawable;

    iget-object v4, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v3, v2, v4, v5, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;-><init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FF)V

    .line 830
    iput-object v3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 831
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 832
    new-instance p1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 833
    iget-object v2, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 834
    iget-object v3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    .line 835
    iget-object v3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/LinkSpanDrawable;->obtainNewPath()Lorg/telegram/ui/Components/LinkPath;

    move-result-object v3

    const/4 v4, 0x0

    .line 836
    invoke-virtual {v3, v0, v2, v4}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 837
    invoke-virtual {v0, v2, p1, v3}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    return v1

    .line 841
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    .line 842
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    .line 843
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    if-ne v0, v2, :cond_2

    .line 844
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object p1

    instance-of p1, p1, Landroid/text/style/ClickableSpan;

    if-eqz p1, :cond_1

    .line 845
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object p1

    check-cast p1, Landroid/text/style/ClickableSpan;

    invoke-virtual {p1, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 847
    :cond_1
    iput-object v3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    return v1

    .line 850
    :cond_2
    iput-object v3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 852
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 853
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    .line 854
    iput-object v3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 857
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-nez v0, :cond_6

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    return p1

    :cond_6
    :goto_0
    return v1
.end method
