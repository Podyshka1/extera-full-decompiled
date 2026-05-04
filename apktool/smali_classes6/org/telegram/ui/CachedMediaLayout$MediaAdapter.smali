.class Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;
.super Lorg/telegram/ui/CachedMediaLayout$BaseFilesAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CachedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaAdapter"
.end annotation


# instance fields
.field isStories:Z

.field photoEntries:Ljava/util/ArrayList;

.field private sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

.field final synthetic this$0:Lorg/telegram/ui/CachedMediaLayout;

.field thumb:Lorg/telegram/ui/Components/CombinedDrawable;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/CachedMediaLayout;Z)V
    .locals 1

    .line 669
    iput-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;->this$0:Lorg/telegram/ui/CachedMediaLayout;

    if-eqz p2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 670
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/CachedMediaLayout$BaseFilesAdapter;-><init>(Lorg/telegram/ui/CachedMediaLayout;I)V

    .line 674
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;->photoEntries:Ljava/util/ArrayList;

    .line 671
    iput-boolean p2, p0, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;->isStories:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/CachedMediaLayout;ZLorg/telegram/ui/CachedMediaLayout-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;-><init>(Lorg/telegram/ui/CachedMediaLayout;Z)V

    return-void
.end method


# virtual methods
.method public getPhotos()Ljava/util/ArrayList;
    .locals 1

    .line 743
    iget-object v0, p0, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;->photoEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 23

    move-object/from16 v0, p0

    .line 707
    iget-object v1, v0, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;->thumb:Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 708
    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPhotoBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v3, v4}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, v0, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;->thumb:Lorg/telegram/ui/Components/CombinedDrawable;

    .line 709
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    :cond_0
    move-object/from16 v1, p1

    .line 711
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 712
    iget-object v3, v0, Lorg/telegram/ui/CachedMediaLayout$BaseAdapter;->itemInners:Ljava/util/ArrayList;

    move/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/CachedMediaLayout$ItemInner;

    iget-object v3, v3, Lorg/telegram/ui/CachedMediaLayout$ItemInner;->file:Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    .line 713
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v5

    .line 714
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 715
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    .line 716
    iget-boolean v7, v0, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;->isStories:Z

    const-string v8, "_"

    if-eqz v7, :cond_3

    .line 717
    iget-object v7, v3, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v9, ".mp4"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 719
    iget-object v9, v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v7, v3, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_pframe"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;->thumb:Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    .line 721
    :cond_2
    iget-object v7, v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v9, v3, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v17

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    iget-object v6, v0, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;->thumb:Lorg/telegram/ui/Components/CombinedDrawable;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v6

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v22}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 723
    :goto_1
    iget-object v6, v3, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v6, v7, v5

    invoke-static {v7}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v5

    iput v5, v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->storyId:I

    .line 724
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    .line 725
    iget-wide v5, v3, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setVideoText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 726
    :cond_3
    iget v7, v3, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->type:I

    if-ne v7, v2, :cond_4

    .line 727
    iget-object v9, v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vthumb://0:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;->thumb:Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 728
    iget-wide v5, v3, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setVideoText(Ljava/lang/String;Z)V

    goto :goto_2

    .line 730
    :cond_4
    iget-object v2, v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "thumb://0:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;->thumb:Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v6, v2

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 731
    iget-wide v6, v3, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setVideoText(Ljava/lang/String;Z)V

    .line 733
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;->this$0:Lorg/telegram/ui/CachedMediaLayout;

    iget-object v2, v2, Lorg/telegram/ui/CachedMediaLayout;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Storage/CacheModel;->isSelected(Lorg/telegram/ui/Storage/CacheModel$FileInfo;)Z

    move-result v2

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setChecked(ZZ)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 688
    iget-object p2, p0, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    if-nez p2, :cond_0

    .line 689
    new-instance p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    .line 691
    :cond_0
    new-instance p2, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter$1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v1, p0, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;->this$0:Lorg/telegram/ui/CachedMediaLayout;

    iget-object v1, v1, Lorg/telegram/ui/CachedMediaLayout;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v1

    invoke-direct {p2, p0, p1, v0, v1}, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter$1;-><init>(Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;Landroid/content/Context;Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;I)V

    const/4 p1, 0x1

    .line 698
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setStyle(I)V

    .line 699
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method update()V
    .locals 15

    .line 678
    invoke-super {p0}, Lorg/telegram/ui/CachedMediaLayout$BaseFilesAdapter;->update()V

    .line 679
    iget-object v0, p0, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;->photoEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 680
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/CachedMediaLayout$BaseAdapter;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 681
    iget-object v2, p0, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;->photoEntries:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v4, p0, Lorg/telegram/ui/CachedMediaLayout$BaseAdapter;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CachedMediaLayout$ItemInner;

    iget-object v4, v4, Lorg/telegram/ui/CachedMediaLayout$ItemInner;->file:Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-object v4, v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    iget-object v4, p0, Lorg/telegram/ui/CachedMediaLayout$BaseAdapter;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CachedMediaLayout$ItemInner;

    iget-object v4, v4, Lorg/telegram/ui/CachedMediaLayout$ItemInner;->file:Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget v4, v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move v10, v5

    goto :goto_1

    :cond_0
    move v10, v0

    :goto_1
    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v14}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
