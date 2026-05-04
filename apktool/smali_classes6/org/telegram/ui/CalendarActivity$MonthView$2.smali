.class Lorg/telegram/ui/CalendarActivity$MonthView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CalendarActivity$MonthView;-><init>(Lorg/telegram/ui/CalendarActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$this$0:Lorg/telegram/ui/CalendarActivity;


# direct methods
.method public static synthetic $r8$lambda$1Vc1KC2fmWYHfzmVaUqsB7Lekfs(Lorg/telegram/ui/CalendarActivity$MonthView$2;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/CalendarActivity$PeriodDay;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CalendarActivity$MonthView$2;->lambda$onLongPress$0(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/CalendarActivity$PeriodDay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CA6qgGG_useQBp5lrbx1tAXapQA(Lorg/telegram/ui/CalendarActivity$MonthView$2;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CalendarActivity$MonthView$2;->lambda$onLongPress$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VCOwIz_HyNcFW4065qCc2wcFb_8(Lorg/telegram/ui/CalendarActivity$MonthView$2;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CalendarActivity$MonthView$2;->lambda$onLongPress$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b8l7Hs6S_aoKbHXINl6SgdOCBjw(Lorg/telegram/ui/CalendarActivity$MonthView$2;Lorg/telegram/ui/CalendarActivity$PeriodDay;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CalendarActivity$MonthView$2;->lambda$onLongPress$2(Lorg/telegram/ui/CalendarActivity$PeriodDay;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n5Gt_ZOKInUDygZYawqbW1nQof4(Lorg/telegram/ui/CalendarActivity$MonthView$2;Lorg/telegram/ui/CalendarActivity$PeriodDay;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CalendarActivity$MonthView$2;->lambda$onLongPress$1(Lorg/telegram/ui/CalendarActivity$PeriodDay;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/CalendarActivity$MonthView;Lorg/telegram/ui/CalendarActivity;Landroid/content/Context;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iput-object p2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->val$this$0:Lorg/telegram/ui/CalendarActivity;

    iput-object p3, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private getDayAtCoord(FF)Lorg/telegram/ui/CalendarActivity$PeriodDay;
    .locals 13

    .line 874
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 878
    :cond_0
    iget v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->startDayOfWeek:I

    .line 880
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40e00000    # 7.0f

    div-float/2addr v0, v3

    const/high16 v3, 0x42500000    # 52.0f

    .line 881
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42300000    # 44.0f

    .line 882
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    .line 883
    :goto_0
    iget-object v9, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget v9, v9, Lorg/telegram/ui/CalendarActivity$MonthView;->daysInMonth:I

    if-ge v7, v9, :cond_3

    int-to-float v9, v1

    mul-float/2addr v9, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float v11, v0, v10

    add-float/2addr v9, v11

    int-to-float v11, v8

    mul-float/2addr v11, v3

    div-float v10, v3, v10

    add-float/2addr v11, v10

    .line 885
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v11, v10

    int-to-float v10, v5

    sub-float v12, v9, v10

    cmpl-float v12, p1, v12

    if-ltz v12, :cond_1

    add-float/2addr v9, v10

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_1

    sub-float v9, v11, v10

    cmpl-float v9, p2, v9

    if-ltz v9, :cond_1

    add-float/2addr v11, v10

    cmpg-float v9, p2, v11

    if-gtz v9, :cond_1

    .line 888
    iget-object v9, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v9, v9, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    invoke-virtual {v9, v7, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/CalendarActivity$PeriodDay;

    if-eqz v9, :cond_1

    return-object v9

    :cond_1
    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x7

    if-lt v1, v9, :cond_2

    add-int/lit8 v8, v8, 0x1

    move v1, v6

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private synthetic lambda$onLongPress$0(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/CalendarActivity$PeriodDay;)V
    .locals 1

    .line 937
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 938
    check-cast p1, Lorg/telegram/ui/ChatActivity;

    iget p2, p2, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChatActivity;->jumpToDate(I)V

    return-void
.end method

.method private synthetic lambda$onLongPress$1(Lorg/telegram/ui/CalendarActivity$PeriodDay;Landroid/view/View;)V
    .locals 2

    .line 933
    iget-object p2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p2, p2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p2}, Lorg/telegram/ui/CalendarActivity;->access$900(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p2, p2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p2}, Lorg/telegram/ui/CalendarActivity;->access$1000(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    .line 934
    iget-object p2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p2, p2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p2}, Lorg/telegram/ui/CalendarActivity;->access$1200(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v1, v1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v1}, Lorg/telegram/ui/CalendarActivity;->access$1100(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 935
    instance-of v0, p2, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    .line 936
    new-instance v0, Lorg/telegram/ui/CalendarActivity$MonthView$2$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/CalendarActivity$MonthView$2$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/CalendarActivity$MonthView$2;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/CalendarActivity$PeriodDay;)V

    const-wide/16 p1, 0x12c

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 942
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$onLongPress$2(Lorg/telegram/ui/CalendarActivity$PeriodDay;Landroid/view/View;)V
    .locals 0

    .line 951
    iget-object p2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p2, p2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget p1, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    invoke-static {p2, p1}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fputdateSelectedEnd(Lorg/telegram/ui/CalendarActivity;I)V

    invoke-static {p2, p1}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fputdateSelectedStart(Lorg/telegram/ui/CalendarActivity;I)V

    .line 952
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fputinSelectionMode(Lorg/telegram/ui/CalendarActivity;Z)V

    .line 953
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$mupdateTitle(Lorg/telegram/ui/CalendarActivity;)V

    .line 954
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$manimateSelection(Lorg/telegram/ui/CalendarActivity;)V

    .line 955
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$onLongPress$3(Landroid/view/View;)V
    .locals 8

    .line 963
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$600(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 964
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$800(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v1, v1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v1}, Lorg/telegram/ui/CalendarActivity;->access$700(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 965
    instance-of v0, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v2}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetdialogId(Lorg/telegram/ui/CalendarActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    new-instance v6, Lorg/telegram/ui/CalendarActivity$MonthView$2$1;

    invoke-direct {v6, p0, p1}, Lorg/telegram/ui/CalendarActivity$MonthView$2$1;-><init>(Lorg/telegram/ui/CalendarActivity$MonthView$2;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/AlertsCreator;->createClearDaysDialogAlert(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 975
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$onLongPress$4(Landroid/view/View;)V
    .locals 0

    .line 992
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8

    .line 905
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 906
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetcalendarType(Lorg/telegram/ui/CalendarActivity;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 909
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/CalendarActivity$MonthView$2;->getDayAtCoord(FF)Lorg/telegram/ui/CalendarActivity$PeriodDay;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 913
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    invoke-virtual {v1, v0}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    :catch_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 917
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v2}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetdialogId(Lorg/telegram/ui/CalendarActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 918
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v2}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetdialogId(Lorg/telegram/ui/CalendarActivity;)J

    move-result-wide v2

    const-string v4, "user_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 920
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v2}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetdialogId(Lorg/telegram/ui/CalendarActivity;)J

    move-result-wide v2

    neg-long v2, v2

    const-string v4, "chat_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 922
    :goto_0
    const-string v2, "start_from_date"

    iget v3, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 923
    const-string v2, "need_remove_previous_same_chat_activity"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 924
    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 926
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v3, v3, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    iget-object v5, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v5, v5, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 927
    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v3, v3, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 929
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v4, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v4, v4, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 930
    sget v4, Lorg/telegram/messenger/R$string;->JumpToDate:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_message:I

    invoke-virtual {v3, v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    const/16 v4, 0xa0

    .line 931
    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 932
    new-instance v6, Lorg/telegram/ui/CalendarActivity$MonthView$2$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, p1}, Lorg/telegram/ui/CalendarActivity$MonthView$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/CalendarActivity$MonthView$2;Lorg/telegram/ui/CalendarActivity$PeriodDay;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 944
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 946
    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v3, v3, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v3}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetcanClearHistory(Lorg/telegram/ui/CalendarActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 947
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v6, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v6, v6, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6, v0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 948
    sget v6, Lorg/telegram/messenger/R$string;->SelectThisDay:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_select:I

    invoke-virtual {v3, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 949
    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 950
    new-instance v6, Lorg/telegram/ui/CalendarActivity$MonthView$2$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, p1}, Lorg/telegram/ui/CalendarActivity$MonthView$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/CalendarActivity$MonthView$2;Lorg/telegram/ui/CalendarActivity$PeriodDay;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 957
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 959
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v3, v3, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p1, v3, v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 960
    sget v0, Lorg/telegram/messenger/R$string;->ClearHistory:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 961
    invoke-virtual {p1, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 962
    new-instance v0, Lorg/telegram/ui/CalendarActivity$MonthView$2$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CalendarActivity$MonthView$2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/CalendarActivity$MonthView$2;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 977
    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 979
    :cond_2
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V

    .line 982
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    new-instance v0, Lorg/telegram/ui/CalendarActivity$MonthView$2$2;

    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->val$context:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Lorg/telegram/ui/CalendarActivity$MonthView$2$2;-><init>(Lorg/telegram/ui/CalendarActivity$MonthView$2;Landroid/content/Context;)V

    invoke-static {p1, v0}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fputblurredView(Lorg/telegram/ui/CalendarActivity;Landroid/view/View;)V

    .line 991
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/CalendarActivity;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/CalendarActivity$MonthView$2$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CalendarActivity$MonthView$2$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/CalendarActivity$MonthView$2;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 994
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/CalendarActivity;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 995
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/CalendarActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 996
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$500(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getOverlayContainerView()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/CalendarActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 997
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$mprepareBlurBitmap(Lorg/telegram/ui/CalendarActivity;)V

    .line 999
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragmentAsPreviewWithMenu(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 811
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->access$000(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 814
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetcalendarType(Lorg/telegram/ui/CalendarActivity;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetstoriesList(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 815
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/CalendarActivity$MonthView$2;->getDayAtCoord(FF)Lorg/telegram/ui/CalendarActivity$PeriodDay;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 816
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity$PeriodDay;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v3, v2, Lorg/telegram/ui/CalendarActivity;->callback:Lorg/telegram/ui/CalendarActivity$Callback;

    if-eqz v3, :cond_4

    .line 817
    invoke-static {v2}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetstoriesList(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 818
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v3

    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$PeriodDay;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetstoriesList(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object v7

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetstoriesPlaceProvider(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    move-result-object v9

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;ILorg/telegram/ui/Stories/StoriesController$StoriesList;ZLorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    goto :goto_0

    .line 820
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity;->callback:Lorg/telegram/ui/CalendarActivity$Callback;

    iget-object v3, v0, Lorg/telegram/ui/CalendarActivity$PeriodDay;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    iget v0, v0, Lorg/telegram/ui/CalendarActivity$PeriodDay;->startOffset:I

    invoke-interface {v2, v3, v0}, Lorg/telegram/ui/CalendarActivity$Callback;->onDateSelected(II)V

    .line 821
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 825
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    if-eqz v2, :cond_f

    .line 826
    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetinSelectionMode(Lorg/telegram/ui/CalendarActivity;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 827
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/CalendarActivity$MonthView$2;->getDayAtCoord(FF)Lorg/telegram/ui/CalendarActivity$PeriodDay;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 829
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetselectionAnimator(Lorg/telegram/ui/CalendarActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 830
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetselectionAnimator(Lorg/telegram/ui/CalendarActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 831
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fputselectionAnimator(Lorg/telegram/ui/CalendarActivity;Landroid/animation/ValueAnimator;)V

    .line 833
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetdateSelectedStart(Lorg/telegram/ui/CalendarActivity;)I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetdateSelectedEnd(Lorg/telegram/ui/CalendarActivity;)I

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 850
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget p1, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    invoke-static {v0, p1}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fputdateSelectedEnd(Lorg/telegram/ui/CalendarActivity;I)V

    invoke-static {v0, p1}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fputdateSelectedStart(Lorg/telegram/ui/CalendarActivity;I)V

    goto/16 :goto_2

    .line 834
    :cond_7
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetdateSelectedStart(Lorg/telegram/ui/CalendarActivity;)I

    move-result v0

    iget v2, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetdateSelectedEnd(Lorg/telegram/ui/CalendarActivity;)I

    move-result v0

    iget v2, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    if-ne v0, v2, :cond_8

    .line 835
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fputdateSelectedEnd(Lorg/telegram/ui/CalendarActivity;I)V

    invoke-static {p1, v1}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fputdateSelectedStart(Lorg/telegram/ui/CalendarActivity;I)V

    goto :goto_2

    .line 836
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetdateSelectedStart(Lorg/telegram/ui/CalendarActivity;)I

    move-result v0

    iget v2, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    if-ne v0, v2, :cond_9

    .line 837
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetdateSelectedEnd(Lorg/telegram/ui/CalendarActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fputdateSelectedStart(Lorg/telegram/ui/CalendarActivity;I)V

    goto :goto_2

    .line 838
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetdateSelectedEnd(Lorg/telegram/ui/CalendarActivity;)I

    move-result v0

    iget v2, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    if-ne v0, v2, :cond_a

    .line 839
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetdateSelectedStart(Lorg/telegram/ui/CalendarActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fputdateSelectedEnd(Lorg/telegram/ui/CalendarActivity;I)V

    goto :goto_2

    .line 840
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetdateSelectedStart(Lorg/telegram/ui/CalendarActivity;)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v2}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetdateSelectedEnd(Lorg/telegram/ui/CalendarActivity;)I

    move-result v2

    if-ne v0, v2, :cond_c

    .line 841
    iget v0, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v2}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fgetdateSelectedEnd(Lorg/telegram/ui/CalendarActivity;)I

    move-result v2

    if-le v0, v2, :cond_b

    .line 842
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget p1, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    invoke-static {v0, p1}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fputdateSelectedEnd(Lorg/telegram/ui/CalendarActivity;I)V

    goto :goto_2

    .line 844
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget p1, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    invoke-static {v0, p1}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fputdateSelectedStart(Lorg/telegram/ui/CalendarActivity;I)V

    goto :goto_2

    .line 847
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget p1, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    invoke-static {v0, p1}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fputdateSelectedEnd(Lorg/telegram/ui/CalendarActivity;I)V

    invoke-static {v0, p1}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$fputdateSelectedStart(Lorg/telegram/ui/CalendarActivity;I)V

    .line 853
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$mupdateTitle(Lorg/telegram/ui/CalendarActivity;)V

    .line 854
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$manimateSelection(Lorg/telegram/ui/CalendarActivity;)V

    goto/16 :goto_3

    .line 857
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/CalendarActivity$MonthView$2;->getDayAtCoord(FF)Lorg/telegram/ui/CalendarActivity$PeriodDay;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 858
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->access$100(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->access$200(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_e

    .line 859
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->access$400(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v3, v3, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v3}, Lorg/telegram/ui/CalendarActivity;->access$300(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 860
    instance-of v2, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_f

    .line 861
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 862
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    iget p1, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatActivity;->jumpToDate(I)V

    goto :goto_3

    :cond_e
    if-eqz p1, :cond_f

    .line 864
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_f

    .line 865
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 866
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget p1, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatActivity;->jumpToDate(I)V

    :cond_f
    :goto_3
    return v1
.end method
