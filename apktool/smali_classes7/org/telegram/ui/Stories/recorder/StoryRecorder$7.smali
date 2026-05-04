.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$7;
.super Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;
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
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 2171
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$7;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onLayoutUpdate(Lorg/telegram/ui/Stories/recorder/CollageLayout;)V
    .locals 4

    .line 2174
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$7;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->setVisible(ZZ)V

    if-eqz p1, :cond_0

    .line 2175
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 2176
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$7;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageButton(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$7;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputlastCollageLayout(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/CollageLayout;)V

    invoke-direct {v1, p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayout;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/ToggleButton2;->setIcon(Landroid/graphics/drawable/Drawable;Z)V

    .line 2177
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$7;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageButton(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/Stories/recorder/ToggleButton2;->setSelected(ZZ)V

    goto :goto_0

    .line 2179
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$7;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageButton(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Stories/recorder/ToggleButton2;->setSelected(ZZ)V

    .line 2181
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$7;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mupdateActionBarButtons(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 2183
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$7;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetgalleryListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2184
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$7;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetgalleryListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$7;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->setMultipleOnClick(Z)V

    .line 2185
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$7;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetgalleryListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object p1

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/CollageLayout;->getMaxCount()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$7;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getFilledCount()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->setMaxCount(I)V

    :cond_1
    return-void
.end method
