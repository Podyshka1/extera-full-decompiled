.class Lorg/telegram/ui/TooManyCommunitiesActivity$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TooManyCommunitiesActivity;->loadInactiveChannels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TooManyCommunitiesActivity;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$8;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 395
    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$8;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    iget-object p1, p1, Lorg/telegram/ui/TooManyCommunitiesActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
