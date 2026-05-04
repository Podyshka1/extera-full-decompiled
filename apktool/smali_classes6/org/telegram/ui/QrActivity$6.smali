.class Lorg/telegram/ui/QrActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/QrActivity;->openCameraScanActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$currentAccount:I

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method public static synthetic $r8$lambda$qVT2f7VGI4J9gkNw23FE3PJ2g3w(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Long;)V
    .locals 4

    .line 797
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 800
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    .line 807
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void

    .line 801
    :cond_2
    :goto_0
    new-instance p0, Lorg/telegram/ui/QrActivity$6$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lorg/telegram/ui/QrActivity$6$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uP3RLZQpmezD-6wHe9jq1bP8CQA()V
    .locals 3

    .line 801
    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->global()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->ScanQrCode:I

    .line 802
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    .line 803
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 801
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 804
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public static synthetic $r8$lambda$ySY8gRiQ9xQpeL0afDAm53iviuc()V
    .locals 3

    .line 810
    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->global()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->ScanQrCode:I

    .line 811
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    .line 812
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 810
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 813
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method constructor <init>(ILorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 791
    iput p1, p0, Lorg/telegram/ui/QrActivity$6;->val$currentAccount:I

    iput-object p2, p0, Lorg/telegram/ui/QrActivity$6;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

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

.method public didFindQr(Ljava/lang/String;)V
    .locals 3

    .line 794
    invoke-static {p1}, Lorg/telegram/messenger/browser/Browser;->extractUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 795
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    iget v0, p0, Lorg/telegram/ui/QrActivity$6;->val$currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getUserNameResolver()Lorg/telegram/messenger/UserNameResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/QrActivity$6;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v2, Lorg/telegram/ui/QrActivity$6$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/telegram/ui/QrActivity$6$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, p1, v2}, Lorg/telegram/messenger/UserNameResolver;->resolve(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Consumer;)Ljava/lang/Runnable;

    return-void

    .line 810
    :cond_0
    new-instance p1, Lorg/telegram/ui/QrActivity$6$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lorg/telegram/ui/QrActivity$6$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

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

.method public synthetic processQr(Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate$-CC;->$default$processQr(Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method
