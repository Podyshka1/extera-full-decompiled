.class public Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/VideoEditedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaEntity"
.end annotation


# static fields
.field public static final TYPE_LINK:B = 0x7t

.field public static final TYPE_LOCATION:B = 0x3t

.field public static final TYPE_MESSAGE:B = 0x6t

.field public static final TYPE_PHOTO:B = 0x2t

.field public static final TYPE_REACTION:B = 0x4t

.field public static final TYPE_ROUND:B = 0x5t

.field public static final TYPE_STICKER:B = 0x0t

.field public static final TYPE_TEXT:B = 0x1t

.field public static final TYPE_VIDEO:B = 0x9t

.field public static final TYPE_WEATHER:B = 0x8t


# instance fields
.field public H:I

.field public W:I

.field public additionalHeight:F

.field public additionalWidth:F

.field public animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

.field public bitmap:Landroid/graphics/Bitmap;

.field public canvas:Landroid/graphics/Canvas;

.field public color:I

.field public crop:Lorg/telegram/messenger/MediaController$CropState;

.field public currentFrame:F

.field public customTextView:Z

.field public density:F

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;",
            ">;"
        }
    .end annotation
.end field

.field public firstSeek:Z

.field public fontSize:I

.field public framesPerDraw:F

.field public height:F

.field public linkSettings:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

.field public looped:Z

.field public matrix:Landroid/graphics/Matrix;

.field public media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

.field public mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

.field public metadata:[I

.field public parentObject:Ljava/lang/Object;

.field public ptr:J

.field public rotation:F

.field public roundDuration:J

.field public roundLeft:J

.field public roundOffset:J

.field public roundRadius:F

.field public roundRadiusCanvas:Landroid/graphics/Canvas;

.field public roundRight:J

.field public scale:F

.field public segmentedPath:Ljava/lang/String;

.field public subType:B

.field public text:Ljava/lang/String;

.field public textAlign:I

.field public textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

.field public textTypefaceKey:Ljava/lang/String;

.field public textViewHeight:F

.field public textViewWidth:F

.field public textViewX:F

.field public textViewY:F

.field public type:B

.field public view:Landroid/view/View;

.field public viewHeight:I

.field public viewWidth:I

.field public visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field public weather:Lorg/telegram/ui/Stories/recorder/Weather$State;

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    .line 167
    iput-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->segmentedPath:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 170
    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 213
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>(Lorg/telegram/tgnet/AbstractSerializedData;ZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/AbstractSerializedData;ZZ)V
    .locals 4

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    .line 167
    iput-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->segmentedPath:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 170
    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    .line 217
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readByte(Z)B

    move-result v0

    iput-byte v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    .line 218
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readByte(Z)B

    move-result v0

    iput-byte v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 219
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    .line 220
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 221
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    .line 222
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 223
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 224
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 225
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 227
    new-instance v2, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    invoke-direct {v2}, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;-><init>()V

    .line 228
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    .line 229
    invoke-virtual {v2, p1, p3}, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    .line 230
    iget-object v3, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    .line 233
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    .line 234
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    .line 235
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    .line 236
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    .line 237
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypefaceKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->find(Ljava/lang/String;)Lorg/telegram/ui/Components/Paint/PaintTypeface;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 238
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    .line 239
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewWidth:F

    .line 240
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewHeight:F

    .line 241
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewX:F

    .line 242
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewY:F

    if-eqz p2, :cond_2

    .line 244
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p2

    const v0, 0x56730bcc

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    .line 246
    iput-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_1

    .line 248
    :cond_1
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 251
    :cond_2
    :goto_1
    iget-byte p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 252
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result p2

    iput p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->density:F

    .line 253
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p2

    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    .line 254
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p2

    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 255
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result p2

    if-lez p2, :cond_8

    .line 256
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p2

    const v0, -0x21524111

    if-ne p2, v0, :cond_8

    .line 258
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    .line 259
    iget-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz p3, :cond_8

    .line 260
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->emoji:Ljava/lang/String;

    return-void

    :cond_3
    const/4 v0, 0x7

    if-ne p2, v0, :cond_4

    .line 265
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result p2

    iput p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->density:F

    .line 266
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p2

    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    .line 267
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p2

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->linkSettings:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    return-void

    :cond_4
    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    .line 269
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p2

    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    return-void

    :cond_5
    const/4 v0, 0x5

    if-ne p2, v0, :cond_6

    .line 271
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundOffset:J

    .line 272
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundLeft:J

    .line 273
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRight:J

    .line 274
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundDuration:J

    return-void

    :cond_6
    const/4 v0, 0x2

    if-ne p2, v0, :cond_7

    .line 276
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->segmentedPath:Ljava/lang/String;

    .line 277
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p2

    const v0, 0x44a3abcd

    if-ne p2, v0, :cond_8

    .line 279
    new-instance p2, Lorg/telegram/messenger/MediaController$CropState;

    invoke-direct {p2}, Lorg/telegram/messenger/MediaController$CropState;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->crop:Lorg/telegram/messenger/MediaController$CropState;

    .line 280
    invoke-virtual {p2, p1, p3}, Lorg/telegram/messenger/MediaController$CropState;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    return-void

    :cond_7
    const/16 v0, 0x8

    if-ne p2, v0, :cond_8

    .line 283
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p2

    const p3, 0x7ea7539

    if-ne p2, p3, :cond_8

    .line 285
    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/Weather$State;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;)Lorg/telegram/ui/Stories/recorder/Weather$State;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->weather:Lorg/telegram/ui/Stories/recorder/Weather$State;

    :cond_8
    return-void
.end method


# virtual methods
.method public copy()Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;
    .locals 3

    .line 369
    new-instance v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v0}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    .line 370
    iget-byte v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    iput-byte v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    .line 371
    iget-byte v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    iput-byte v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 372
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    .line 373
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 374
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    .line 375
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 376
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 377
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->additionalHeight:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->additionalHeight:F

    .line 378
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 379
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    .line 381
    iget-object v2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 383
    :cond_0
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    .line 384
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    .line 385
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 386
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypefaceKey:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypefaceKey:Ljava/lang/String;

    .line 387
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    .line 388
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    .line 389
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    .line 390
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadius:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadius:F

    .line 391
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    .line 392
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewWidth:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewWidth:F

    .line 393
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewHeight:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewHeight:F

    .line 394
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewX:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewX:F

    .line 395
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewY:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewY:F

    .line 396
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 397
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->parentObject:Ljava/lang/Object;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->parentObject:Ljava/lang/Object;

    .line 398
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->metadata:[I

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->metadata:[I

    .line 399
    iget-wide v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->ptr:J

    iput-wide v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->ptr:J

    .line 400
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    .line 401
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    .line 402
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    .line 403
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->view:Landroid/view/View;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->view:Landroid/view/View;

    .line 404
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->canvas:Landroid/graphics/Canvas;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->canvas:Landroid/graphics/Canvas;

    .line 405
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 406
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadiusCanvas:Landroid/graphics/Canvas;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadiusCanvas:Landroid/graphics/Canvas;

    .line 407
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    .line 408
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 409
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->density:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->density:F

    .line 410
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    .line 411
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->H:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->H:I

    .line 412
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 413
    iget-wide v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundOffset:J

    iput-wide v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundOffset:J

    .line 414
    iget-wide v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundDuration:J

    iput-wide v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundDuration:J

    .line 415
    iget-wide v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundLeft:J

    iput-wide v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundLeft:J

    .line 416
    iget-wide v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRight:J

    iput-wide v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRight:J

    .line 417
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->linkSettings:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->linkSettings:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    .line 418
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->weather:Lorg/telegram/ui/Stories/recorder/Weather$State;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->weather:Lorg/telegram/ui/Stories/recorder/Weather$State;

    return-object v0
.end method

.method public serializeTo(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 291
    iget-byte v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByte(B)V

    .line 292
    iget-byte v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByte(B)V

    .line 293
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 294
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 295
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 296
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 297
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 298
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v0, 0x0

    .line 300
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 301
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 304
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 305
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 306
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 307
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 308
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    const-string v1, ""

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypefaceKey:Ljava/lang/String;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 309
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 310
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewWidth:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 311
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewHeight:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 312
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewX:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 313
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewY:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    const v0, 0x56730bcc

    if-eqz p2, :cond_4

    .line 315
    iget-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez p2, :cond_3

    .line 316
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_2

    .line 318
    :cond_3
    invoke-virtual {p2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 321
    :cond_4
    :goto_2
    iget-byte p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/4 v2, 0x3

    const v3, -0x21524111

    if-ne p2, v2, :cond_9

    .line 322
    iget p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->density:F

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 323
    iget-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    invoke-virtual {p2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 324
    iget-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 325
    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    .line 327
    :cond_5
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 328
    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    .line 330
    :cond_6
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_type:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 331
    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_type:Ljava/lang/String;

    .line 333
    :cond_7
    invoke-virtual {p2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 334
    iget-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v1, :cond_8

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->emoji:Ljava/lang/String;

    if-eqz p2, :cond_8

    .line 335
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 336
    iget-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->emoji:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void

    .line 338
    :cond_8
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void

    :cond_9
    const/4 v1, 0x7

    if-ne p2, v1, :cond_a

    .line 341
    iget p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->density:F

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 342
    iget-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    invoke-virtual {p2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 343
    iget-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->linkSettings:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void

    :cond_a
    const/4 v1, 0x4

    if-ne p2, v1, :cond_b

    .line 345
    iget-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    invoke-virtual {p2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void

    :cond_b
    const/4 v1, 0x5

    if-ne p2, v1, :cond_c

    .line 347
    iget-wide v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundOffset:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 348
    iget-wide v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundLeft:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 349
    iget-wide v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRight:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 350
    iget-wide v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundDuration:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    return-void

    :cond_c
    const/4 v1, 0x2

    if-ne p2, v1, :cond_e

    .line 352
    iget-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->segmentedPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 353
    iget-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz p2, :cond_d

    .line 354
    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MediaController$CropState;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void

    .line 356
    :cond_d
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void

    :cond_e
    const/16 v0, 0x8

    if-ne p2, v0, :cond_10

    .line 359
    iget-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->weather:Lorg/telegram/ui/Stories/recorder/Weather$State;

    if-nez p2, :cond_f

    .line 360
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void

    :cond_f
    const p2, 0x7ea7539

    .line 362
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 363
    iget-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->weather:Lorg/telegram/ui/Stories/recorder/Weather$State;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/recorder/Weather$State;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_10
    return-void
.end method
