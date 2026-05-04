.class Lorg/telegram/ui/Components/AudioPlayerAlert$15;
.super Lorg/telegram/ui/Components/CastMediaRouteButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V
    .locals 0

    .line 1150
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$15;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/CastMediaRouteButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public stateUpdated(Z)V
    .locals 2

    .line 1153
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$15;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateColors()V

    .line 1154
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$15;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetoptionsIcon(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ChooseQualityLayout$QualityIcon;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1155
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$15;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetoptionsIcon(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ChooseQualityLayout$QualityIcon;

    move-result-object p1

    invoke-static {}, Lorg/telegram/ui/CastSync;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ChooseQualityLayout$QualityIcon;->setCasting(ZZ)V

    :cond_0
    return-void
.end method
