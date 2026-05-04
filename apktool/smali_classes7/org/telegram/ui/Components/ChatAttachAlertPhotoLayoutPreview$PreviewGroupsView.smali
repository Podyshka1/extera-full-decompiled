.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewGroupsView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;,
        Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$GroupingPhotoViewerProvider;
    }
.end annotation


# instance fields
.field private deletedPhotos:Ljava/util/HashMap;

.field private draggingT:F

.field private groupCells:Ljava/util/ArrayList;

.field private hintView:Lorg/telegram/ui/Cells/ChatActionCell;

.field private images:Ljava/util/HashMap;

.field lastGroupSeen:[Z

.field private lastMeasuredHeight:I

.field private paddingBottom:I

.field private paddingTop:I

.field photoViewerProvider:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$GroupingPhotoViewerProvider;

.field photosMap:Ljava/util/HashMap;

.field photosMapKeys:Ljava/util/List;

.field photosOrder:Ljava/util/ArrayList;

.field private savedDragFromX:F

.field private savedDragFromY:F

.field private savedDraggingT:F

.field private final scroller:Ljava/lang/Runnable;

.field private scrollerStarted:Z

.field selectedPhotos:Ljava/util/HashMap;

.field tapGroupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

.field tapMediaCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

.field tapTime:J

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

.field private final tmpPoint:Lorg/telegram/ui/Components/Point;

.field private undoViewId:I

.field viewBottom:F

.field viewTop:F


# direct methods
.method public static synthetic $r8$lambda$IEewyOJY70eMlPGYLx7-pm0qaZA(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->lambda$startDragging$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LqippLyC2JRnZ_QdXoSxXwmrtQw(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->lambda$onTouchEvent$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$b8jrnaOIYjc9qs9hUFAT-DfFc9A(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;Lorg/telegram/messenger/MediaController$PhotoEntry;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->lambda$onTouchEvent$3(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;Lorg/telegram/messenger/MediaController$PhotoEntry;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vXqXvFZRAMm-M_5UUSyli5P3SuM(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;JLorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->lambda$onTouchEvent$2(JLorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wxKp2pmM5UTlMFUtQIUbNe21_7I(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->lambda$stopDragging$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetdeletedPhotos(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->deletedPhotos:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdraggingT(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->draggingT:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupCells(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpaddingBottom(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->paddingBottom:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpaddingTop(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->paddingTop:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputscrollerStarted(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->scrollerStarted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mmeasurePureHeight(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->measurePureHeight()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;Landroid/content/Context;)V
    .locals 4

    .line 926
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    .line 927
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 945
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    .line 947
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->deletedPhotos:Ljava/util/HashMap;

    const/high16 v0, 0x41800000    # 16.0f

    .line 1084
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->paddingTop:I

    const/high16 v0, 0x42800000    # 64.0f

    .line 1085
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->paddingBottom:I

    const/4 v0, 0x0

    .line 1086
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->lastMeasuredHeight:I

    const/4 v1, 0x0

    .line 1128
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->lastGroupSeen:[Z

    const-wide/16 v2, 0x0

    .line 1232
    iput-wide v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tapTime:J

    .line 1233
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tapGroupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    .line 1234
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tapMediaCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    const/4 v1, 0x0

    .line 1236
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->draggingT:F

    .line 1238
    new-instance v1, Lorg/telegram/ui/Components/Point;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tmpPoint:Lorg/telegram/ui/Components/Point;

    .line 1324
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->scrollerStarted:Z

    .line 1325
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->scroller:Ljava/lang/Runnable;

    .line 1397
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$GroupingPhotoViewerProvider;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$GroupingPhotoViewerProvider;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->photoViewerProvider:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$GroupingPhotoViewerProvider;

    .line 1580
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->undoViewId:I

    .line 1910
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->images:Ljava/util/HashMap;

    .line 928
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 930
    new-instance v0, Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetthemeDelegate(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    invoke-direct {v0, p2, v1, p1}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->hintView:Lorg/telegram/ui/Cells/ChatActionCell;

    .line 931
    sget p1, Lorg/telegram/messenger/R$string;->AttachMediaDragHint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->setCustomText(Ljava/lang/CharSequence;)V

    .line 932
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->hintView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private groupSeen()[Z
    .locals 6

    .line 1130
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    .line 1131
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->paddingTop:I

    int-to-float v1, v1

    .line 1132
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v2

    .line 1133
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->getListTopPadding()I

    move-result v3

    sub-int v3, v2, v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->viewTop:F

    .line 1134
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->getListTopPadding()I

    move-result v5

    sub-int/2addr v3, v5

    add-int/2addr v3, v2

    int-to-float v2, v3

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->viewBottom:F

    .line 1135
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v4, v2, :cond_0

    .line 1137
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    .line 1138
    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->measure()F

    move-result v3

    add-float/2addr v3, v1

    .line 1139
    invoke-virtual {p0, v1, v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->isSeen(FF)Z

    move-result v1

    aput-boolean v1, v0, v4

    add-int/lit8 v4, v4, 0x1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$onTouchEvent$2(JLorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)V
    .locals 2

    .line 1686
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tapTime:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tapMediaCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 1689
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->startDragging(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)V

    .line 1690
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect()Landroid/graphics/RectF;

    move-result-object p1

    .line 1691
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->drawingRect()Landroid/graphics/RectF;

    move-result-object p2

    .line 1692
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCellTouchX(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)F

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {p3, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fputdraggingCellLeft(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;F)V

    .line 1693
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCellTouchY(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)F

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr v0, p1

    invoke-static {p3, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fputdraggingCellTop(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;F)V

    .line 1694
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p3

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fputdraggingCellFromWidth(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;F)V

    .line 1695
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fputdraggingCellFromHeight(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;F)V

    .line 1697
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    const/4 p2, 0x0

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onTouchEvent$3(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;Lorg/telegram/messenger/MediaController$PhotoEntry;I)V
    .locals 2

    .line 1792
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingAnimator(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1793
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingAnimator(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1795
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fputdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)V

    const/4 v0, 0x0

    .line 1796
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->draggingT:F

    .line 1797
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->pushToGroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;Lorg/telegram/messenger/MediaController$PhotoEntry;I)V

    .line 1798
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->updateGroups()V

    .line 1799
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetphotoLayout(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->toPhotoLayout(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$4(I)V
    .locals 1

    .line 1803
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->undoViewId:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetundoView(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1804
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetundoView(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startDragging$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1317
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->draggingT:F

    .line 1318
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->invalidate()V

    return-void
.end method

.method private synthetic lambda$stopDragging$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1290
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->draggingT:F

    .line 1291
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->invalidate()V

    return-void
.end method

.method private measureHeight()I
    .locals 3

    .line 1104
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->measurePureHeight()I

    move-result v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private measurePureHeight()I
    .locals 5

    .line 1089
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->paddingTop:I

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->paddingBottom:I

    add-int/2addr v0, v1

    .line 1090
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    int-to-float v0, v0

    .line 1092
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->measure()F

    move-result v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1094
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->hintView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1095
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->hintView:Lorg/telegram/ui/Cells/ChatActionCell;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    const/high16 v3, 0x40000000    # 2.0f

    .line 1096
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/16 v3, 0x270f

    const/high16 v4, -0x80000000

    .line 1097
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1095
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 1100
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->hintView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private pushToGroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;Lorg/telegram/messenger/MediaController$PhotoEntry;I)V
    .locals 3

    .line 1869
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {v0, p3, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1870
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/16 p3, 0xb

    const/4 v0, 0x1

    if-ne p2, p3, :cond_2

    .line 1871
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1872
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1874
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    if-ltz p3, :cond_2

    add-int/2addr p3, v0

    .line 1876
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne p3, v1, :cond_0

    move-object p3, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    :goto_0
    if-nez p3, :cond_1

    .line 1878
    new-instance p3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-direct {p3, p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview-IA;)V

    .line 1879
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1880
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1881
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-direct {p2, v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;Ljava/util/ArrayList;)V

    invoke-static {p3, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$msetGroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;Z)V

    .line 1882
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->invalidate()V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1884
    invoke-direct {p0, p3, p2, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->pushToGroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;Lorg/telegram/messenger/MediaController$PhotoEntry;I)V

    .line 1888
    :cond_2
    :goto_1
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$msetGroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;Z)V

    return-void
.end method

.method private updateGroups()V
    .locals 10

    .line 1891
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1893
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    .line 1894
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    if-ge v2, v4, :cond_1

    .line 1895
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v5, v4

    .line 1896
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    .line 1898
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1899
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v8, v1

    :goto_1
    if-ge v8, v5, :cond_0

    .line 1901
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1903
    :cond_0
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1904
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v5

    invoke-static {v3, v5, v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$msetGroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;Z)V

    .line 1905
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v3

    invoke-static {v4, v3, v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$msetGroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public calcPhotoArrays()V
    .locals 12

    .line 996
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetphotoLayout(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->photosMap:Ljava/util/HashMap;

    .line 997
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->photosMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->photosMapKeys:Ljava/util/List;

    .line 998
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->selectedPhotos:Ljava/util/HashMap;

    .line 999
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->photosOrder:Ljava/util/ArrayList;

    .line 1001
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    .line 1003
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    .line 1004
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v3

    .line 1005
    iget-object v4, v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_5

    .line 1008
    :cond_0
    iget-object v4, v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_6

    .line 1010
    iget-object v6, v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1011
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->deletedPhotos:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1012
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->deletedPhotos:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1013
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->photosOrder:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1
    move v7, v1

    .line 1017
    :goto_2
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->photosMapKeys:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 1018
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->photosMapKeys:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1019
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v6, :cond_2

    .line 1021
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1022
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->photosOrder:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    move v7, v1

    .line 1029
    :goto_3
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->photosMapKeys:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 1030
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->photosMapKeys:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1031
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 1032
    instance-of v10, v9, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v10, :cond_4

    move-object v10, v9

    check-cast v10, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v10, v10, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v10, :cond_4

    if-eqz v6, :cond_4

    iget-object v11, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    .line 1036
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1038
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1039
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->photosOrder:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method dragTranslate()Lorg/telegram/ui/Components/Point;
    .locals 9

    .line 1240
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1241
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tmpPoint:Lorg/telegram/ui/Components/Point;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/Point;->x:F

    .line 1242
    iput v1, v0, Lorg/telegram/ui/Components/Point;->y:F

    return-object v0

    .line 1245
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCellHiding(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v0, :cond_1

    .line 1246
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect()Landroid/graphics/RectF;

    move-result-object v0

    .line 1247
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect(F)Landroid/graphics/RectF;

    move-result-object v1

    .line 1248
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tmpPoint:Lorg/telegram/ui/Components/Point;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    .line 1249
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCellTouchX(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCellLeft(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v6, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCellFromWidth(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)F

    move-result v8

    mul-float/2addr v6, v8

    sub-float/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->draggingT:F

    .line 1248
    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    iput v4, v3, Lorg/telegram/ui/Components/Point;->x:F

    .line 1253
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tmpPoint:Lorg/telegram/ui/Components/Point;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->groupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget v4, v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->y:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v1

    .line 1254
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    add-float/2addr v4, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCellTouchY(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCellTop(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)F

    move-result v1

    sub-float/2addr v1, v7

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCellFromHeight(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCellGroupY(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->draggingT:F

    .line 1253
    invoke-static {v4, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iput v0, v3, Lorg/telegram/ui/Components/Point;->y:F

    goto :goto_0

    .line 1259
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect()Landroid/graphics/RectF;

    move-result-object v0

    .line 1260
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect(F)Landroid/graphics/RectF;

    move-result-object v1

    .line 1261
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tmpPoint:Lorg/telegram/ui/Components/Point;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    .line 1262
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->savedDragFromX:F

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->draggingT:F

    iget v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->savedDraggingT:F

    div-float/2addr v6, v7

    .line 1261
    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    iput v4, v3, Lorg/telegram/ui/Components/Point;->x:F

    .line 1266
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tmpPoint:Lorg/telegram/ui/Components/Point;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->groupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget v4, v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->y:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v1

    .line 1267
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    add-float/2addr v4, v0

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->savedDragFromY:F

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->draggingT:F

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->savedDraggingT:F

    div-float/2addr v1, v2

    .line 1266
    invoke-static {v4, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iput v0, v3, Lorg/telegram/ui/Components/Point;->y:F

    .line 1273
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tmpPoint:Lorg/telegram/ui/Components/Point;

    return-object v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public fromPhotoArrays()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 971
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 972
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->detach()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 974
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 975
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 976
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->photosOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_3

    .line 979
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->photosOrder:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 980
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->photosMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    rem-int/lit8 v5, v4, 0xa

    const/16 v6, 0x9

    if-eq v5, v6, :cond_1

    if-ne v4, v3, :cond_2

    .line 982
    :cond_1
    new-instance v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview-IA;)V

    .line 983
    new-instance v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-direct {v6, v7, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;Ljava/util/ArrayList;)V

    invoke-static {v5, v6, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$msetGroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;Z)V

    .line 984
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public fromPhotoLayout(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 1

    .line 965
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotosOrder()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->photosOrder:Ljava/util/ArrayList;

    .line 966
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->photosMap:Ljava/util/HashMap;

    .line 967
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->fromPhotoArrays()V

    return-void
.end method

.method public getPhotos()Ljava/util/ArrayList;
    .locals 5

    .line 1073
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1074
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1076
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    if-eqz v3, :cond_0

    .line 1077
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 1078
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPhotosCount()I
    .locals 5

    .line 1062
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1064
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    if-eqz v3, :cond_0

    .line 1065
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 1066
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public invalidate()V
    .locals 2

    .line 1118
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->measureHeight()I

    move-result v0

    .line 1119
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->lastMeasuredHeight:I

    if-eq v1, v0, :cond_0

    .line 1120
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->lastMeasuredHeight:I

    .line 1121
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1123
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public isSeen(FF)Z
    .locals 2

    .line 1146
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->viewTop:F

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->viewBottom:F

    cmpg-float v1, p1, v1

    if-lez v1, :cond_2

    :cond_0
    cmpl-float v1, p2, v0

    if-ltz v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->viewBottom:F

    cmpg-float v1, p2, v1

    if-lez v1, :cond_2

    :cond_1
    cmpg-float p1, p1, v0

    if-gtz p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->viewBottom:F

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1188
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->paddingTop:I

    int-to-float v0, v0

    .line 1191
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    .line 1192
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->getListTopPadding()I

    move-result v2

    sub-int v2, v1, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->viewTop:F

    .line 1193
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->getListTopPadding()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/2addr v2, v1

    int-to-float v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->viewBottom:F

    .line 1195
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1196
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->paddingTop:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1197
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_4

    .line 1199
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    .line 1200
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->measure()F

    move-result v6

    .line 1201
    iput v0, v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->y:F

    .line 1202
    iput v4, v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->indexStart:I

    .line 1203
    iget v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->viewTop:F

    cmpl-float v8, v0, v7

    if-ltz v8, :cond_0

    iget v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->viewBottom:F

    cmpg-float v8, v0, v8

    if-lez v8, :cond_2

    :cond_0
    add-float v8, v0, v6

    cmpl-float v9, v8, v7

    if-ltz v9, :cond_1

    iget v9, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->viewBottom:F

    cmpg-float v9, v8, v9

    if-lez v9, :cond_2

    :cond_1
    cmpg-float v7, v0, v7

    if-gtz v7, :cond_3

    iget v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->viewBottom:F

    cmpl-float v7, v8, v7

    if-ltz v7, :cond_3

    .line 1204
    :cond_2
    invoke-virtual {v5, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1205
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->invalidate()V

    .line 1207
    :cond_3
    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    add-float/2addr v0, v6

    .line 1209
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1211
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->hintView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->setVisiblePart(FI)V

    .line 1212
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->hintView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 1213
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->hintView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->drawBackground(Landroid/graphics/Canvas;Z)V

    .line 1214
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->hintView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->drawReactions(Landroid/graphics/Canvas;ZLjava/lang/Integer;)V

    .line 1216
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->hintView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/BaseCell;->draw(Landroid/graphics/Canvas;)V

    .line 1217
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1219
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1220
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1221
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->dragTranslate()Lorg/telegram/ui/Components/Point;

    move-result-object v0

    .line 1222
    iget v2, v0, Lorg/telegram/ui/Components/Point;->x:F

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1223
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->draw(Landroid/graphics/Canvas;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1224
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->invalidate()V

    .line 1226
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1229
    :cond_7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 937
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->hintView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->hintView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1109
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->hintView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/16 v1, 0x270f

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->measure(II)V

    .line 1110
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->lastMeasuredHeight:I

    if-gtz v0, :cond_0

    .line 1111
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->measureHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->lastMeasuredHeight:I

    .line 1113
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->lastMeasuredHeight:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void
.end method

.method public onScroll()V
    .locals 6

    .line 1150
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->lastGroupSeen:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_4

    .line 1152
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupSeen()[Z

    move-result-object v3

    .line 1153
    array-length v4, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->lastGroupSeen:[Z

    array-length v5, v5

    if-eq v4, v5, :cond_1

    goto :goto_2

    .line 1156
    :cond_1
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 1157
    aget-boolean v4, v3, v1

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->lastGroupSeen:[Z

    aget-boolean v5, v5, v1

    if-eq v4, v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_2
    move v0, v2

    goto :goto_3

    .line 1164
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupSeen()[Z

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->lastGroupSeen:[Z

    :goto_3
    if-eqz v0, :cond_5

    .line 1168
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->invalidate()V

    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    move-object/from16 v0, p0

    .line 1586
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1587
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1592
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    move v7, v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_1

    .line 1594
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    .line 1595
    invoke-virtual {v9}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->measure()F

    move-result v10

    cmpl-float v11, v2, v7

    if-ltz v11, :cond_0

    add-float v11, v7, v10

    cmpg-float v11, v2, v11

    if-gtz v11, :cond_0

    goto :goto_1

    :cond_0
    add-float/2addr v7, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_3

    .line 1603
    iget-object v6, v9, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->media:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v6, :cond_3

    .line 1605
    iget-object v11, v9, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->media:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    if-eqz v11, :cond_2

    .line 1606
    invoke-virtual {v11}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->drawingRect()Landroid/graphics/RectF;

    move-result-object v12

    sub-float v13, v2, v7

    invoke-virtual {v12, v1, v13}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    .line 1615
    :goto_3
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 1617
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect()Landroid/graphics/RectF;

    move-result-object v6

    .line 1618
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->dragTranslate()Lorg/telegram/ui/Components/Point;

    move-result-object v13

    .line 1619
    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14}, Landroid/graphics/RectF;-><init>()V

    .line 1620
    iget v15, v13, Lorg/telegram/ui/Components/Point;->x:F

    iget v13, v13, Lorg/telegram/ui/Components/Point;->y:F

    .line 1622
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v16

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    const/16 v18, 0x4

    sub-float v7, v15, v16

    .line 1623
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v16

    div-float v16, v16, v17

    sub-float v4, v13, v16

    .line 1624
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v16

    div-float v16, v16, v17

    add-float v15, v15, v16

    .line 1625
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float v6, v6, v17

    add-float/2addr v13, v6

    .line 1621
    invoke-virtual {v14, v7, v4, v15, v13}, Landroid/graphics/RectF;->set(FFFF)V

    move v7, v5

    move v13, v7

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_4
    if-ge v4, v3, :cond_5

    .line 1629
    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    .line 1630
    invoke-virtual {v15}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->measure()F

    move-result v16

    const/16 v17, 0x1

    add-float v12, v7, v16

    const/16 v16, 0x2

    .line 1632
    iget v10, v14, Landroid/graphics/RectF;->top:F

    cmpl-float v10, v12, v10

    if-ltz v10, :cond_4

    iget v10, v14, Landroid/graphics/RectF;->bottom:F

    cmpl-float v19, v10, v7

    if-ltz v19, :cond_4

    .line 1633
    invoke-static {v12, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iget v8, v14, Landroid/graphics/RectF;->top:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    sub-float/2addr v10, v7

    cmpl-float v7, v10, v13

    if-lez v7, :cond_4

    move v13, v10

    move-object v6, v15

    :cond_4
    add-int/lit8 v4, v4, 0x1

    move v7, v12

    goto :goto_4

    :cond_5
    const/16 v16, 0x2

    const/16 v17, 0x1

    if-eqz v6, :cond_d

    .line 1643
    iget-object v3, v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->media:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v8, v5

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_5
    if-ge v4, v3, :cond_c

    .line 1645
    iget-object v10, v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->media:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    if-eqz v10, :cond_a

    .line 1646
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v12

    if-eq v10, v12, :cond_a

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    iget-object v13, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1647
    invoke-virtual {v10}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->drawingRect()Landroid/graphics/RectF;

    move-result-object v12

    .line 1648
    invoke-static {v10}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->-$$Nest$fgetpositionFlags(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)I

    move-result v13

    and-int/lit8 v13, v13, 0x4

    if-lez v13, :cond_6

    .line 1649
    iput v5, v12, Landroid/graphics/RectF;->top:F

    .line 1651
    :cond_6
    invoke-static {v10}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->-$$Nest$fgetpositionFlags(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)I

    move-result v13

    and-int/lit8 v13, v13, 0x1

    if-lez v13, :cond_7

    .line 1652
    iput v5, v12, Landroid/graphics/RectF;->left:F

    .line 1654
    :cond_7
    invoke-static {v10}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->-$$Nest$fgetpositionFlags(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)I

    move-result v13

    and-int/lit8 v13, v13, 0x2

    if-lez v13, :cond_8

    .line 1655
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    iput v13, v12, Landroid/graphics/RectF;->right:F

    .line 1657
    :cond_8
    invoke-static {v10}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->-$$Nest$fgetpositionFlags(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)I

    move-result v13

    and-int/lit8 v13, v13, 0x8

    if-lez v13, :cond_9

    .line 1658
    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetheight(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v13

    iput v13, v12, Landroid/graphics/RectF;->bottom:F

    .line 1660
    :cond_9
    invoke-static {v14, v12}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1661
    iget v13, v12, Landroid/graphics/RectF;->right:F

    iget v15, v14, Landroid/graphics/RectF;->right:F

    .line 1662
    invoke-static {v13, v15}, Ljava/lang/Math;->min(FF)F

    move-result v13

    iget v15, v12, Landroid/graphics/RectF;->left:F

    move/from16 v20, v5

    iget v5, v14, Landroid/graphics/RectF;->left:F

    invoke-static {v15, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sub-float/2addr v13, v5

    iget v5, v12, Landroid/graphics/RectF;->bottom:F

    iget v15, v14, Landroid/graphics/RectF;->bottom:F

    .line 1663
    invoke-static {v5, v15}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v12, v12, Landroid/graphics/RectF;->top:F

    iget v15, v14, Landroid/graphics/RectF;->top:F

    invoke-static {v12, v15}, Ljava/lang/Math;->max(FF)F

    move-result v12

    sub-float/2addr v5, v12

    mul-float/2addr v13, v5

    .line 1664
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float/2addr v5, v12

    div-float/2addr v13, v5

    const v5, 0x3e19999a    # 0.15f

    cmpl-float v5, v13, v5

    if-lez v5, :cond_b

    cmpl-float v5, v13, v8

    if-lez v5, :cond_b

    move-object v7, v10

    move v8, v13

    goto :goto_6

    :cond_a
    move/from16 v20, v5

    :cond_b
    :goto_6
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v20

    goto/16 :goto_5

    :cond_c
    move/from16 v20, v5

    goto :goto_8

    :cond_d
    move/from16 v20, v5

    :goto_7
    const/4 v7, 0x0

    goto :goto_8

    :cond_e
    move/from16 v20, v5

    const/16 v16, 0x2

    const/16 v17, 0x1

    const/16 v18, 0x4

    const/4 v6, 0x0

    goto :goto_7

    .line 1675
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_f

    .line 1676
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v8

    if-nez v8, :cond_f

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    iget-object v10, v8, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v10, v10, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-nez v10, :cond_f

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingAnimator(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/animation/ValueAnimator;

    move-result-object v8

    if-eqz v8, :cond_10

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingAnimator(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_9

    :cond_f
    move/from16 v8, v16

    goto :goto_a

    :cond_10
    :goto_9
    if-eqz v9, :cond_f

    if-eqz v11, :cond_f

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    iget-object v10, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1677
    iput-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tapGroupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    .line 1678
    iput-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tapMediaCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    .line 1679
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v6, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fputdraggingCellTouchX(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;F)V

    .line 1680
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fputdraggingCellTouchY(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;F)V

    .line 1681
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fputdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)V

    .line 1683
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tapTime:J

    .line 1684
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tapMediaCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    .line 1685
    new-instance v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v1, v2, v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;JLorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)V

    .line 1699
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    .line 1685
    invoke-static {v7, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1701
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->invalidate()V

    move/from16 v1, v17

    move v8, v1

    goto/16 :goto_13

    :goto_a
    if-ne v3, v8, :cond_12

    .line 1703
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v8

    if-eqz v8, :cond_12

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCellHiding(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 1704
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v6, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fputdraggingCellTouchX(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;F)V

    .line 1705
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fputdraggingCellTouchY(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;F)V

    .line 1707
    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->scrollerStarted:Z

    move/from16 v8, v17

    if-nez v1, :cond_11

    .line 1708
    iput-boolean v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->scrollerStarted:Z

    .line 1709
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->scroller:Ljava/lang/Runnable;

    const-wide/16 v6, 0x10

    invoke-virtual {v0, v1, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1712
    :cond_11
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->invalidate()V

    move v1, v8

    goto/16 :goto_13

    :cond_12
    move/from16 v8, v17

    if-ne v3, v8, :cond_1c

    .line 1714
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v8

    if-eqz v8, :cond_1b

    if-eqz v9, :cond_13

    if-eqz v11, :cond_13

    .line 1717
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v1

    if-eq v11, v1, :cond_13

    goto :goto_b

    :cond_13
    if-eqz v6, :cond_14

    if-eqz v7, :cond_14

    .line 1720
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v1

    if-eq v7, v1, :cond_14

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eq v1, v2, :cond_14

    move-object v9, v6

    move-object v11, v7

    goto :goto_b

    :cond_14
    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_b
    if-eqz v9, :cond_1a

    if-eqz v11, :cond_1a

    .line 1724
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v1

    if-eq v11, v1, :cond_1a

    .line 1725
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->groupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1726
    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    iget-object v6, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v1, :cond_15

    .line 1728
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->groupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1729
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->groupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->groupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v6

    const/4 v8, 0x1

    invoke-static {v1, v6, v8}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$msetGroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;Z)V

    :cond_15
    if-ltz v2, :cond_19

    .line 1732
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->groupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-le v1, v6, :cond_16

    add-int/lit8 v2, v2, 0x1

    .line 1735
    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-direct {v0, v9, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->pushToGroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;Lorg/telegram/messenger/MediaController$PhotoEntry;I)V

    .line 1736
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->groupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    if-eq v1, v9, :cond_19

    .line 1738
    iget-object v1, v9, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->media:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_18

    .line 1740
    iget-object v6, v9, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->media:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    .line 1741
    iget-object v7, v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-ne v7, v8, :cond_17

    move-object v8, v6

    goto :goto_d

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_18
    const/4 v8, 0x0

    :goto_d
    if-eqz v8, :cond_19

    .line 1748
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->remeasure()V

    .line 1749
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v1

    invoke-static {v8, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->-$$Nest$mlayoutFrom(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)V

    .line 1750
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fputdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)V

    .line 1751
    iput-object v9, v8, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->groupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    .line 1752
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromScale:F

    iput v2, v8, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->scale:F

    .line 1753
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->remeasure()V

    .line 1759
    :cond_19
    :try_start_0
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    const/4 v2, 0x7

    const/4 v8, 0x2

    invoke-virtual {v1, v2, v8}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1762
    :catch_0
    invoke-direct {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->updateGroups()V

    .line 1763
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetphotoLayout(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->toPhotoLayout(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V

    .line 1766
    :cond_1a
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->stopDragging()V

    :goto_e
    const/4 v1, 0x1

    const/4 v8, 0x1

    goto/16 :goto_13

    :cond_1b
    const/4 v8, 0x1

    :cond_1c
    if-ne v3, v8, :cond_25

    .line 1768
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v6

    if-nez v6, :cond_25

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tapMediaCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    if-eqz v6, :cond_25

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tapGroupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    if-eqz v7, :cond_25

    .line 1769
    iget-boolean v7, v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->wasSpoiler:Z

    if-eqz v7, :cond_1d

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->-$$Nest$fgetspoilerRevealProgress(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)F

    move-result v6

    cmpl-float v6, v6, v20

    if-nez v6, :cond_1d

    .line 1770
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tapMediaCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v1, v2, v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->-$$Nest$mstartRevealMedia(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;FF)V

    goto :goto_e

    .line 1773
    :cond_1d
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tapMediaCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->drawingRect()Landroid/graphics/RectF;

    move-result-object v6

    .line 1774
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->right:F

    const v9, 0x4211999a    # 36.4f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v8, v10

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tapGroupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v10}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgettop(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v10

    iget v11, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v10, v11

    iget v11, v6, Landroid/graphics/RectF;->right:F

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tapGroupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgettop(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v12

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v12, v6

    invoke-virtual {v7, v8, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1775
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tapMediaCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->groupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget v6, v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->y:F

    sub-float/2addr v2, v6

    invoke-virtual {v7, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1778
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->getSelectedItemsCount()I

    move-result v1

    const/4 v8, 0x1

    if-le v1, v8, :cond_1f

    .line 1780
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tapMediaCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    iget-object v10, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1781
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tapGroupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1e

    .line 1783
    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->saveDeletedImageId(Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 1784
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tapGroupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    .line 1785
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1786
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v6

    const/4 v8, 0x1

    invoke-static {v2, v6, v8}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$msetGroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;Z)V

    .line 1787
    invoke-direct {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->updateGroups()V

    .line 1788
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetphotoLayout(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->toPhotoLayout(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V

    .line 1790
    iget v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->undoViewId:I

    add-int/lit8 v13, v6, 0x1

    iput v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->undoViewId:I

    .line 1791
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetundoView(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v6

    new-instance v12, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$$ExternalSyntheticLambda1;

    invoke-direct {v12, v0, v2, v10, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;Lorg/telegram/messenger/MediaController$PhotoEntry;I)V

    const-wide/16 v7, 0x0

    const/16 v9, 0x52

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1802
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, v13}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;I)V

    const-wide/16 v6, 0xfa0

    invoke-virtual {v0, v1, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1809
    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingAnimator(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 1810
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingAnimator(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1f
    :goto_f
    const/4 v2, 0x0

    goto/16 :goto_12

    .line 1814
    :cond_20
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->calcPhotoArrays()V

    .line 1815
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->getPhotos()Ljava/util/ArrayList;

    move-result-object v1

    .line 1816
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tapMediaCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 1819
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v6, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v6, :cond_21

    const/4 v9, 0x1

    :goto_10
    const/4 v12, 0x0

    goto :goto_11

    .line 1822
    :cond_21
    iget-object v6, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v7, v6, Lorg/telegram/ui/ChatActivity;

    if-eqz v7, :cond_22

    .line 1823
    check-cast v6, Lorg/telegram/ui/ChatActivity;

    move-object v12, v6

    const/4 v9, 0x0

    goto :goto_11

    :cond_22
    move/from16 v9, v18

    goto :goto_10

    .line 1829
    :goto_11
    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v2, :cond_23

    .line 1831
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    .line 1833
    :cond_23
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-interface {v6}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->needEnterComment()Z

    move-result v6

    if-nez v6, :cond_24

    .line 1834
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1835
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1837
    :cond_24
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v6, v2, v7}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1838
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/PhotoViewer;->setParentAlert(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 1839
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v7, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    iget-boolean v6, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    invoke-virtual {v2, v7, v6}, Lorg/telegram/ui/PhotoViewer;->setMaxSelectedPhotos(IZ)V

    .line 1840
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->photoViewerProvider:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$GroupingPhotoViewerProvider;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$GroupingPhotoViewerProvider;->init(Ljava/util/ArrayList;)V

    .line 1841
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1842
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v6

    const/4 v10, 0x0

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->photoViewerProvider:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$GroupingPhotoViewerProvider;

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    .line 1843
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetphotoLayout(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->captionForAllMedia()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1844
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PhotoViewer;->setCaption(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 1847
    :goto_12
    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tapMediaCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    .line 1848
    iput-wide v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tapTime:J

    .line 1849
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fputdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)V

    move/from16 v1, v20

    .line 1850
    iput v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->draggingT:F

    goto/16 :goto_e

    :cond_25
    const/4 v1, 0x1

    const/4 v8, 0x0

    :goto_13
    if-eq v3, v1, :cond_26

    const/4 v2, 0x3

    if-ne v3, v2, :cond_27

    .line 1856
    :cond_26
    iput-wide v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->tapTime:J

    .line 1857
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->scroller:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    .line 1858
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->scrollerStarted:Z

    if-nez v8, :cond_27

    .line 1860
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->stopDragging()V

    move v12, v1

    goto :goto_14

    :cond_27
    move v12, v8

    :goto_14
    return v12
.end method

.method public remeasure()V
    .locals 6

    .line 1173
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->paddingTop:I

    int-to-float v0, v0

    .line 1175
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1177
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->groupCells:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    .line 1178
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->measure()F

    move-result v5

    .line 1179
    iput v0, v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->y:F

    .line 1180
    iput v3, v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->indexStart:I

    add-float/2addr v0, v5

    .line 1182
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public saveDeletedImageId(Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    .locals 4

    .line 949
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetphotoLayout(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 952
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetphotoLayout(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v0

    .line 954
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 955
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 957
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 958
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->deletedPhotos:Ljava/util/HashMap;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method startDragging(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)V
    .locals 2

    .line 1306
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fputdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)V

    .line 1307
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->groupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->y:F

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fputdraggingCellGroupY(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;F)V

    .line 1308
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fputdraggingCellHiding(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;Z)V

    const/4 p1, 0x0

    .line 1309
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->draggingT:F

    .line 1311
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->invalidate()V

    .line 1312
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingAnimator(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1313
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingAnimator(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1315
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fputdraggingAnimator(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;Landroid/animation/ValueAnimator;)V

    .line 1316
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingAnimator(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1320
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingAnimator(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1321
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingAnimator(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method stopDragging()V
    .locals 5

    .line 1277
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingAnimator(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingAnimator(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1281
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->dragTranslate()Lorg/telegram/ui/Components/Point;

    move-result-object v0

    .line 1282
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->draggingT:F

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->savedDraggingT:F

    .line 1283
    iget v1, v0, Lorg/telegram/ui/Components/Point;->x:F

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->savedDragFromX:F

    .line 1284
    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->savedDragFromY:F

    .line 1286
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fputdraggingCellHiding(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;Z)V

    .line 1288
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->savedDraggingT:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v2, 0x0

    aput v2, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fputdraggingAnimator(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;Landroid/animation/ValueAnimator;)V

    .line 1289
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingAnimator(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1293
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingAnimator(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1301
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingAnimator(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1302
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingAnimator(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1303
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->invalidate()V

    return-void
.end method

.method public toPhotoLayout(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V
    .locals 3

    .line 1051
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotosOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1052
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->calcPhotoArrays()V

    .line 1054
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->selectedPhotos:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->photosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateSelected(Ljava/util/HashMap;Ljava/util/ArrayList;Z)V

    .line 1055
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->photosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq v0, p1, :cond_0

    .line 1056
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCountButton(I)V

    :cond_0
    return-void
.end method
