.class Lorg/telegram/ui/ArticleViewer$7;
.super Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->scrollToAnchor(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 2199
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$7;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Z)V
    .locals 1

    .line 2202
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$7;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetlinkSheet(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2203
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$7;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetlinkSheet(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDisableScroll(Z)V

    :cond_0
    return-void
.end method
