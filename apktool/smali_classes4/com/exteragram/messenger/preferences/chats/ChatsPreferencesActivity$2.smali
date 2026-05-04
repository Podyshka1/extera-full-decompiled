.class Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/exteragram/messenger/speech/VoiceRecognitionController$DownloadModelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->handleSpeechRecognitionLanguageClick(Lorg/telegram/ui/Components/UItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;

.field final synthetic val$alert:Lorg/telegram/ui/ActionBar/AlertDialog;

.field final synthetic val$done:[Z

.field final synthetic val$loadingModelView:Lcom/exteragram/messenger/speech/ui/LoadingModelView;

.field final synthetic val$onDownloaded:Ljava/lang/Runnable;

.field final synthetic val$progressValue:[F

.field final synthetic val$start:[J

.field final synthetic val$updateProgress:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$rtfM17TqBTpFWc040dTVqORnzSc(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;->lambda$onError$1(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$thMGX9EtoGa6jixWucyE_JK-Ycs(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;[ZLcom/exteragram/messenger/speech/ui/LoadingModelView;[JLorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;->lambda$onCompleted$0([ZLcom/exteragram/messenger/speech/ui/LoadingModelView;[JLorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;[FLjava/lang/Runnable;[ZLcom/exteragram/messenger/speech/ui/LoadingModelView;[JLorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;)V
    .locals 0

    .line 937
    iput-object p1, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;->this$0:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;

    iput-object p2, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;->val$progressValue:[F

    iput-object p3, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;->val$updateProgress:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;->val$done:[Z

    iput-object p5, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;->val$loadingModelView:Lcom/exteragram/messenger/speech/ui/LoadingModelView;

    iput-object p6, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;->val$start:[J

    iput-object p7, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;->val$alert:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p8, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;->val$onDownloaded:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCompleted$0([ZLcom/exteragram/messenger/speech/ui/LoadingModelView;[JLorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 948
    aput-boolean v0, p1, v1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 949
    invoke-virtual {p2, p1}, Lcom/exteragram/messenger/speech/ui/LoadingModelView;->setProgress(F)V

    .line 950
    aget-wide p1, p3, v1

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-lez p1, :cond_0

    .line 951
    invoke-static {p4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2$$ExternalSyntheticLambda2;

    invoke-direct {p1, p4}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aget-wide p2, p3, v1

    sub-long/2addr v4, p2

    const-wide/16 p2, 0x3e8

    sub-long/2addr p2, v4

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 953
    :cond_0
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 955
    :goto_0
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 956
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;->this$0:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->ModelDownloaded:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSuccessBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$onError$1(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 1

    .line 963
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 964
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;->this$0:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->ModelError:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 7

    .line 947
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;->val$done:[Z

    iget-object v3, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;->val$loadingModelView:Lcom/exteragram/messenger/speech/ui/LoadingModelView;

    iget-object v4, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;->val$start:[J

    iget-object v5, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;->val$alert:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v6, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;->val$onDownloaded:Ljava/lang/Runnable;

    new-instance v0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2$$ExternalSyntheticLambda0;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;[ZLcom/exteragram/messenger/speech/ui/LoadingModelView;[JLorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 962
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;->val$alert:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgress(F)V
    .locals 2

    .line 940
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;->val$progressValue:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 941
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;->val$updateProgress:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 942
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;->val$updateProgress:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
