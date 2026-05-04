.class Lorg/telegram/ui/ArticleViewer$SearchResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchResult"
.end annotation


# instance fields
.field private block:Lorg/telegram/tgnet/TLRPC$PageBlock;

.field private index:I

.field private text:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetblock(Lorg/telegram/ui/ArticleViewer$SearchResult;)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$SearchResult;->block:Lorg/telegram/tgnet/TLRPC$PageBlock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetindex(Lorg/telegram/ui/ArticleViewer$SearchResult;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer$SearchResult;->index:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettext(Lorg/telegram/ui/ArticleViewer$SearchResult;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$SearchResult;->text:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputblock(Lorg/telegram/ui/ArticleViewer$SearchResult;Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$SearchResult;->block:Lorg/telegram/tgnet/TLRPC$PageBlock;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputindex(Lorg/telegram/ui/ArticleViewer$SearchResult;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$SearchResult;->index:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtext(Lorg/telegram/ui/ArticleViewer$SearchResult;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$SearchResult;->text:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ArticleViewer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$SearchResult;-><init>()V

    return-void
.end method
