.class Lorg/telegram/ui/PhotoViewer$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .line 6164
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forceAll()Z
    .locals 1

    .line 6241
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetplaceProvider(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetplaceProvider(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->forceAllInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAvatarsDialogId()J
    .locals 2

    .line 6177
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarsDialogId(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAccount()I
    .locals 1

    .line 6172
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    return v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .line 6167
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    return v0
.end method

.method public getImagesArr()Ljava/util/ArrayList;
    .locals 1

    .line 6192
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArr(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getImagesArrLocations()Ljava/util/ArrayList;
    .locals 1

    .line 6187
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrLocations(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPageBlockArr()Ljava/util/List;
    .locals 1

    .line 6197
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpageBlocksAdapter(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PageBlocksAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpageBlocksAdapter(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PageBlocksAdapter;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/PhotoViewer$PageBlocksAdapter;->getAll()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentObject()Ljava/lang/Object;
    .locals 1

    .line 6202
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpageBlocksAdapter(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PageBlocksAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpageBlocksAdapter(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PageBlocksAdapter;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/PhotoViewer$PageBlocksAdapter;->getParentObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSlideshowMessageId()I
    .locals 1

    .line 6182
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetslideshowMessageId(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    return v0
.end method

.method public onShowAnimationStart()V
    .locals 1

    .line 6219
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->requestLayout()V

    return-void
.end method

.method public onStopScrolling()V
    .locals 3

    .line 6224
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mshouldMessageObjectAutoPlayed(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6225
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputplayerAutoStarted(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 6226
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$monActionClick(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 6227
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mcheckProgress(Lorg/telegram/ui/PhotoViewer;IZZ)V

    :cond_0
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 2

    .line 6207
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputcurrentIndex(Lorg/telegram/ui/PhotoViewer;I)V

    .line 6208
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentThumb(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6209
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentThumb(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->release()V

    .line 6210
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputcurrentThumb(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/messenger/ImageReceiver$BitmapHolder;)V

    .line 6212
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputdontAutoPlay(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 6213
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$msetImageIndex(Lorg/telegram/ui/PhotoViewer;I)V

    .line 6214
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputdontAutoPlay(Lorg/telegram/ui/PhotoViewer;Z)V

    return-void
.end method
