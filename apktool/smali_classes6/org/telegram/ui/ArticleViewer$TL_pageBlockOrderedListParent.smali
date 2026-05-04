.class Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;
.super Lorg/telegram/tgnet/TLRPC$PageBlock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TL_pageBlockOrderedListParent"
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;

.field private lastFontSize:I

.field private lastMaxNumCalcWidth:I

.field private level:I

.field private maxNumWidth:I

.field private pageBlockOrderedList:Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;


# direct methods
.method static bridge synthetic -$$Nest$fgetitems(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastFontSize(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->lastFontSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastMaxNumCalcWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->lastMaxNumCalcWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlevel(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->level:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmaxNumWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->maxNumWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputlastFontSize(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->lastFontSize:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastMaxNumCalcWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->lastMaxNumCalcWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlevel(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->level:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmaxNumWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->maxNumWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpageBlockOrderedList(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->pageBlockOrderedList:Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 447
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PageBlock;-><init>()V

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->items:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ArticleViewer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;-><init>()V

    return-void
.end method
