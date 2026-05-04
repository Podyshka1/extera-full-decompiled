.class Lorg/telegram/ui/ChannelAdminLogActivity$7;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelAdminLogActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelAdminLogActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V
    .locals 0

    .line 1092
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$7;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10

    .line 1102
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 1103
    instance-of p4, p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p4, :cond_e

    .line 1104
    move-object p4, p2

    check-cast p4, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1105
    invoke-virtual {p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1107
    invoke-virtual {p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessageObject;->deleted:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$7;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1108
    :goto_0
    invoke-virtual {p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-eqz v4, :cond_1

    .line 1109
    invoke-virtual {v0, v3, v3}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    return p3

    .line 1113
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 1114
    invoke-virtual {p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedBottom()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1117
    iget-object v5, p0, Lorg/telegram/ui/ChannelAdminLogActivity$7;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 1118
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    if-ltz v5, :cond_2

    add-int/2addr v5, v2

    .line 1126
    iget-object v6, p0, Lorg/telegram/ui/ChannelAdminLogActivity$7;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1128
    invoke-virtual {v0, v3, v3}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    return p3

    .line 1133
    :cond_2
    invoke-virtual {p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSlidingOffsetX()F

    move-result v5

    invoke-virtual {p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCheckBoxTranslation()F

    move-result v6

    add-float/2addr v5, v6

    .line 1136
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getLayoutHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 1137
    iget-object v7, p0, Lorg/telegram/ui/ChannelAdminLogActivity$7;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/ChannelAdminLogActivity$7;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_3

    move v6, v7

    .line 1142
    :cond_3
    invoke-virtual {p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedTop()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1145
    iget-object v7, p0, Lorg/telegram/ui/ChannelAdminLogActivity$7;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    .line 1146
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    if-ltz p2, :cond_6

    move v7, v3

    :cond_4
    const/16 v8, 0x14

    if-lt v7, v8, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    sub-int/2addr p2, v2

    .line 1161
    iget-object v8, p0, Lorg/telegram/ui/ChannelAdminLogActivity$7;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 1163
    iget-object v4, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1164
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v9, v8, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v9, :cond_6

    .line 1165
    move-object p4, v8

    check-cast p4, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1166
    invoke-virtual {p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedTop()Z

    move-result v8

    if-nez v8, :cond_4

    :cond_6
    :goto_1
    const/high16 p2, 0x42400000    # 48.0f

    .line 1180
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int v7, v6, v7

    if-ge v7, v4, :cond_7

    .line 1181
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int v6, v4, p2

    .line 1183
    :cond_7
    invoke-virtual {p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedBottom()Z

    move-result p2

    if-nez p2, :cond_8

    .line 1184
    invoke-virtual {p4}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr p2, v4

    float-to-int p2, p2

    if-le v6, p2, :cond_8

    move v6, p2

    .line 1189
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 p2, 0x0

    cmpl-float v4, v5, p2

    if-eqz v4, :cond_9

    .line 1191
    invoke-virtual {p1, v5, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1193
    :cond_9
    invoke-virtual {p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 1194
    invoke-virtual {p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean p2, p2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-eqz p2, :cond_a

    int-to-float p2, v6

    .line 1195
    invoke-virtual {p4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    sub-float/2addr p2, v4

    float-to-int v6, p2

    :cond_a
    if-eqz v1, :cond_b

    const/high16 p2, 0x42300000    # 44.0f

    .line 1199
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr v6, p2

    int-to-float p2, v6

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    .line 1201
    :cond_b
    invoke-virtual {p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 1202
    invoke-virtual {p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1204
    invoke-virtual {p4}, Landroid/view/View;->getScaleX()F

    move-result p2

    invoke-virtual {p4}, Landroid/view/View;->getScaleY()F

    move-result v4

    .line 1205
    invoke-virtual {p4}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {p4}, Landroid/view/View;->getPivotX()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {p4}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    shr-int/2addr p4, v2

    int-to-float p4, p4

    add-float/2addr v6, p4

    .line 1203
    invoke-virtual {p1, p2, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_2

    :cond_c
    const/high16 p2, 0x3f800000    # 1.0f

    .line 1208
    invoke-virtual {v0, p2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    :goto_2
    if-eqz v1, :cond_d

    .line 1211
    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1213
    :cond_d
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1214
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_e
    return p3
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1096
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$7;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->applyScrolledPosition()V

    .line 1097
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    return-void
.end method
