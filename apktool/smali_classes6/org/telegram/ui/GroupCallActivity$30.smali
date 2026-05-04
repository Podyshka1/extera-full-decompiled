.class Lorg/telegram/ui/GroupCallActivity$30;
.super Lorg/telegram/ui/Components/ProfileGalleryView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;-><init>(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBar;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Components/ProfileGalleryView$Callback;)V
    .locals 0

    .line 5136
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$30;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/ProfileGalleryView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBar;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Components/ProfileGalleryView$Callback;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 5139
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 5140
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$30;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$2300(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
