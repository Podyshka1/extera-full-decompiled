.class Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;
.super Lorg/telegram/tgnet/TLRPC$PageBlock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TL_pageBlockRelatedArticlesShadow"
.end annotation


# instance fields
.field private parent:Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;


# direct methods
.method static bridge synthetic -$$Nest$fputparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;->parent:Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 416
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PageBlock;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ArticleViewer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;-><init>()V

    return-void
.end method
