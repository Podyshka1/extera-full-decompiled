.class Lorg/telegram/ui/PhotoViewer$35;
.super Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;
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
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 7464
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public getFillColor()I
    .locals 2

    .line 7483
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v0

    return v0
.end method

.method public isInScheduleMode()Z
    .locals 1

    .line 7471
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->isInScheduleMode()Z

    move-result v0

    return v0
.end method

.method public isInactive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldDrawBackground()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
