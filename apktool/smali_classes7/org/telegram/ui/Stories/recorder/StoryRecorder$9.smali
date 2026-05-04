.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;
.super Lorg/telegram/ui/Stories/recorder/PreviewView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;)V
    .locals 0

    .line 2221
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/PreviewView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;)V

    return-void
.end method


# virtual methods
.method public additionalTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2224
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcaptionEdit(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcaptionEdit(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2227
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetphotoFilterEnhanceView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public applyMatrix()V
    .locals 1

    .line 2232
    invoke-super {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->applyMatrix()V

    .line 2233
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mapplyFilterMatrix(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    return-void
.end method

.method protected invalidateTextureViewHolder()V
    .locals 3

    .line 2320
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2321
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2322
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2323
    instance-of v2, v1, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    if-eqz v2, :cond_0

    .line 2324
    check-cast v1, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->invalidateAll()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAudioChanged()V
    .locals 2

    .line 2332
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2333
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setHasAudio(Z)V

    :cond_1
    return-void
.end method

.method public onEntityDraggedBottom(Z)V
    .locals 1

    .line 2243
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewHighlight(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcaptionEdit(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->updateCaption(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onEntityDraggedTop(Z)V
    .locals 3

    .line 2238
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewHighlight(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetactionBarContainer(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->show(ZZLandroid/view/View;)V

    return-void
.end method

.method public onRoundRemove()V
    .locals 3

    .line 2293
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2294
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupRound(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/ui/Components/Paint/Views/RoundView;Z)V

    .line 2296
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2297
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->deleteRound()V

    .line 2299
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcaptionEdit(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2300
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcaptionEdit(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->setHasRoundVideo(Z)V

    .line 2302
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2303
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 2305
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2307
    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    .line 2309
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2311
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2313
    :catch_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public onRoundSelectChange(Z)V
    .locals 1

    .line 2283
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 2284
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getSelectedEntity()Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;

    if-eqz v0, :cond_1

    .line 2285
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 2286
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getSelectedEntity()Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Views/RoundView;

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->findRoundView()Lorg/telegram/ui/Components/Paint/Views/RoundView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2287
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->findRoundView()Lorg/telegram/ui/Components/Paint/Views/RoundView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_2
    :goto_0
    return-void
.end method
