.class public interface abstract Lorg/telegram/ui/Components/ChatActivityInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract checkAndUpdateAvatar()V
.end method

.method public abstract getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;
.end method

.method public abstract getAvatarContainer()Lorg/telegram/ui/Components/ChatAvatarContainer;
.end method

.method public abstract getContentView()Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.end method

.method public abstract getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;
.end method

.method public abstract getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;
.end method

.method public abstract getDialogId()J
.end method

.method public abstract getGroupCall()Lorg/telegram/messenger/ChatObject$Call;
.end method

.method public abstract getMergeDialogId()J
.end method

.method public abstract getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
.end method

.method public abstract getTopicId()J
.end method

.method public abstract openedWithLivestream()Z
.end method

.method public abstract scrollToMessageId(IIZIZI)V
.end method

.method public abstract shouldShowImport()Z
.end method
