.class Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
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
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$4;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 213
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$4;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    .line 214
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$4;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->-$$Nest$mupdateEmptyViewPosition(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)V

    return-void
.end method
