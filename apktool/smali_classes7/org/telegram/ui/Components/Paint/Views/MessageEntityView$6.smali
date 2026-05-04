.class Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$6;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
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

    .line 949
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$6;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 8

    const/4 p3, 0x0

    .line 952
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 953
    instance-of p4, p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p4, :cond_4

    .line 954
    check-cast p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 955
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 957
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 958
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    if-eqz v1, :cond_4

    .line 959
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    .line 960
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getExtraInsetHeight()I

    move-result p2

    move v2, p3

    .line 961
    :goto_0
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 962
    aget v3, v3, v2

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 964
    :cond_0
    iget-byte v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    iget-byte v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    sub-int/2addr v2, v3

    const/high16 v3, 0x40e00000    # 7.0f

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 965
    iget-object v2, p4, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge p3, v2, :cond_3

    .line 967
    iget-object v3, p4, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 968
    iget-byte v4, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-ne v4, v5, :cond_2

    iget-byte v6, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    iget-byte v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-ne v6, v7, :cond_1

    iget-byte v6, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    iget-byte v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    if-ne v6, v7, :cond_1

    if-ne v4, v5, :cond_1

    iget-byte v6, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    iget-byte v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-ne v6, v7, :cond_1

    goto :goto_2

    :cond_1
    if-ne v4, v5, :cond_2

    .line 972
    iget p3, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->ph:F

    mul-float/2addr v1, p3

    float-to-double p3, v1

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-int p3, p3

    const/high16 p4, 0x40800000    # 4.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    sub-int/2addr p3, p4

    sub-int/2addr p2, p3

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    neg-int p2, p2

    .line 976
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_4
    return-void
.end method
