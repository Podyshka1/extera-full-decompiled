.class public Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AnimatedEmojiSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiGroupedSpans"
.end annotation


# instance fields
.field backgroundDrawingArray:Ljava/util/ArrayList;

.field groupedByLayout:Ljava/util/HashMap;

.field public holders:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    .line 747
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->groupedByLayout:Ljava/util/HashMap;

    .line 748
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->backgroundDrawingArray:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;)V
    .locals 3

    .line 756
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->groupedByLayout:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;

    if-nez v0, :cond_0

    .line 759
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;

    invoke-static {p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->-$$Nest$fgetview(Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;)Landroid/view/View;

    move-result-object v1

    invoke-static {p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->-$$Nest$fgetinvalidateInParent(Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;)Z

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;-><init>(Landroid/view/View;Landroid/text/Layout;Z)V

    .line 760
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->groupedByLayout:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->backgroundDrawingArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    :cond_0
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->add(Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;)V

    .line 764
    iget-object p1, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p1, :cond_1

    .line 765
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    :cond_1
    return-void
.end method

.method public clearPositions()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 813
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 814
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    iget-object v2, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iput-boolean v0, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->spanDrawn:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public recordPositions(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 819
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 820
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    iget-object v1, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-static {v1, p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->-$$Nest$fputrecordPositions(Lorg/telegram/ui/Components/AnimatedEmojiSpan;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 806
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 807
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->remove(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(I)V
    .locals 3

    .line 789
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    .line 790
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->groupedByLayout:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->layout:Landroid/text/Layout;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;

    if-eqz v0, :cond_2

    .line 792
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->remove(Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;)V

    .line 793
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 794
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->groupedByLayout:Ljava/util/HashMap;

    iget-object v2, p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->layout:Landroid/text/Layout;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->backgroundDrawingArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 800
    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    .line 801
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    :cond_1
    return-void

    .line 798
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "!!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public replaceLayout(Landroid/text/Layout;Landroid/text/Layout;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 826
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->groupedByLayout:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;

    if-eqz p2, :cond_1

    .line 828
    iput-object p1, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->layout:Landroid/text/Layout;

    const/4 v0, 0x0

    .line 829
    :goto_0
    iget-object v1, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 830
    iget-object v1, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    iput-object p1, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->layout:Landroid/text/Layout;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 832
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->groupedByLayout:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
