.class Lorg/telegram/ui/Stars/StarsReactionsSheet$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarsReactionsSheet;->animate3dIcon(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

.field final synthetic val$button:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

.field final synthetic val$cell:Landroid/view/View;

.field final synthetic val$commentView:[Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;

.field final synthetic val$doneRipple:[Z

.field final synthetic val$pushed:Ljava/lang/Runnable;

.field final synthetic val$to:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;Landroid/view/View;[Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;[ZLandroid/graphics/RectF;Ljava/lang/Runnable;)V
    .locals 0

    .line 967
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$7;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$7;->val$button:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$7;->val$cell:Landroid/view/View;

    iput-object p4, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$7;->val$commentView:[Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;

    iput-object p5, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$7;->val$doneRipple:[Z

    iput-object p6, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$7;->val$to:Landroid/graphics/RectF;

    iput-object p7, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$7;->val$pushed:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 970
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$7;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->-$$Nest$fgeticon3dView(Lorg/telegram/ui/Stars/StarsReactionsSheet;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 971
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$7;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->-$$Nest$fgeticon3dView(Lorg/telegram/ui/Stars/StarsReactionsSheet;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    .line 972
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$7;->val$button:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    if-eqz p1, :cond_0

    .line 973
    iput-boolean v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawImage:Z

    .line 975
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$7;->val$cell:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 976
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 978
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$7;->val$commentView:[Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    if-eqz p1, :cond_2

    .line 979
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;->setDrawStar(Z)V

    .line 982
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$7;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->access$001(Lorg/telegram/ui/Stars/StarsReactionsSheet;)V

    .line 984
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$7;->val$doneRipple:[Z

    aget-boolean v2, p1, v1

    if-nez v2, :cond_3

    .line 985
    aput-boolean v0, p1, v1

    .line 986
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$7;->val$to:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$7;->val$to:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {p1, v2, v3}, Lorg/telegram/ui/LaunchActivity;->makeRipple(FFF)V

    .line 988
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$7;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    :catch_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$7;->val$pushed:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 991
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 994
    :cond_3
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getFireworksOverlay()Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 995
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getFireworksOverlay()Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FireworksOverlay;->start(Z)V

    :cond_4
    return-void
.end method
