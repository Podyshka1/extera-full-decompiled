.class Lorg/telegram/ui/Components/ChatAttachAlert$23;
.super Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 3355
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$23;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public getFillColor()I
    .locals 2

    .line 3378
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$23;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButton:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8200(Lorg/telegram/ui/Components/ChatAttachAlert;I)I

    move-result v0

    return v0
.end method

.method public isInScheduleMode()Z
    .locals 1

    .line 3363
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->isInScheduleMode()Z

    move-result v0

    return v0
.end method

.method public isInactive()Z
    .locals 1

    .line 3368
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$23;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendButtonEnabled:Z

    xor-int/lit8 v0, v0, 0x1

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
