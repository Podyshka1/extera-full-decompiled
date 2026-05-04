.class Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink$2;
.super Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;->fromChat(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$chat:Lorg/telegram/tgnet/TLRPC$Chat;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 371
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 378
    sget v0, Lorg/telegram/messenger/R$string;->AccDescrOpenChat:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 374
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    return-object v0
.end method

.method public open(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v0, v0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageReceiver;)Z
    .locals 2

    .line 382
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 383
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 384
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    return p1
.end method
