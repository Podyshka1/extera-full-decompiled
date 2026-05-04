.class Lorg/telegram/ui/ArticleViewer$PageLayout$1;
.super Lorg/telegram/ui/ArticleViewer$WebpageListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$PageLayout;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

.field final synthetic val$this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$PageLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 12921
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$1;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iput-object p4, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$1;->val$this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer$WebpageListView;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 12924
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/ArticleViewer$WebpageListView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 12925
    iget-object p2, p1, Lorg/telegram/ui/ArticleViewer$PageLayout$1;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/high16 p3, -0x40800000    # -1.0f

    iput p3, p2, Lorg/telegram/ui/ArticleViewer$PageLayout;->overrideProgress:F

    return-void
.end method
