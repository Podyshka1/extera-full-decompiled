.class Lorg/telegram/ui/Components/MessagePreviewView$Page$11;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MessagePreviewView$Page;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/MessagePreviewView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V
    .locals 0

    .line 750
    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$11;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iput-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$11;->val$this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 754
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$11;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 755
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$11;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 756
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$11;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->-$$Nest$mgetValidGroupedMessage(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->getPosition(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    return p1

    :cond_0
    const/16 p1, 0x3e8

    return p1
.end method
