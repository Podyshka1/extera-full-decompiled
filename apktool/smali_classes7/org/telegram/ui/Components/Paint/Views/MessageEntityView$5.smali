.class Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$5;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLjava/util/ArrayList;Lorg/telegram/ui/Components/BlurringShader$BlurManager;ZLorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)V
    .locals 0

    .line 934
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$5;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 937
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$5;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    .line 938
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$5;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetgroupedMessages(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p1

    if-eqz p1, :cond_0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$5;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetgroupedMessages(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_0

    .line 939
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$5;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetgroupedMessages(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 940
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$5;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetgroupedMessages(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->getPosition(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 942
    iget p1, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    return p1

    :cond_0
    const/16 p1, 0x3e8

    return p1
.end method
