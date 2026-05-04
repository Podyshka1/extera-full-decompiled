.class Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$2;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected allowSelectChildAtPosition(FF)Z
    .locals 2

    .line 171
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr p1, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->inBubbleMode:Z

    if-nez v1, :cond_0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    add-int/2addr p1, v1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
