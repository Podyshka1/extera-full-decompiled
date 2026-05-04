.class Lorg/telegram/ui/GroupCallActivity$29;
.super Lorg/telegram/ui/AvatarPreviewPagerIndicator;
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
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;Landroid/content/Context;)V
    .locals 0

    .line 5122
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/AvatarPreviewPagerIndicator;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onPhotosLoaded()V
    .locals 5

    .line 5125
    invoke-super {p0}, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->onPhotosLoaded()V

    .line 5127
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetavatarsViewPager(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getDialogId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 5129
    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetaccountInstance(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    const/4 v1, 0x0

    .line 5130
    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const/4 v3, 0x1

    .line 5131
    invoke-static {v0, v3}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    .line 5132
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetavatarsViewPager(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2, v0, v1}, Lorg/telegram/ui/Components/ProfileGalleryView;->initIfEmpty(Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;Z)Z

    :cond_0
    return-void
.end method
