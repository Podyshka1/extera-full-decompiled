.class Lcom/exteragram/messenger/utils/chats/MainMenuHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/utils/chats/MainMenuHelper;->resolveMenuItem(ILcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuContext;)Lcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method public static synthetic $r8$lambda$PXFIpgdtIGghglRNcVl91ndQqRc(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .line 202
    new-instance v0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$1$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 208
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$wwDUSw59NnCN0TJApzf27CVLJhA(Ljava/lang/String;)V
    .locals 2

    .line 203
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    new-instance v1, Lcom/exteragram/messenger/components/QRCodeSheet;

    invoke-direct {v1, v0, p0}, Lcom/exteragram/messenger/components/QRCodeSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic didFindMrzInfo(Lorg/telegram/messenger/MrzRecognizer$Result;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate$-CC;->$default$didFindMrzInfo(Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Lorg/telegram/messenger/MrzRecognizer$Result;)V

    return-void
.end method

.method public synthetic didFindQr(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate$-CC;->$default$didFindQr(Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic getSubtitleText()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate$-CC;->$default$getSubtitleText(Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onDismiss()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate$-CC;->$default$onDismiss(Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;)V

    return-void
.end method

.method public processQr(Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 1

    .line 201
    new-instance v0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x258

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    return p1
.end method
