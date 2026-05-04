.class Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter$1;
.super Landroid/text/style/URLSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->getCaption(I)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;Ljava/lang/String;)V
    .locals 0

    .line 12572
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter$1;->this$1:Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;

    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 12575
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter$1;->this$1:Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {p0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter$1;->this$1:Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetpressedLink(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/LinkSpanDrawable;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter$1;->this$1:Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetpressedLinkOwnerLayout(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mmakeProgress(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/LinkSpanDrawable;Lorg/telegram/ui/ArticleViewer$DrawingText;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mopenWebpageUrl(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)V

    return-void
.end method
