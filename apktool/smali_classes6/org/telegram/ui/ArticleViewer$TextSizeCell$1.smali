.class Lorg/telegram/ui/ArticleViewer$TextSizeCell$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$TextSizeCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$TextSizeCell;

.field final synthetic val$this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$TextSizeCell;Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$TextSizeCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$TextSizeCell;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$TextSizeCell$1;->val$this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 3

    .line 638
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$TextSizeCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$TextSizeCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TextSizeCell;->-$$Nest$fgetstartFontSize(Lorg/telegram/ui/ArticleViewer$TextSizeCell;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$TextSizeCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$TextSizeCell;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TextSizeCell;->-$$Nest$fgetendFontSize(Lorg/telegram/ui/ArticleViewer$TextSizeCell;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$TextSizeCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$TextSizeCell;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TextSizeCell;->-$$Nest$fgetstartFontSize(Lorg/telegram/ui/ArticleViewer$TextSizeCell;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$TextSizeCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$TextSizeCell;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TextSizeCell;->-$$Nest$fgetsizeBar(Lorg/telegram/ui/ArticleViewer$TextSizeCell;)Lorg/telegram/ui/Components/SeekBarView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SeekBarView;->getProgress()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStepsCount()I
    .locals 2

    .line 643
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$TextSizeCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$TextSizeCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TextSizeCell;->-$$Nest$fgetendFontSize(Lorg/telegram/ui/ArticleViewer$TextSizeCell;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$TextSizeCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$TextSizeCell;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TextSizeCell;->-$$Nest$fgetstartFontSize(Lorg/telegram/ui/ArticleViewer$TextSizeCell;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic needVisuallyDivideSteps()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate$-CC;->$default$needVisuallyDivideSteps(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public onSeekBarDrag(ZF)V
    .locals 2

    .line 619
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$TextSizeCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$TextSizeCell;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TextSizeCell;->-$$Nest$fgetstartFontSize(Lorg/telegram/ui/ArticleViewer$TextSizeCell;)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$TextSizeCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$TextSizeCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TextSizeCell;->-$$Nest$fgetendFontSize(Lorg/telegram/ui/ArticleViewer$TextSizeCell;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$TextSizeCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$TextSizeCell;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TextSizeCell;->-$$Nest$fgetstartFontSize(Lorg/telegram/ui/ArticleViewer$TextSizeCell;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 620
    sget p2, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    if-eq p1, p2, :cond_0

    .line 621
    sput p1, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    .line 622
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 623
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 624
    const-string p2, "iv_font_size"

    sget v0, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 625
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 626
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$TextSizeCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$TextSizeCell;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$TextSizeCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getAdapter()Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetsearchTextOffset(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 627
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$TextSizeCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$TextSizeCell;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$TextSizeCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mupdatePaintSize(Lorg/telegram/ui/ArticleViewer;)V

    .line 628
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$TextSizeCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$TextSizeCell;

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$TextSizeCell;->invalidate()V

    :cond_0
    return-void
.end method

.method public onSeekBarPressed(Z)V
    .locals 0

    return-void
.end method
