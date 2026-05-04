.class Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockEmbedPostCell"
.end annotation


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/messenger/ImageReceiver;

.field private avatarVisible:Z

.field private captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private creditOffset:I

.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

.field private dateLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private lineHeight:I

.field private nameLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 2

    .line 7964
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 7965
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 7966
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    .line 7968
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarImageView:Lorg/telegram/messenger/ImageReceiver;

    const/high16 p2, 0x41a00000    # 20.0f

    .line 7969
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 7970
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarImageView:Lorg/telegram/messenger/ImageReceiver;

    const/high16 p2, 0x42000000    # 32.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x41000000    # 8.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, p3, v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 7972
    new-instance p1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    return-void
.end method


# virtual methods
.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 1

    .line 8113
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->nameLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 8114
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8116
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->dateLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 8117
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8119
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_2

    .line 8120
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8122
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_3

    .line 8123
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 8071
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 8075
    :cond_0
    instance-of v0, v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockEmbedPostCaption;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 8076
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    if-eqz v0, :cond_1

    .line 8077
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 8079
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->nameLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/16 v2, 0x36

    if-eqz v0, :cond_4

    .line 8080
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8081
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x20

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->dateLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v3, :cond_3

    const/high16 v3, 0x41200000    # 10.0f

    goto :goto_1

    :cond_3
    const/high16 v3, 0x41980000    # 19.0f

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8082
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0, v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 8083
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->nameLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 8084
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    .line 8086
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->dateLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v3, :cond_6

    .line 8087
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8088
    iget-boolean v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    move v2, v1

    :goto_3
    add-int/lit8 v2, v2, 0x20

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41e80000    # 29.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8089
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, p1, p0, v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 8090
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->dateLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 8091
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    move v0, v3

    :cond_6
    const/high16 v2, 0x41900000    # 18.0f

    .line 8093
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v4, v2

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v5, v3

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v6, v3

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->lineHeight:I

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-eqz v7, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_4
    sub-int/2addr v3, v1

    int-to-float v7, v3

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$sfgetquoteLinePaint()Landroid/graphics/Paint;

    move-result-object v8

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v1, v0

    goto :goto_5

    :cond_8
    move-object v3, p1

    .line 8095
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz p1, :cond_9

    .line 8096
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 8097
    iget p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textX:I

    int-to-float p1, p1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    int-to-float v0, v0

    invoke-virtual {v3, p1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8098
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    add-int/lit8 v0, v1, 0x1

    invoke-static {p1, v3, p0, v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 8099
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {p1, v3, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 8100
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    move v1, v0

    .line 8102
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz p1, :cond_a

    .line 8103
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 8104
    iget p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textX:I

    int-to-float p1, p1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditOffset:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v3, p1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8105
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1, v3, p0, v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 8106
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {p1, v3, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 8107
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    :goto_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 24

    move-object/from16 v1, p0

    .line 7988
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 7991
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    .line 7992
    instance-of v3, v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockEmbedPostCaption;

    const/high16 v11, 0x42480000    # 50.0f

    const/4 v12, 0x0

    const/high16 v13, 0x40800000    # 4.0f

    if-eqz v3, :cond_3

    const/high16 v0, 0x41900000    # 18.0f

    .line 7994
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textX:I

    .line 7995
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    .line 7996
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v4, v10, v0

    .line 7997
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iget v5, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    iget-object v7, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 7999
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditOffset:I

    .line 8000
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v12, v0, v2

    .line 8002
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    iget v5, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditOffset:I

    add-int/2addr v5, v2

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object v2

    :goto_0
    move-object v7, v2

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :goto_1
    iget-object v8, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_2

    .line 8004
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v12, v0

    :cond_2
    move v2, v12

    goto/16 :goto_a

    .line 8007
    :cond_3
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->author_photo_id:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v12

    :goto_2
    iput-boolean v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    const/4 v14, 0x0

    if-eqz v0, :cond_5

    .line 8008
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$mgetPhotoWithId(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    .line 8009
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;

    iput-boolean v3, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    if-eqz v3, :cond_5

    .line 8010
    iget-object v3, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->author:Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v4, v14}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 8011
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3, v4, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    .line 8012
    iget-object v15, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v2, v0}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v16

    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v22

    const/16 v23, 0x1

    const-string v17, "40_40"

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v0

    invoke-virtual/range {v15 .. v23}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 8015
    :cond_5
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->author:Ljava/lang/String;

    iget-boolean v3, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    const/16 v15, 0x36

    if-eqz v3, :cond_6

    move v3, v15

    goto :goto_3

    :cond_6
    move v3, v12

    :goto_3
    add-int/lit8 v3, v3, 0x32

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v4, v10, v3

    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v8, 0x1

    iget-object v9, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    move-object v8, v7

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->nameLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_9

    .line 8017
    iget-boolean v2, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    if-eqz v2, :cond_7

    move v2, v15

    goto :goto_4

    :cond_7
    move v2, v12

    :goto_4
    add-int/lit8 v2, v2, 0x20

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 8018
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->nameLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->dateLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v2, :cond_8

    const/high16 v2, 0x41200000    # 10.0f

    goto :goto_5

    :cond_8
    const/high16 v2, 0x41980000    # 19.0f

    :goto_5
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    .line 8021
    :cond_9
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->date:I

    const/high16 v9, 0x41e80000    # 29.0f

    if-eqz v0, :cond_b

    .line 8022
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getChatFullDate()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->date:I

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    if-eqz v3, :cond_a

    move v3, v15

    goto :goto_6

    :cond_a
    move v3, v12

    :goto_6
    add-int/lit8 v3, v3, 0x32

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v4, v10, v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget-object v7, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v3, 0x0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->dateLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    goto :goto_7

    .line 8024
    :cond_b
    iput-object v14, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->dateLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    :goto_7
    const/high16 v0, 0x42600000    # 56.0f

    .line 8027
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    .line 8029
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    const/high16 v2, 0x42000000    # 32.0f

    .line 8030
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textX:I

    .line 8031
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    .line 8032
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v4, v10, v0

    .line 8033
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iget v5, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    iget-object v7, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_c

    .line 8035
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditOffset:I

    .line 8036
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    add-int v16, v16, v0

    .line 8038
    :cond_c
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    iget v5, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditOffset:I

    add-int/2addr v5, v2

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object v7

    goto :goto_8

    :cond_d
    move-object v7, v8

    :goto_8
    iget-object v8, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_f

    .line 8040
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int v16, v16, v0

    goto :goto_9

    .line 8043
    :cond_e
    iput-object v14, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    .line 8044
    iput-object v14, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    .line 8047
    :cond_f
    :goto_9
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->dateLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_11

    .line 8048
    iget-boolean v2, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    if-eqz v2, :cond_10

    move v12, v15

    :cond_10
    add-int/lit8 v12, v12, 0x20

    int-to-float v2, v12

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 8049
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->dateLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    .line 8052
    :cond_11
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_12

    .line 8053
    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textX:I

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 8054
    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    .line 8056
    :cond_12
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_13

    .line 8057
    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textX:I

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 8058
    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    :cond_13
    move/from16 v2, v16

    .line 8061
    :goto_a
    iput v2, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->lineHeight:I

    .line 8066
    :cond_14
    invoke-virtual {v1, v10, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 7982
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textX:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    move-object v3, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcheckLayoutForLinks(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object v0, v3, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v3, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, v3, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, v3, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textX:I

    iget p1, v3, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    iget v6, v3, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditOffset:I

    add-int/2addr v6, p1

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcheckLayoutForLinks(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-super {p0, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;)V
    .locals 0

    .line 7976
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    .line 7977
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
