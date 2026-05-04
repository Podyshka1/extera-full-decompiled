.class Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObjectContainer"
.end annotation


# instance fields
.field private block:Lorg/telegram/tgnet/TLRPC$PageBlock;

.field final synthetic this$2:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;

.field private view:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetblock(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->block:Lorg/telegram/tgnet/TLRPC$PageBlock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetview(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->view:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputblock(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->block:Lorg/telegram/tgnet/TLRPC$PageBlock;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputview(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;Landroid/view/View;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->view:Landroid/view/View;

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;)V
    .locals 0

    .line 9662
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->this$2:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
