.class Lorg/telegram/ui/Components/ReactionsContainerLayout$InnerItem;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ReactionsContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerItem"
.end annotation


# instance fields
.field reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field final synthetic this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;ILorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$InnerItem;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 p1, 0x0

    .line 135
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    .line 136
    iput-object p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$InnerItem;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    check-cast p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$InnerItem;

    .line 144
    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    iget v3, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne v2, v3, :cond_4

    if-eqz v2, :cond_2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    .line 145
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$InnerItem;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v2, :cond_3

    iget-object p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$InnerItem;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v1

    :cond_4
    if-ne v2, v3, :cond_5

    return v0

    :cond_5
    :goto_0
    return v1
.end method
