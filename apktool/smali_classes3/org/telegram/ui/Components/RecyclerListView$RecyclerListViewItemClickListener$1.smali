.class Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;
.super Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$OnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private doubleTapView:Landroid/view/View;

.field final synthetic this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/RecyclerListView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    .line 1094
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->val$this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$OnGestureListener;-><init>()V

    return-void
.end method

.method private onPressItem(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 1133
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetonItemClickListener(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetonItemClickListenerExtended(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p0

    goto/16 :goto_2

    .line 1134
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 1135
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 1136
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v5, v6, v1}, Lorg/telegram/ui/Components/RecyclerListView;->onChildPressed(Landroid/view/View;FFZ)V

    .line 1138
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetcurrentChildPosition(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v4

    .line 1139
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetinstantClick(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    if-eq v4, v0, :cond_3

    .line 1141
    :try_start_0
    invoke-virtual {p1, v7}, Landroid/view/View;->playSoundEffect(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    :catch_0
    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1144
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetonItemClickListener(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1145
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetonItemClickListener(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1, v4}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    goto :goto_1

    .line 1146
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetonItemClickListenerExtended(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1147
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetonItemClickListenerExtended(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    sub-float v1, v5, v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    sub-float v2, v6, v2

    invoke-interface {v0, p1, v4, v1, v2}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;->onItemClick(Landroid/view/View;IFF)V

    .line 1150
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;-><init>(Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;Landroid/view/View;IFF)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fputclickRunnable(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Runnable;)V

    .line 1173
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result p1

    int-to-long v4, p1

    .line 1150
    invoke-static {v1, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1175
    iget-object p1, v2, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetselectChildRunnable(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1176
    iget-object p1, v2, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetselectChildRunnable(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1177
    iget-object p1, v2, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fputselectChildRunnable(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Runnable;)V

    .line 1178
    iget-object p1, v2, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fputcurrentChildView(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;)V

    .line 1179
    iget-object p1, v2, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1, v7}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fputinterceptedByChild(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    .line 1180
    iget-object p1, v2, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1, v3, p2}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$mremoveSelection(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public hasDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1216
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetonItemLongClickListenerExtended(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1124
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->doubleTapView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetonItemClickListenerExtended(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetonItemClickListenerExtended(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->doubleTapView:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v2, v2, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetcurrentChildPosition(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;->hasDoubleTap(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetonItemClickListenerExtended(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->doubleTapView:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v2, v2, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetcurrentChildPosition(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, v2, v3, p1}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;->onDoubleTap(Landroid/view/View;IFF)V

    const/4 p1, 0x0

    .line 1126
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->doubleTapView:Landroid/view/View;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8

    .line 1187
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetcurrentChildView(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetcurrentChildPosition(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetonItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetonItemLongClickListenerExtended(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1190
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetcurrentChildView(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v0

    .line 1191
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v1, v1, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetonItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_1

    .line 1192
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetonItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v1, v1, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetcurrentChildView(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v4, v4, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v4}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetcurrentChildPosition(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v4

    invoke-interface {p1, v1, v4}, Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;->onItemClick(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1194
    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    :catch_0
    invoke-virtual {v0, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 1199
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v1, v1, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetonItemLongClickListenerExtended(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v4, v4, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v4}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetcurrentChildView(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v5, v5, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v5}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetcurrentChildPosition(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v7, v7, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v7}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetcurrentChildView(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v7, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v7, v7, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v7}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetcurrentChildView(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    sub-float/2addr p1, v7

    invoke-interface {v1, v4, v5, v6, p1}, Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;->onItemClick(Landroid/view/View;IFF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1201
    :try_start_1
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1203
    :catch_1
    invoke-virtual {v0, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1204
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fputlongPressCalled(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1112
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->doubleTapView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetonItemClickListenerExtended(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetonItemClickListenerExtended(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->doubleTapView:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v2, v2, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetcurrentChildPosition(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;->hasDoubleTap(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->doubleTapView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->onPressItem(Landroid/view/View;Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    .line 1115
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->doubleTapView:Landroid/view/View;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1099
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetcurrentChildView(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1100
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetonItemClickListenerExtended(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetonItemClickListenerExtended(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v2, v2, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetcurrentChildView(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetcurrentChildPosition(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;->hasDoubleTap(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetcurrentChildView(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->doubleTapView:Landroid/view/View;

    goto :goto_0

    .line 1103
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetcurrentChildView(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->onPressItem(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_1
    :goto_0
    return v1
.end method
