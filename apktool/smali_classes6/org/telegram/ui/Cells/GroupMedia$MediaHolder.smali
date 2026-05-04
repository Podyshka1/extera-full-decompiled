.class public Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/GroupMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaHolder"
.end annotation


# instance fields
.field private final TAG:I

.field public album:Z

.field public attachPath:Ljava/lang/String;

.field public attached:Z

.field public autoplay:Z

.field public b:I

.field public final cell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field public final clipPath:Landroid/graphics/Path;

.field public final clipRect:Landroid/graphics/RectF;

.field private duration:I

.field private durationText:Lorg/telegram/ui/Components/Text;

.field private durationValue:I

.field public filename:Ljava/lang/String;

.field private final h:I

.field public hidden:Z

.field public icon:I

.field public final imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field public l:I

.field public media:Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

.field public r:I

.field public final radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

.field public final radii:[F

.field public t:I

.field public video:Z

.field private final w:I


# direct methods
.method static bridge synthetic -$$Nest$fgetdurationText(Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;)Lorg/telegram/ui/Components/Text;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->durationText:Lorg/telegram/ui/Components/Text;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetDefaultIcon(Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->getDefaultIcon()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;ZII)V
    .locals 6

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 659
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radii:[F

    .line 660
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->clipRect:Landroid/graphics/RectF;

    .line 661
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->clipPath:Landroid/graphics/Path;

    const/4 v0, 0x4

    .line 671
    iput v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->icon:I

    const/4 v1, 0x0

    .line 675
    iput v1, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->duration:I

    .line 676
    iput v1, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->durationValue:I

    .line 700
    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 701
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->album:Z

    .line 702
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->video:Z

    .line 703
    instance-of p4, p3, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    const/4 v2, 0x1

    if-eqz p4, :cond_1

    .line 704
    move-object p4, p3

    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 705
    instance-of v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v0, :cond_0

    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->video:Z

    .line 706
    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p4}, Lorg/telegram/messenger/MessageObject;->getDocumentDuration(Lorg/telegram/tgnet/TLRPC$Document;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int p4, v2

    iput p4, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->duration:I

    goto :goto_2

    .line 707
    :cond_1
    instance-of p4, p3, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    if-eqz p4, :cond_3

    .line 708
    move-object p4, p3

    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    .line 709
    iget v3, p4, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->video:Z

    .line 710
    iget p4, p4, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->video_duration:I

    iput p4, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->duration:I

    .line 712
    :cond_3
    :goto_2
    iget-boolean p4, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->video:Z

    if-eqz p4, :cond_4

    .line 713
    new-instance p4, Lorg/telegram/ui/Components/Text;

    iget v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->duration:I

    iput v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->durationValue:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->formatLongDuration(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41400000    # 12.0f

    invoke-direct {p4, v0, v2}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object p4, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->durationText:Lorg/telegram/ui/Components/Text;

    .line 715
    :cond_4
    new-instance p4, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p4, p1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p4, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x0

    .line 716
    invoke-virtual {p4, v0}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 717
    iput p5, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->w:I

    .line 718
    iput p6, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->h:I

    .line 720
    iget p4, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result p4

    iput p4, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->TAG:I

    .line 724
    invoke-virtual {p0, p3, p2}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->updateMedia(Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;Lorg/telegram/messenger/MessageObject;)V

    .line 726
    new-instance p2, Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lorg/telegram/ui/Components/RadialProgress2;-><init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    .line 727
    invoke-direct {p0}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->getDefaultIcon()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->icon:I

    invoke-virtual {p2, p1, v1, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    return-void
.end method

.method private getDefaultIcon()I
    .locals 1

    .line 859
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->video:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->autoplay:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x4

    return v0
.end method


# virtual methods
.method public attach()V
    .locals 1

    .line 815
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->attached:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 816
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->attached:Z

    .line 817
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method public detach()V
    .locals 1

    .line 826
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->attached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 827
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->attached:Z

    .line 828
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method public getObserverTag()I
    .locals 1

    .line 864
    iget v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->TAG:I

    return v0
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    long-to-float p1, p2

    long-to-float p2, p4

    div-float/2addr p1, p2

    .line 844
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 845
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->media:Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    iput p1, p3, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;->downloadProgress:F

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    .line 846
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->getDefaultIcon()I

    move-result p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->setIcon(I)V

    .line 847
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;JJZ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p4, v0

    const/high16 p6, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    long-to-float p1, p2

    long-to-float p2, p4

    div-float/2addr p1, p2

    .line 852
    invoke-static {p6, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 853
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->media:Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    iput p1, p3, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;->uploadProgress:F

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    cmpg-float p1, p1, p6

    if-gez p1, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    .line 854
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->album:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x6

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->getDefaultIcon()I

    move-result p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->setIcon(I)V

    .line 855
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setIcon(I)V
    .locals 2

    .line 680
    iget v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->icon:I

    if-eq p1, v0, :cond_0

    .line 681
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iput p1, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->icon:I

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    :cond_0
    return-void
.end method

.method public setTime(I)V
    .locals 2

    .line 686
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->video:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 687
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->duration:I

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 688
    iget v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->durationValue:I

    if-eq v0, p1, :cond_1

    .line 689
    new-instance v0, Lorg/telegram/ui/Components/Text;

    iput p1, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->durationValue:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->formatLongDuration(I)Ljava/lang/String;

    move-result-object p1

    const/high16 v1, 0x41400000    # 12.0f

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->durationText:Lorg/telegram/ui/Components/Text;

    :cond_1
    :goto_0
    return-void
.end method

.method public updateMedia(Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;Lorg/telegram/messenger/MessageObject;)V
    .locals 13

    move-object v8, p2

    .line 731
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->media:Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    if-ne v1, p1, :cond_0

    goto/16 :goto_3

    .line 733
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->media:Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    const/4 v1, 0x0

    .line 735
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->autoplay:Z

    .line 736
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->w:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 737
    instance-of v3, p1, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 738
    iput-boolean v5, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->hidden:Z

    .line 739
    iput-object v4, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->filename:Ljava/lang/String;

    .line 741
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    .line 742
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0, v3}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_b2"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    move-object v5, v8

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 744
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const v1, 0x3fb33333    # 1.4f

    .line 745
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    const v1, -0x42333333    # -0.1f

    .line 746
    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    .line 747
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 748
    :cond_1
    instance-of v3, p1, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    if-eqz v3, :cond_8

    .line 749
    iget-boolean v3, v8, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->hidden:Z

    if-eqz v3, :cond_2

    .line 751
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_b3"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 755
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 757
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    .line 758
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 759
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getFileName(Lorg/telegram/tgnet/TLRPC$MessageMedia;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->filename:Ljava/lang/String;

    .line 760
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v3, :cond_3

    .line 761
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    .line 762
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v6

    invoke-static {v3, v6, v5, v4, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 763
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget v5, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->w:I

    iget v6, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->h:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x64

    invoke-static {v4, v5, v1, v3, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 764
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v3, v4}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    .line 765
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v1, v0}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    move-object v1, v3

    move-object v3, v0

    .line 766
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    move-object v4, v2

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void

    .line 772
    :cond_3
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v3, :cond_8

    .line 773
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    .line 774
    iget-boolean v3, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->hidden:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->album:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->video:Z

    if-eqz v3, :cond_4

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayVideo()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v5

    goto :goto_0

    :cond_4
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->autoplay:Z

    .line 779
    iget-boolean v3, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->album:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->video:Z

    if-eqz v3, :cond_7

    .line 780
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_7

    .line 781
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v6

    invoke-static {v3, v6, v5, v4, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 782
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    iget v6, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->w:I

    iget v7, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->h:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6, v1, v3, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 783
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    .line 784
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3, v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    .line 785
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    move-object v1, v5

    move-object v5, v0

    .line 786
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 787
    iget-boolean v6, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->autoplay:Z

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    move-object v1, v4

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->autoplay:Z

    if-eqz v6, :cond_6

    const-string v6, "_g"

    goto :goto_2

    :cond_6
    const-string v6, ""

    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v6, v2

    move-object v11, v4

    move-object v4, v2

    move-object v2, v11

    move-object v11, p2

    .line 786
    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void

    .line 796
    :cond_7
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_8

    .line 797
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v6

    invoke-static {v3, v6, v5, v4, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 798
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    iget v5, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->w:I

    iget v6, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->h:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5, v1, v3, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 799
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3, v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    .line 800
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    move-object v1, v3

    move-object v3, v0

    .line 801
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    move-object v4, v2

    move-object v8, p2

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    :cond_8
    :goto_3
    return-void
.end method
