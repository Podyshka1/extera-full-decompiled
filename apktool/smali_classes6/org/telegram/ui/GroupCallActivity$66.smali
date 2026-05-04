.class Lorg/telegram/ui/GroupCallActivity$66;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;->createReactionsLayout()Lorg/telegram/ui/Components/ReactionsContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final bgPaint:Landroid/graphics/Paint;

.field private final clipPath:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;)V
    .locals 1

    .line 10489
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$66;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10495
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$66;->clipPath:Landroid/graphics/Path;

    .line 10497
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$66;->bgPaint:Landroid/graphics/Paint;

    const v0, -0xded4cb

    .line 10500
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public allowLongPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public drawBackground()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V
    .locals 0

    const/4 p4, 0x0

    cmpl-float p4, p3, p4

    if-lez p4, :cond_0

    .line 10511
    iget-object p5, p0, Lorg/telegram/ui/GroupCallActivity$66;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 10513
    :cond_0
    iget-object p5, p0, Lorg/telegram/ui/GroupCallActivity$66;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 10516
    :goto_0
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p6, 0x1d

    if-lt p5, p6, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p5

    if-eqz p5, :cond_2

    iget-object p5, p0, Lorg/telegram/ui/GroupCallActivity$66;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p5}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetrenderNodeBlur(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/RenderNode;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 10517
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-lez p4, :cond_1

    .line 10520
    iget-object p4, p0, Lorg/telegram/ui/GroupCallActivity$66;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->rewind()V

    .line 10521
    iget-object p4, p0, Lorg/telegram/ui/GroupCallActivity$66;->clipPath:Landroid/graphics/Path;

    sget-object p5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p4, p2, p3, p3, p5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 10522
    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$66;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 10523
    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$66;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_1

    .line 10525
    :cond_1
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 10528
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$66;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetreactionsContainerLayout(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p2

    neg-float p2, p2

    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$66;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetreactionsContainerLayout(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p3

    neg-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10529
    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$66;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetrenderNodeBlurScale(Lorg/telegram/ui/GroupCallActivity;)F

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$66;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetrenderNodeBlurScale(Lorg/telegram/ui/GroupCallActivity;)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 10530
    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$66;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetrenderNodeBlur(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/RenderNode;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 10531
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method public synthetic needEnterText()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$needEnterText(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic onEmojiWindowDismissed()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$onEmojiWindowDismissed(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    return-void
.end method

.method public onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
    .locals 4

    .line 10537
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;-><init>()V

    .line 10538
    iget-object p3, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "\ud83d\udc4d"

    .line 10539
    :goto_0
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    .line 10540
    iput-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    .line 10542
    iget-wide v0, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    .line 10543
    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    const/4 p2, 0x0

    .line 10544
    iput p2, p1, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 10545
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 10546
    iget-object p2, p4, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10549
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$66;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1, p4}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$msendGroupCallMessage(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    .line 10550
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$66;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$mhideKeyboardOrEmojiView(Lorg/telegram/ui/GroupCallActivity;)V

    .line 10552
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$66;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetreactionsContainerLayout(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object p1

    .line 10553
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10555
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10556
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$66;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetreactionsContainerLayout(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissWithAlpha()V

    .line 10557
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$66;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetreactionsContainerLayout(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reset()V

    :cond_2
    return-void
.end method
