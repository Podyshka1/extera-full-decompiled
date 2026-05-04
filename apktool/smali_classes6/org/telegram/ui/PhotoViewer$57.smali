.class Lorg/telegram/ui/PhotoViewer$57;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/util/ArrayList;Landroid/net/Uri;ZZLorg/telegram/messenger/MediaController$SavedFilterState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private firstState:Z

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public static synthetic $r8$lambda$-rmvy735UD3uNzFZ1UXzHS63GyM(Lorg/telegram/ui/PhotoViewer$57;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$57;->lambda$onRenderedFirstFrame$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$REVz7UCg_ouksRT0cOQyFc2Y50c(Lorg/telegram/ui/PhotoViewer$57;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$57;->lambda$onRenderedFirstFrame$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$T0tsX08NX1tglUhDzM0wex8oTIM(Lorg/telegram/ui/PhotoViewer$57;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$57;->lambda$onSurfaceTextureUpdated$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$WSpw3kSVx_0K8Yk17EzKp2_6yq4(Lorg/telegram/ui/PhotoViewer$57;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoViewer$57;->lambda$onError$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .line 10818
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 10820
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer$57;->firstState:Z

    return-void
.end method

.method private synthetic lambda$onError$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 10859
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->openForView(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)Z

    .line 10860
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10862
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$onRenderedFirstFrame$1()V
    .locals 1

    .line 10903
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetfirstFrameView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FirstFrameView;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer$FirstFrameView;->-$$Nest$mupdateAlpha(Lorg/telegram/ui/PhotoViewer$FirstFrameView;)V

    return-void
.end method

.method private synthetic lambda$onRenderedFirstFrame$2()V
    .locals 1

    .line 10920
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetfirstFrameView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FirstFrameView;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer$FirstFrameView;->-$$Nest$mupdateAlpha(Lorg/telegram/ui/PhotoViewer$FirstFrameView;)V

    return-void
.end method

.method private synthetic lambda$onSurfaceTextureUpdated$3()V
    .locals 2

    .line 10953
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetfirstFrameView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FirstFrameView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10954
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetfirstFrameView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FirstFrameView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$FirstFrameView;->checkFromPlayer(Lorg/telegram/ui/Components/VideoPlayer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onError(Lorg/telegram/ui/Components/VideoPlayer;Ljava/lang/Exception;)V
    .locals 1

    .line 10847
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 10850
    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 10851
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmenuItem(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSubItemVisible(I)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 10854
    :cond_1
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 10855
    const-string p2, "AppName"

    sget v0, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 10856
    sget p2, Lorg/telegram/messenger/R$string;->CantPlayVideo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 10857
    const-string p2, "Open"

    sget v0, Lorg/telegram/messenger/R$string;->Open:I

    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/PhotoViewer$57$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$57$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PhotoViewer$57;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 10865
    const-string p2, "Cancel"

    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 10866
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/PhotoViewer;->showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 3

    .line 10898
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettextureUploaded(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10899
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputtextureUploaded(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 10900
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 10902
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetfirstFrameView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FirstFrameView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isLooping()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10903
    :cond_1
    new-instance v0, Lorg/telegram/ui/PhotoViewer$57$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$57$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PhotoViewer$57;)V

    const-wide/16 v1, 0x40

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method public onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 4

    .line 10909
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->pipFirstFrameCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 10910
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 10911
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/PhotoViewer;->pipFirstFrameCallback:Ljava/lang/Runnable;

    .line 10914
    :cond_0
    iget-wide v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetneedCaptureFrameReadyAtTime(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 10915
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-wide v1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputcaptureFrameReadyAtTime(Lorg/telegram/ui/PhotoViewer;J)V

    .line 10916
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputneedCaptureFrameReadyAtTime(Lorg/telegram/ui/PhotoViewer;J)V

    .line 10917
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mcaptureCurrentFrame(Lorg/telegram/ui/PhotoViewer;)V

    .line 10919
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetfirstFrameView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FirstFrameView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->isLooping()Z

    move-result p1

    if-nez p1, :cond_3

    .line 10920
    :cond_2
    new-instance p1, Lorg/telegram/ui/PhotoViewer$57$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PhotoViewer$57$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PhotoViewer$57;)V

    const-wide/16 v0, 0x40

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method public synthetic onSeekFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate$-CC;->$default$onSeekFinished(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate$-CC;->$default$onSeekStarted(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 6

    .line 10824
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 10825
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-static {}, Lorg/telegram/ui/CastSync;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmuteVideo(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setMute(Z)V

    .line 10827
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$57;->firstState:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    .line 10828
    iput-boolean v1, p0, Lorg/telegram/ui/PhotoViewer$57;->firstState:Z

    .line 10829
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArr(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsecureDocuments(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrLocations(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrLocals(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetswitchingToIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetswitchingToIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrLocals(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 10830
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrLocals(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetswitchingToIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 10831
    instance-of v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_3

    .line 10832
    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 10833
    iget-boolean v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v1, :cond_3

    .line 10834
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v2, v2, Lorg/telegram/messenger/VideoEditedInfo;->start:F

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v3

    long-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 10835
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 10836
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v1

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v0, Lorg/telegram/messenger/VideoEditedInfo;->start:F

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setProgress(F)V

    .line 10842
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mupdatePlayerState(Lorg/telegram/ui/PhotoViewer;ZI)V

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .line 10926
    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipSource()Lorg/telegram/messenger/pip/PipSource;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipSource()Lorg/telegram/messenger/pip/PipSource;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/pip/PipSource;->state2:Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;

    invoke-virtual {v0}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->isAttachedToPip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10927
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->changedTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 10928
    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipTextureView()Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 10929
    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipTextureView()Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return v1

    .line 10934
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetchangingTextureView(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10935
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputchangingTextureView(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 10936
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetisInline(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10937
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputwaitingForFirstTextureUpload(Lorg/telegram/ui/PhotoViewer;I)V

    .line 10938
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->changedTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 10939
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v0, p1, Lorg/telegram/ui/PhotoViewer;->changedTextureView:Landroid/view/TextureView;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsurfaceTextureListener(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 10940
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer;->changedTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return v1

    :cond_1
    return v2
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 10950
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mcheckChangedTextureView(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 10952
    new-instance p1, Lorg/telegram/ui/PhotoViewer$57$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PhotoViewer$57$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$57;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 5

    .line 10871
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetaspectRatioFrameLayout(Lorg/telegram/ui/PhotoViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v0, 0x5a

    if-eq p3, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p3, v0, :cond_1

    :cond_0
    move v4, p2

    move p2, p1

    move p1, v4

    .line 10877
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    int-to-float p1, p1

    mul-float/2addr p1, p4

    float-to-int v1, p1

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputvideoWidth(Lorg/telegram/ui/PhotoViewer;I)V

    .line 10878
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    int-to-float v2, p2

    mul-float/2addr p4, v2

    float-to-int p4, p4

    invoke-static {v0, p4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputvideoHeight(Lorg/telegram/ui/PhotoViewer;I)V

    .line 10879
    iget-object p4, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpipSource(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/pip/PipSource;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 10880
    iget-object p4, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpipSource(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/pip/PipSource;

    move-result-object p4

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoWidth(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoHeight(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    invoke-virtual {p4, v0, v3}, Lorg/telegram/messenger/pip/PipSource;->setContentRatio(II)V

    .line 10883
    :cond_2
    iget-object p4, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetaspectRatioFrameLayout(Lorg/telegram/ui/PhotoViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object p4

    if-nez p2, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    div-float/2addr p1, v2

    :goto_0
    invoke-virtual {p4, p1, p3}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(FI)V

    .line 10884
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTextureView(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/VideoEditTextureView;

    const/4 p3, 0x1

    if-eqz p1, :cond_4

    .line 10885
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/VideoPlayer;->getHDRStaticInfo(Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    move-result-object p1

    .line 10886
    iget-object p4, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTextureView(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object p4

    check-cast p4, Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {p4, p1}, Lorg/telegram/ui/Components/VideoEditTextureView;->setHDRInfo(Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)V

    .line 10887
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTextureView(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Components/VideoEditTextureView;->setVideoSize(II)V

    .line 10888
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    if-ne p1, p3, :cond_4

    .line 10889
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$msetCropBitmap(Lorg/telegram/ui/PhotoViewer;)V

    .line 10892
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, p3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputvideoSizeSet(Lorg/telegram/ui/PhotoViewer;Z)V

    :cond_5
    return-void
.end method
