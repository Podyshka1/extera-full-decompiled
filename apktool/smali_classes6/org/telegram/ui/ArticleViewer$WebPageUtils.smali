.class abstract Lorg/telegram/ui/ArticleViewer$WebPageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WebPageUtils"
.end annotation


# direct methods
.method public static getDocumentWithId(Lorg/telegram/tgnet/TLRPC$WebPage;J)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 5733
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-nez v1, :cond_0

    goto :goto_1

    .line 5736
    :cond_0
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_1

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 5739
    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Page;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 5740
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Page;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 5741
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static getMedia(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLObject;
    .locals 2

    .line 5759
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-eqz v0, :cond_0

    .line 5760
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->photo_id:J

    invoke-static {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer$WebPageUtils;->getPhotoWithId(Lorg/telegram/tgnet/TLRPC$WebPage;J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object p0

    return-object p0

    .line 5761
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v0, :cond_1

    .line 5762
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->video_id:J

    invoke-static {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer$WebPageUtils;->getDocumentWithId(Lorg/telegram/tgnet/TLRPC$WebPage;J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMediaFile(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/io/File;
    .locals 4

    .line 5769
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5770
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->photo_id:J

    invoke-static {p0, v2, v3}, Lorg/telegram/ui/ArticleViewer$WebPageUtils;->getPhotoWithId(Lorg/telegram/tgnet/TLRPC$WebPage;J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5772
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result p1

    invoke-static {p0, p1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5774
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 5777
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v0, :cond_1

    .line 5778
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->video_id:J

    invoke-static {p0, v2, v3}, Lorg/telegram/ui/ArticleViewer$WebPageUtils;->getDocumentWithId(Lorg/telegram/tgnet/TLRPC$WebPage;J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5780
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPhotoWithId(Lorg/telegram/tgnet/TLRPC$WebPage;J)Lorg/telegram/tgnet/TLRPC$Photo;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 5717
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-nez v1, :cond_0

    goto :goto_1

    .line 5720
    :cond_0
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_1

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 5723
    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 5724
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Photo;

    .line 5725
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static isVideo(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$PageBlock;)Z
    .locals 2

    .line 5749
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v0, :cond_0

    .line 5750
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->video_id:J

    invoke-static {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer$WebPageUtils;->getDocumentWithId(Lorg/telegram/tgnet/TLRPC$WebPage;J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5752
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
