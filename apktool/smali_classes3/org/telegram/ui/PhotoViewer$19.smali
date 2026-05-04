.class Lorg/telegram/ui/PhotoViewer$19;
.super Lorg/telegram/ui/Components/CastMediaRouteButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V
    .locals 0

    .line 5974
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$19;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/CastMediaRouteButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public stateUpdated(Z)V
    .locals 3

    .line 5977
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$19;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcastItem(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5978
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$19;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcastItem(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    const/4 v1, -0x1

    const v2, -0x8c4b14

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setEnabledByColor(ZII)V

    .line 5979
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$19;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcastItem(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0xf73b4ec

    goto :goto_0

    :cond_0
    const p1, 0xfffffff

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 5981
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$19;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 5982
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$19;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    invoke-static {}, Lorg/telegram/ui/CastSync;->isActive()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$19;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmuteVideo(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v0

    :goto_2
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setMute(Z)V

    .line 5984
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$19;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoItemIcon(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChooseQualityLayout$QualityIcon;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 5985
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$19;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoItemIcon(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChooseQualityLayout$QualityIcon;

    move-result-object p1

    invoke-static {}, Lorg/telegram/ui/CastSync;->isActive()Z

    move-result v1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/ChooseQualityLayout$QualityIcon;->setCasting(ZZ)V

    :cond_5
    return-void
.end method
