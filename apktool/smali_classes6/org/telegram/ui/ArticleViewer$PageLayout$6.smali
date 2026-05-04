.class Lorg/telegram/ui/ArticleViewer$PageLayout$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/web/BotWebViewContainer$WebViewScrollListener;


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
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$PageLayout;Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 13140
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$6;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$6;->val$this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWebViewScrolled(Landroid/webkit/WebView;II)V
    .locals 0

    .line 13143
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$6;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer;->updatePages()V

    return-void
.end method
