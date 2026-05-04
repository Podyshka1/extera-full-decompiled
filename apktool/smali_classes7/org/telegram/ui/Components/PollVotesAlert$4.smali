.class Lorg/telegram/ui/Components/PollVotesAlert$4;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PollVotesAlert;-><init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastUpdateTime:J

.field final synthetic this$0:Lorg/telegram/ui/Components/PollVotesAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$4;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected allowSelectChildAtPosition(FF)Z
    .locals 1

    .line 798
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$4;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetscrollOffsetY(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result p1

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 803
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$4;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetloadingResults(Lorg/telegram/ui/Components/PollVotesAlert;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 804
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 805
    iget-wide v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$4;->lastUpdateTime:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x11

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const-wide/16 v2, 0x10

    .line 809
    :cond_0
    iput-wide v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$4;->lastUpdateTime:J

    .line 810
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$4;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgettotalTranslation(Lorg/telegram/ui/Components/PollVotesAlert;)F

    move-result v1

    long-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$4;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetgradientWidth(Lorg/telegram/ui/Components/PollVotesAlert;)F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x44e10000    # 1800.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fputtotalTranslation(Lorg/telegram/ui/Components/PollVotesAlert;F)V

    .line 811
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$4;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgettotalTranslation(Lorg/telegram/ui/Components/PollVotesAlert;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$4;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetgradientWidth(Lorg/telegram/ui/Components/PollVotesAlert;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 812
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$4;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgettotalTranslation(Lorg/telegram/ui/Components/PollVotesAlert;)F

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$4;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetgradientWidth(Lorg/telegram/ui/Components/PollVotesAlert;)F

    move-result v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fputtotalTranslation(Lorg/telegram/ui/Components/PollVotesAlert;F)V

    goto :goto_0

    .line 814
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$4;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetplaceholderMatrix(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$4;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgettotalTranslation(Lorg/telegram/ui/Components/PollVotesAlert;)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 815
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$4;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetplaceholderGradient(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/LinearGradient;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$4;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetplaceholderMatrix(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 816
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 817
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 819
    :cond_2
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
