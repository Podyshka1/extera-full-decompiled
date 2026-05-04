.class Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;
.super Lorg/telegram/tgnet/TLRPC$PageBlock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TL_pageBlockListParent"
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;

.field private lastFontSize:I

.field private lastMaxNumCalcWidth:I

.field private level:I

.field private maxNumWidth:I

.field private pageBlockList:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;


# direct methods
.method static bridge synthetic -$$Nest$fgetitems(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastFontSize(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->lastFontSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastMaxNumCalcWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->lastMaxNumCalcWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlevel(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->level:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmaxNumWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->maxNumWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpageBlockList(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->pageBlockList:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastFontSize(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->lastFontSize:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastMaxNumCalcWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->lastMaxNumCalcWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlevel(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->level:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmaxNumWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->maxNumWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpageBlockList(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->pageBlockList:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 429
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PageBlock;-><init>()V

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->items:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ArticleViewer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;-><init>()V

    return-void
.end method
