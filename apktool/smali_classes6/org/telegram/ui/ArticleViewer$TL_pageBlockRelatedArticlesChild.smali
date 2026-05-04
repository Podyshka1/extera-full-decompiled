.class Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;
.super Lorg/telegram/tgnet/TLRPC$PageBlock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TL_pageBlockRelatedArticlesChild"
.end annotation


# instance fields
.field private num:I

.field private parent:Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;


# direct methods
.method static bridge synthetic -$$Nest$fgetnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->num:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->parent:Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->num:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->parent:Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 411
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PageBlock;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ArticleViewer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;-><init>()V

    return-void
.end method
