.class Lorg/telegram/ui/LocationActivity$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity;->fetchRecentLocations(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    .line 2452
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$12;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2455
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity$12;->this$0:Lorg/telegram/ui/LocationActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fputproximityAnimationInProgress(Lorg/telegram/ui/LocationActivity;Z)V

    .line 2456
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity$12;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {p1}, Lorg/telegram/ui/LocationActivity;->-$$Nest$mmaybeShowProximityHint(Lorg/telegram/ui/LocationActivity;)V

    return-void
.end method
