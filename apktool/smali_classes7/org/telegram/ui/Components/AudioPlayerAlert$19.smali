.class Lorg/telegram/ui/Components/AudioPlayerAlert$19;
.super Landroid/widget/FrameLayout;
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

    .line 1457
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$19;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1460
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$19;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetblurredView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1461
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$19;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$mshowAlbumCover(Lorg/telegram/ui/Components/AudioPlayerAlert;ZZ)V

    :cond_0
    return v0
.end method
