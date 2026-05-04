.class Lorg/telegram/ui/ArticleViewer$BlockCollageCell$4;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$BlockCollageCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

.field final synthetic val$this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 9417
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$4;->val$this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 9420
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->-$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->-$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    .line 9421
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget p1, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    return p1
.end method
