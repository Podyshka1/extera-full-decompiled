.class public abstract Lorg/telegram/tgnet/TLRPC$PageBlock;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PageBlock"
.end annotation


# instance fields
.field public bottom:Z

.field public cachedHeight:I

.field public cachedWidth:I

.field public first:Z

.field public groupId:I

.field public level:I

.field public mid:I

.field public thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field public thumbObject:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29699
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 29792
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;-><init>()V

    goto/16 :goto_0

    .line 29786
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;-><init>()V

    goto/16 :goto_0

    .line 29810
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;-><init>()V

    goto/16 :goto_0

    .line 29765
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;-><init>()V

    goto/16 :goto_0

    .line 29798
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;-><init>()V

    goto/16 :goto_0

    .line 29729
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;-><init>()V

    goto/16 :goto_0

    .line 29723
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;-><init>()V

    goto/16 :goto_0

    .line 29768
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate_layer60;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate_layer60;-><init>()V

    goto/16 :goto_0

    .line 29771
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList_layer82;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList_layer82;-><init>()V

    goto/16 :goto_0

    .line 29822
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;-><init>()V

    goto/16 :goto_0

    .line 29819
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio_layer82;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio_layer82;-><init>()V

    goto/16 :goto_0

    .line 29813
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost_layer82;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost_layer82;-><init>()V

    goto/16 :goto_0

    .line 29783
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;-><init>()V

    goto/16 :goto_0

    .line 29726
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;-><init>()V

    goto/16 :goto_0

    .line 29756
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;-><init>()V

    goto/16 :goto_0

    .line 29738
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;-><init>()V

    goto/16 :goto_0

    .line 29762
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockUnsupported;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockUnsupported;-><init>()V

    goto/16 :goto_0

    .line 29777
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow_layer82;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow_layer82;-><init>()V

    goto/16 :goto_0

    .line 29816
    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage_layer82;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage_layer82;-><init>()V

    goto/16 :goto_0

    .line 29744
    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;-><init>()V

    goto/16 :goto_0

    .line 29720
    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;-><init>()V

    goto/16 :goto_0

    .line 29741
    :sswitch_15
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;-><init>()V

    goto/16 :goto_0

    .line 29789
    :sswitch_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;-><init>()V

    goto/16 :goto_0

    .line 29807
    :sswitch_17
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto_layer82;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto_layer82;-><init>()V

    goto :goto_0

    .line 29759
    :sswitch_18
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;-><init>()V

    goto :goto_0

    .line 29753
    :sswitch_19
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDivider;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDivider;-><init>()V

    goto :goto_0

    .line 29717
    :sswitch_1a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo_layer82;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo_layer82;-><init>()V

    goto :goto_0

    .line 29795
    :sswitch_1b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;-><init>()V

    goto :goto_0

    .line 29747
    :sswitch_1c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;-><init>()V

    goto :goto_0

    .line 29825
    :sswitch_1d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer82;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer82;-><init>()V

    goto :goto_0

    .line 29735
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;-><init>()V

    goto :goto_0

    .line 29732
    :sswitch_1f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;-><init>()V

    goto :goto_0

    .line 29804
    :sswitch_20
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;-><init>()V

    goto :goto_0

    .line 29828
    :sswitch_21
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;-><init>()V

    goto :goto_0

    .line 29774
    :sswitch_22
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;-><init>()V

    goto :goto_0

    .line 29750
    :sswitch_23
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;-><init>()V

    goto :goto_0

    .line 29714
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;-><init>()V

    goto :goto_0

    .line 29780
    :sswitch_25
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;-><init>()V

    goto :goto_0

    .line 29801
    :sswitch_26
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;-><init>()V

    .line 29831
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$PageBlock;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fbc9e16 -> :sswitch_26
        -0x700565e1 -> :sswitch_25
        -0x65751e1f -> :sswitch_24
        -0x5bb0c10a -> :sswitch_23
        -0x578e723b -> :sswitch_22
        -0x45501a20 -> :sswitch_21
        -0x40b2157e -> :sswitch_20
        -0x402f9b14 -> :sswitch_1f
        -0x3f8f26c2 -> :sswitch_1e
        -0x321dff2f -> :sswitch_1d
        -0x31f2c850 -> :sswitch_1c
        -0x26ca2705 -> :sswitch_1b
        -0x2628e79a -> :sswitch_1a
        -0x24df4e78 -> :sswitch_19
        -0x1b177fef -> :sswitch_18
        -0x1639667e -> :sswitch_17
        -0x10e8ae4b -> :sswitch_16
        -0xed4491f -> :sswitch_15
        -0xda657f5 -> :sswitch_14
        0x31f9590 -> :sswitch_13
        0x8b31c4f -> :sswitch_12
        0x130c8963 -> :sswitch_11
        0x13567e8a -> :sswitch_10
        0x16115a96 -> :sswitch_f
        0x1759c560 -> :sswitch_e
        0x1e148390 -> :sswitch_d
        0x263d7c26 -> :sswitch_c
        0x292c7be9 -> :sswitch_b
        0x31b81a7f -> :sswitch_a
        0x39f23300 -> :sswitch_9
        0x3a58c7f4 -> :sswitch_8
        0x3d5b64f2 -> :sswitch_7
        0x467a0766 -> :sswitch_6
        0x48870999 -> :sswitch_5
        0x4f4456d3 -> :sswitch_4
        0x65a0fa4d -> :sswitch_3
        0x70abc3fd -> :sswitch_2
        0x76768bed -> :sswitch_1
        0x7c8fe7b6 -> :sswitch_0
    .end sparse-switch
.end method
