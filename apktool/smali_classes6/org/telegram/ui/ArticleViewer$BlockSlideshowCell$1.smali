.class Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$1;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

.field final synthetic val$this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 9625
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$1;->val$this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 9633
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetwindowView(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$WindowView;->requestDisallowInterceptTouchEvent(Z)V

    .line 9634
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->cancelCheckLongPress()V

    .line 9635
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 9628
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
