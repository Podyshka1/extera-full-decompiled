.class Lorg/telegram/ui/Components/ReactedUsersListView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ReactedUsersListView;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ReactedUsersListView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ReactedUsersListView;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$5;->this$0:Lorg/telegram/ui/Components/ReactedUsersListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 319
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$5;->this$0:Lorg/telegram/ui/Components/ReactedUsersListView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ReactedUsersListView;->-$$Nest$fgetloadingView(Lorg/telegram/ui/Components/ReactedUsersListView;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
