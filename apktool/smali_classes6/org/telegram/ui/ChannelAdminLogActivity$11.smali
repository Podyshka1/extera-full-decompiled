.class Lorg/telegram/ui/ChannelAdminLogActivity$11;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
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
.field private final scrollValue:I

.field final synthetic this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

.field private totalDy:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 0

    .line 1308
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    .line 1310
    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->totalDy:F

    const/high16 p1, 0x42c80000    # 100.0f

    .line 1311
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->scrollValue:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 1316
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fputscrollingFloatingDate(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V

    .line 1317
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fputcheckTextureViewPosition(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 1319
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fputscrollingFloatingDate(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V

    .line 1320
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fputcheckTextureViewPosition(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V

    .line 1321
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$mhideFloatingDateView(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V

    :cond_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 1327
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    if-eqz p3, :cond_1

    .line 1328
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetscrollingFloatingDate(Lorg/telegram/ui/ChannelAdminLogActivity;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetcurrentFloatingTopIsNotMessage(Lorg/telegram/ui/ChannelAdminLogActivity;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1329
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfloatingDateView(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    .line 1330
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfloatingDateAnimation(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/animation/AnimatorSet;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1331
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfloatingDateAnimation(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/animation/AnimatorSet;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1333
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfloatingDateView(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1334
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p2, p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fputfloatingDateAnimation(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/animation/AnimatorSet;)V

    .line 1335
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfloatingDateAnimation(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/animation/AnimatorSet;

    move-result-object p2

    const-wide/16 v0, 0x96

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1336
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfloatingDateAnimation(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/animation/AnimatorSet;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfloatingDateView(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object p3

    new-array v0, p1, [F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "alpha"

    invoke-static {p3, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    new-array v0, p1, [Landroid/animation/Animator;

    aput-object p3, v0, v2

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1337
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfloatingDateAnimation(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/animation/AnimatorSet;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/ChannelAdminLogActivity$11$1;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$11$1;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity$11;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1345
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfloatingDateAnimation(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/animation/AnimatorSet;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 1348
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$mcheckScrollForLoad(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V

    .line 1349
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$mupdateMessagesVisiblePart(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    return-void
.end method
