.class Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink$1;
.super Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;->fromUser(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 339
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink$1;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 346
    sget v0, Lorg/telegram/messenger/R$string;->ViewProfile:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink$1;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 4

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink$1;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 359
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink$1;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string v3, "user_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 360
    const-string v1, "my_profile"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 361
    new-instance v1, Lorg/telegram/ui/ProfileActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink$1;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageReceiver;)Z
    .locals 2

    .line 350
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 351
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink$1;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 352
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink$1;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    return p1
.end method
